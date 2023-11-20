import 'package:flutter/material.dart';

class DetailAlien2 extends StatefulWidget {
  const DetailAlien2({super.key});

  @override
  State<DetailAlien2> createState() => _DetailAlien2State();
}

class _DetailAlien2State extends State<DetailAlien2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "외계인 상세정보",
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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              children: [
                Image.asset(
                  "asset/img/home_profile.png",
                  fit: BoxFit.fill,
                  width: 120,
                  height: 120,
                ),
                SizedBox(width: 30),
                SizedBox(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //이름
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '이름',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff12887A),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '브라이언',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                        ],
                      ),
                      //성별
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '성별',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff12887A)),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '남',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Icon(Icons.male,
                              color: Colors
                                  .blue) //Icon(Icons.female,color: Colors.red)
                        ],
                      ),
                      //언어
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '언어',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff12887A),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '영어',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          '만남가능지역',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff12887A),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '부산시 해운대구',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          '가능한 요일/시간',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff12887A),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                        height: 10,
                      ),
                      Text(
                        '월수금\n18:00~21:00',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        '하고 싶은 말',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff12887A),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        '해운대에서 토익을 가르치고 있어요!\n기초부터 차근차근 알려드리겠습니다\n부담없이 집에 가는 길에 대화하면서 영어를 접해보세요!!!',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.white,
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 40,
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff12887A),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text(
                  '수락',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(width: 15),
            SizedBox(
              width: 150,
              height: 40,
              child: FilledButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xa9c03535),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: Text(
                  '거절',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
