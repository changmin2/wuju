import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/provider/humanSignUpProvider.dart';
import 'package:wuju/wuju/view/sangyong/home_screen.dart';
import 'package:wuju/wuju/view/seul/seul_screen2.dart';

class SeulScreen6 extends ConsumerStatefulWidget {
  const SeulScreen6({Key? key}) : super(key: key);

  @override
  ConsumerState<SeulScreen6> createState() => _SeulScreen6State();
}

class _SeulScreen6State extends ConsumerState<SeulScreen6> {
  String? intro = '';
  final _introKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
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
      body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text('원하시는 내용을\n적어주세요.',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30)),
                    ),
                    Row(
                        //TextSpan 써보기
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text('6',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w700)),
                          Text('/6', style: TextStyle(fontSize: 30)),
                        ])
                  ],
                ),
                Expanded(
                    child:
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                      child: Form(
                        key: _introKey,
                        child: TextFormField(
                          onChanged: (value){
                            this.intro = value;
                          },
                          validator: (value){
                            if(value!.length<1){
                              return "내용을 입력해주세요.";
                            }
                          },
                          style: TextStyle(fontSize: 18),
                          decoration: InputDecoration(
                              hintText: 'Ex) 서툰 실력을 이해해주시고 일상대화를 나누고 싶습니다.',
                              border: OutlineInputBorder()),
                              keyboardType: TextInputType.multiline,
                              maxLines: 8,
                        ),
                      ),
                )),
              ])),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.white,
        width: double.infinity,
        height: 80,
          child: FilledButton(
            onPressed: () {
              if(_introKey.currentState!.validate()) {
                ref.read(humanProvider.notifier).sixth(intro!);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen())
                );
              }
            },
            child: Text('완료', style: TextStyle(fontSize: 22)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff12887A)), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
          ),
      )
    );

  }
}
