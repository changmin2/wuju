import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';

import '../seul/detail_alien.dart';

class SearchListScreen extends StatelessWidget {
  const SearchListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DropdownMenuItem(child: Text('부산광역시'));

    return DefaultLayout(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '외계인 찾기',
          style: TextStyle(
            color: Color(0xff12887A),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _renderMyTownDropDownButton(context),
            SizedBox(height: 32),
            _renderSearchList(),
          ],
        ),
      ),
    );
  }
}

//---------------------------------------------------------
// 나의 동네 콤보박스
//---------------------------------------------------------
Row _renderMyTownDropDownButton(context) {
  return Row(
    children: [
      SizedBox(
        width: (MediaQuery.of(context).size.width - (16 * 4)) / 3,
        child: DropdownButton<String>(
          isExpanded: true,
          value: '1',
          items: [
            DropdownMenuItem(value: '1', child: Text('부산광역시')),
            DropdownMenuItem(value: '2', child: Text('서울광역시')),
          ],
          onChanged: (String? value) {},
        ),
      ),
      SizedBox(width: 16),
      SizedBox(
        width: (MediaQuery.of(context).size.width - (16 * 4)) / 3,
        child: DropdownButton<String>(
          isExpanded: true,
          value: '1',
          items: [
            DropdownMenuItem(value: '1', child: Text('강서구')),
            DropdownMenuItem(value: '2', child: Text('금정구')),
          ],
          onChanged: (String? value) {},
        ),
      ),
      SizedBox(width: 16),
      SizedBox(
        width: (MediaQuery.of(context).size.width - (16 * 4)) / 3,
        child: DropdownButton<String>(
          isExpanded: true,
          value: '1',
          items: [
            DropdownMenuItem(value: '1', child: Text('명지동')),
            DropdownMenuItem(value: '2', child: Text('녹산동')),
          ],
          onChanged: (String? value) {},
        ),
      ),
    ],
  );
}

//---------------------------------------------------------
// 외계인 찾기
//---------------------------------------------------------
Widget _renderSearchList() {

  // Expanded로 감싸야지 상위 위젯인 Column안에서 스크롤이 작동함.
  return Expanded(
    child: GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // 한 행에 보여줄 아이템 갯수
        crossAxisCount: 2,
        mainAxisExtent: 288,
        // 그리드 사이의 수직 간격
        mainAxisSpacing: 16,
        // 그리드 사이의 좌우 간격
        crossAxisSpacing: 16,
      ),
      itemBuilder: (BuildContext context, index) => _renderHumanCard(context),
    ),
  );
}

//---------------------------------------------------------
// 외계인 카드
//---------------------------------------------------------
Widget _renderHumanCard(context) {

  return GestureDetector(
    onTap: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => DetailAlien()));
    },
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
              "rsy0921",
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
            Text("☆ 부산광역시 강서구 명지1동"),
            Text("☆ 월,수,금 20시 ~ 22시"),
          ],
        ),
      ],
    ),
  );
}


