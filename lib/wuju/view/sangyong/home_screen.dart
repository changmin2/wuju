import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return DefaultLayout(
      appBar: _renderAppbar(context),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [

              // 프로필
              _renderProfile(context),

              // 메뉴 버튼
              _renderMenuButton(context),

              // 오늘의 외계인
              _renderTodayTeacher(screenSize),

              // 오늘의 외계인
              _renderTodayTeacher(screenSize),

            ],
          ),
        ),
      ),
    );
  }
}

//---------------------------------------------------------
// 앱바
//---------------------------------------------------------
AppBar _renderAppbar(context) {
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
Container _renderProfile(context) {
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
                  "지구인 유상용 님.",
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
Container _renderMenuButton(context) {
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
              Icon(
                Icons.search,
                size: 24,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "외계인찾기",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
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
          Column(
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
        ],
      ),
    ),
  );
}

//---------------------------------------------------------
// 메뉴 버튼
//---------------------------------------------------------
Container _renderTodayTeacher(screenSize){

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
                  "외계인",
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
            SizedBox(
              width: (screenSize.width - 40 - 20) / 2,
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                    child: Image.asset(
                      "asset/img/home_profile.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "영어슨생님",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("☆ 영어"),
                      Text("☆ 해운대구 좌동 토익강사"),
                      Text("☆ 화, 목 저녁 8시 ~ 9시"),
                    ],
                  ),
                ],
              ),
            ),

            // 간격
            SizedBox(
              width: 20.0,
            ),

            SizedBox(
              width: (screenSize.width - 40 - 20) / 2,
              child: Column(
                children: [
                  SizedBox(
                    height: 140,
                    child: Image.asset(
                      "asset/img/home_profile.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "영어슨생님",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("☆ 영어"),
                      Text("☆ 해운대구 좌동 토익강사"),
                      Text("☆ 화, 목 저녁 8시 ~ 9시"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
