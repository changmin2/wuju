import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/common/layout/default_layout.dart';
import 'package:wuju/user/model/user_model.dart';
import 'package:wuju/user/provider/user_me_provider.dart';
import 'package:wuju/user/repository/member_repository.dart';
import 'package:wuju/wuju/view/component/human_card.dart';
import 'package:wuju/wuju/view/sangyong/search_list_screen.dart';
import 'package:wuju/wuju/view/seul/humanList.dart';

import '../../../user/model/user_modelV2.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static String get routeName => 'home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final state = ref.read(userMeProvider) as UserModel;
    final Size screenSize = MediaQuery.of(context).size;
    return FutureBuilder(
      future: state.user_dv == "2" ? ref.read(memberRepositoryProvider).todayEarthling() as Future<Map<String,List<UserModel>>>
      : ref.read(memberRepositoryProvider).todayAlien() as Future<Map<String,List<UserModel>>>,
      builder:(BuildContext context, AsyncSnapshot snapshot){
        if(snapshot.hasData == false){
          return DefaultLayout(
              child: Center(child: CircularProgressIndicator()));
        }
        else if (snapshot.hasError) {
          return Padding(
            padding: const EdgeInsets.all(8.0),

            child: Text(
              'Error: ${snapshot.error}', // 에러명을 텍스트에 뿌려줌
              style: TextStyle(fontSize: 15),
            ),
          );
        }else{
          List<UserModel> lists = snapshot.data["USER_INFO"];
          return DefaultLayout(
            appBar: _renderAppbar(),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    // 프로필
                    _renderProfile(state),

                    // 메뉴 버튼
                    _renderMenuButton(context,state),

                    // 오늘의 외계인
                    _renderTodayTeacher(screenSize,lists,context,state.user_dv),

                    // 이벤트
                    _renderEvent(),

                    // 오늘의 이야기
                    _renderTodayStory(),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

//---------------------------------------------------------
// 앱바
//---------------------------------------------------------
AppBar _renderAppbar() {
  return AppBar(
    // 뒤로가기 버튼 없애기
    automaticallyImplyLeading: false,
    backgroundColor: Color(0xff12887A),
    title: Text("Woo Ju"),
    elevation: 0.0,
    actions: [
      Row(
        children: [
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.brightness_5),
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    ],
  );
}

//---------------------------------------------------------
// 프로필
//---------------------------------------------------------
Container _renderProfile(UserModel user) {
  var dv = user.user_dv == '1' ? "외계인" : "지구인";
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    height: 110,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "안녕하세요!",
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.face,
                  size: 20,
                ),
                Text(
                  dv +" "+user.nick_name+" 님.",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(
          flex: 1,
        ),
        SizedBox(
          width: 70,
          height: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset(
              "asset/img/home_profile.png",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    ),
  );
}

//---------------------------------------------------------
// 메뉴 버튼
//---------------------------------------------------------
Container _renderMenuButton(BuildContext context,UserModel user) {
  return Container(
    padding: EdgeInsets.only(top: 10, bottom: 20),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xffAFD485),
      ),
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchListScreen())
                  );
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.search,
                      size: 24,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      user.user_dv == "1"
                      ?"지구인찾기"
                      :"외계인찾기",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.content_paste,
                size: 24,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "커뮤니티",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HumanList())
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school,
                  size: 24,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "마이페이지",
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

//---------------------------------------------------------
// 오늘의 외계인
//---------------------------------------------------------
Container _renderTodayTeacher(screenSize,List<UserModel> lists,BuildContext context,String user_dv) {
  final first = lists[0] as UserModel;
  final two = lists[1] as UserModel;
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Column(
      children: [
        // 오늘의 외계인, 전체보기
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "오늘의 ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  user_dv == "1" ? "지구인": "외계인",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "전체보기",
                  style: TextStyle(
                    color: Color(0xff12887A),
                    fontSize: 14.0,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xff12887A),
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),

        SizedBox(
          height: 20.0,
        ),

        Row(
          children: [
            HumanCard(screenSize: screenSize, user: first),
            // 간격
            SizedBox(
              width: 20.0,
            ),
            HumanCard(screenSize: screenSize, user: two),
          ],
        ),
      ],
    ),
  );
}

//---------------------------------------------------------
// 이벤트
//---------------------------------------------------------
Container _renderEvent(){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Container(
      height: 90.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Color(0xffFFF3D9),
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "숨어있는 외계인을 찾아보자!!!",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "초대할때마다 서비스가 쏟아집니다!!!",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                width: 60.0,
                height: 30.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD3F2FF),
                  ),
                  onPressed: () {},
                  child: Text(
                    "확인",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Color(0xff194BFC),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//---------------------------------------------------------
// 오늘의 이야기
//---------------------------------------------------------
Container _renderTodayStory(){
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "오늘의 ",
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  "이야기",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "전체보기",
                  style: TextStyle(
                    color: Color(0xff12887A),
                    fontSize: 14.0,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: Color(0xff12887A),
                  size: 24.0,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 70.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff12887A),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "영어 과외",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "매일 매일이 즐거워요!",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.face, size: 10),
                            SizedBox(width: 5.0,),
                            Text(
                              "초보지구인",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset(
                        "asset/img/home_profile.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 70.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xffE9C46A),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "질문게시판",
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "외계인 좀 추천해주세요!!!",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.face, size: 10),
                            SizedBox(width: 5.0,),
                            Text(
                              "주니아빠",
                              style: TextStyle(
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: Image.asset(
                        "asset/img/home_profile.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
