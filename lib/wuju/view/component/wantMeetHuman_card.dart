import 'package:flutter/material.dart';
import 'package:wuju/user/model/user_modelV2.dart';

import '../seul/detail_alien2.dart';

class WantMeetHumanCard extends StatefulWidget {
  final UserModelV2 user;
  const WantMeetHumanCard({
    required this.user,
    Key? key}) : super(key: key);

  @override
  State<WantMeetHumanCard> createState() => _WantMeetHumanCardState();
}

class _WantMeetHumanCardState extends State<WantMeetHumanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
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
                        widget.user.nick_name, //이름
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      '여' == '여'
                          ? Icon(Icons.female, color: Colors.red)
                          : Icon(Icons.male, color: Colors.blue)
                    ],
                  ),
                  Text(
                    widget.user.user_intro, //하고싶은말
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
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
                                builder: (context) => DetailAlien2(
                                  user: widget.user,
                                ),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
