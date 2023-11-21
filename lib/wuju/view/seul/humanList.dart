import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/component/wantMeetHuman_card.dart';
import '../../../common/layout/default_layout.dart';
import '../../../user/model/inqueryMeet_response.dart';
import '../../../user/model/userId_request.dart';
import '../../../user/model/user_model.dart';
import '../../../user/model/user_modelV2.dart';
import '../../../user/provider/user_me_provider.dart';
import '../../../user/repository/member_repository.dart';

class HumanList extends ConsumerStatefulWidget {
  const HumanList({super.key});

  @override
  ConsumerState<HumanList> createState() => _HumanListState();
}

class _HumanListState extends ConsumerState<HumanList> {
  List<UserModelV2> lists = [];

  Future<dynamic> _future() async {
    final state = ref.read(userMeProvider) as UserModel;
    UserIdRequest request = UserIdRequest(user_id: state.user_id);
    var response = await ref.read(memberRepositoryProvider)
                .inqueryMeet(request);

    if(response["E2A_LIST"]!.length>0){
      lists = response["E2A_LIST"]!.toList();
    }
    else if(response["A2E_LIST"]!.length>0){
      lists = response["A2E_LIST"]!.toList();
    }
    print(lists.toList().toString());
    return Future.value(0);
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "나를 만나고 싶은 외계인",
          style: TextStyle(
            color: Color(0xff12887A),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            //뒤로가기
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: indexList
            .map(
              (e) => Container(
                height: 120,
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffE5E5E5),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "asset/img/home_profile.png",
                        fit: BoxFit.fill,
                        width: 120,
                        height: 120,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width - 152,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  nameList[e], //이름
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                sexList[e] == '여'
                                    ? Icon(Icons.female, color: Colors.red)
                                    : Icon(Icons.male, color: Colors.blue)
                              ],
                            ),
                            Text(
                              comentList[e], //하고싶은말
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff9a9a9a),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 30,
                                  child: FilledButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailAlien2(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(0xffD3F2FF),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      '더보기',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff194BFC),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
=======
    final loginUser = ref.read(userMeProvider) as UserModel;
    return FutureBuilder(
          future: _future(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.hasData == false){
              return DefaultLayout(
                  child: Center(child: CircularProgressIndicator()));
            }else if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.all(8.0),

                child: Text(
                  'Error: ${snapshot.error}', // 에러명을 텍스트에 뿌려줌
                  style: TextStyle(fontSize: 15),
                ),
              );
            }else{
              return lists.length == 0
              ? DefaultLayout(
                    backgroundColor: Colors.white,
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      elevation: 0.0,
                      title: Text(
                        loginUser.user_dv == "1"
                        ? "나를 만나고 싶은 지구인"
                        : "나를 만나고 싶은 외계인",
                        style: TextStyle(
                          color: Color(0xff12887A),
>>>>>>> 95ef36f (wantMeetList:)
                        ),
                      ),
                      centerTitle: true,
                      leading: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          //뒤로가기
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    child: Center(
                  child: Text(
                    '데이터가 없습니다.'
                  ),
                ),
              )
              : DefaultLayout(
                backgroundColor: Colors.white,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  title: Text(
                    loginUser.user_dv == "1"
                        ? "나를 만나고 싶은 지구인"
                        : "나를 만나고 싶은 외계인",
                    style: TextStyle(
                      color: Color(0xff12887A),
                    ),
                  ),
                  centerTitle: true,
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      //뒤로가기
                      Navigator.pop(context);
                    },
                  ),
                ),
                child: ListView.builder(
                    itemCount: lists.length,
                    itemBuilder: (BuildContext context,int idx){
                      return WantMeetHumanCard(
                        user: lists[idx],
                      );
                    }),
              );
            }
          },
        );
  }
}
