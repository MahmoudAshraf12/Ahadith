import 'package:ahadese/componets/components.dart';
import 'package:ahadese/screens/bottombar.dart';
import 'package:flutter/material.dart';

import '../database/data_base.dart';
import '../model/hadith_model.dart';

class AhadithScreen extends StatefulWidget {
  const AhadithScreen({Key? key}) : super(key: key);

  @override
  State<AhadithScreen> createState() => _AhadithScreenState();
}

class _AhadithScreenState extends State<AhadithScreen> {
  Widget ayah(String key, name) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset("lib/assets/images/Path 40.png"),
        Image.asset("lib/assets/images/Path 41.png"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              key,
              style: TextStyle(fontSize: 16, color: Color(0xffFFD434)),
            ),
            Text(
              name,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFFD434)),
              textScaleFactor: .5,
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                //SvgPicture.asset("assets/svg/background.svg",width: double.infinity,fit: BoxFit.cover,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(""),
                        Image.asset("lib/assets/images/Group 27.png"),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child:
                              Image.asset("lib/assets/images/arrow-right.png"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'الاحاديث الاربعين',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Color(0xff3DA53D),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            flex: 1,
          ),
          Expanded(
            child: Stack(
              children: [
                // SvgPicture.asset("assets/svg/background.svg",width: double.infinity,fit: BoxFit.cover,),
                FutureBuilder(

                    //we call the method, which is in the folder db file database.dart
                    future: Mydata.getAlldata(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return GridView.builder(
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            Hadith item = snapshot.data[index];
                            //delete one register for id
                            return GestureDetector(
                                onTap: () {
                                  navicateTo(
                                      context,
                                      HomeHadith(
                                        hadith: item,
                                      ));
                                },
                                child: ayah(item.key!, item.nameHadith));
                          },
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            childAspectRatio: .9 / .9,
                          ),
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    }),
              ],
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
