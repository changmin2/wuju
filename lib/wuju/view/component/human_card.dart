import 'package:flutter/material.dart';

import '../../../user/model/user_model.dart';
import '../seul/detail_alien.dart';

class HumanCard extends StatelessWidget {
  final Size screenSize;
  final UserModel user;

  const HumanCard({
    required this.screenSize,
    required this.user,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var skills = user.USER_SKILL.map((e) => e.skill).join(", ") ;
    var poDays = user.USER_WEEK.map((e) => e.week).join(", ");
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailAlien()));
      },
      child: SizedBox(
        width: (screenSize.width - 40 - 20) / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  user.nick_name,
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
                Text("☆ "+skills.toString()),
                Text("☆ "+user.address_1+" "+user.address_2+" "+user.address_3),
                Text("☆ "+poDays.toString()+" "+user.start_time.substring(0,2)+"시~"+user.end_time.substring(0,2)+"시"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
