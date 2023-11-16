import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
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
        ),
      ),
    );
  }
}
