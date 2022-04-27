import 'package:ahadese/screens/audio_ahadesi.dart';

import 'ahadesi.dart';
import '../componets/components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.center,
              height: 108.0,
              width: 305.35,
              child: Image.asset(
                'lib/assets/images/Group 10.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              child: Text(
                'الأربعين النوويه',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              child: Text(
                'لحفظ وسماع الأحاديث النبويه',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              navicateTo(context, AhadithScreen());
            },
            child: myCard(
              Color(0xff49C649),
              Color(0xff336325),
              'الاحاديث الاربعين',
              'lib/assets/images/quran(3).png',
              'lib/assets/images/Group 11.png',
            ),
          ),
          GestureDetector(
            onTap: () {
              navicateTo(context, AudioAhadithScreen());
            },
            child: myCard(
              Color(0xffFFD434),
              Color(0xffB42C2C),
              'الاستماع للاحاديث',
              'lib/assets/images/play.png',
              'lib/assets/images/Group 12.png',
            ),
          ),
          myCard(
            Color(0xff422563),
            Color(0xffB42C2C),
            'الاحاديث المحفوظة',
            'lib/assets/images/save-instagram.png',
            'lib/assets/images/Group 13.png',
          ),
        ],
      ),
    );
  }
}

Widget myCard(
  Color color1,
  color2,
  String text,
  path1,
  path2,
) {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 48),
    child: Container(
        height: 117,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(10, 10), blurRadius: 40)
            ],
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [
                  color1,
                  color2,
                ],
                begin: AlignmentDirectional.topEnd,
                end: AlignmentDirectional.bottomStart)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(path1),
            Text(
              text,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(path2)
          ],
        )),
  );
}
