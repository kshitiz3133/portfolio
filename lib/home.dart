import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Animation/wave.dart';
import 'package:portfolio/Skills/skills.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double topOne = 200;
  double topTwo = 450;
  double bot = 250;
  double conw = 50; //size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
          onNotification: (v) {
            if (v is ScrollUpdateNotification) {
              setState(() {
                topOne = topOne - v.scrollDelta! / 4;
                topTwo = topTwo - v.scrollDelta! / 2;
                bot = bot - v.scrollDelta! / 5;
                if (conw < 100) {
                  conw = conw + v.scrollDelta! / 20;
                }
              });
            }
            return true;
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: ScreenUtil().setHeight(topOne),
                left: ScreenUtil().setHeight(100),
                child: Text(
                  ":)",
                  textScaler: TextScaler.linear(1.0),
                  style: TextStyle(fontSize: 20.sp),
                ),
              ),
              Positioned(
                left: ScreenUtil().setWidth(bot - 200),
                bottom: ScreenUtil().setHeight(380),
                child: Text(
                  "Kshitiz Agarwal\'s\ ",
                  style: TextStyle(fontSize: 40.sp),
                ),
              ),
              Positioned(
                top: ScreenUtil().setHeight(topTwo),
                child: Text(
                  "PORTFOLIO",
                  style: TextStyle(fontSize: 50.sp),
                ),
              ),
              Positioned(
                  top: ScreenUtil().setHeight(topTwo + 450.h),
                  child: Icon(Icons.keyboard_double_arrow_down_sharp)),
              ListView(
                children: [
                  Container(
                    height: 1100.h,
                    color: Colors.transparent,
                  ),
                  Container(
                    height: 1500.h,
                    color: Colors.black,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                            top: ScreenUtil().setHeight(topOne + 50.h),
                            child: Text(
                              "My projects",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 40.sp),
                            )),
                        Positioned(
                            top: ScreenUtil().setHeight(topTwo + 300.h),
                            child: Text(
                              "(Created by me)",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5)),
                            )),
                        Positioned(
                          top: ScreenUtil().setHeight(topTwo + 500.h),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 5 * conw.h,
                                    width: conw.w,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 100.h,
                                        ),
                                        Icon(
                                          Icons.chat_rounded,
                                          color: Colors.black,
                                          size: conw / 2,
                                        ),
                                        SizedBox(
                                          height: conw.h,
                                        ),
                                        Text("Minimal Chatting App")
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 5 * conw.h,
                                    width: conw.w,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 100.h,
                                        ),
                                        Icon(Icons.chat_rounded,
                                            color: Colors.black),
                                        SizedBox(
                                          height: conw.h,
                                        ),
                                        Text("Minimal Chatting App")
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 5 * conw.h,
                                    width: conw.w,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 100.h,
                                        ),
                                        Icon(
                                          Icons.chat_rounded,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          height: conw.h,
                                        ),
                                        Text("Minimal Chatting App")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            top: ScreenUtil().setHeight(topOne + 1450.h),
                            child: Text(
                              "My Skills",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.sp),
                            )),
                        Positioned(
                            top: ScreenUtil().setHeight(topOne + 1680.h),
                            left: 10.w,
                            child: Transform.scale(
                                scale: 0.9,
                                child: Transform.rotate(
                                    angle: bot / 120,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/dolphin.png'))))),
                        Positioned(
                            top: ScreenUtil().setHeight(topOne + 1500.h),
                            right: 1.w,
                            child: Transform.scale(
                                scale: 0.8,
                                child: Transform.rotate(
                                    angle: bot / 150 - 3,
                                    child: Image(
                                        image: AssetImage(
                                            'assets/dolphin.png'))))),
                        Positioned(
                            top: ScreenUtil().setHeight(1400),
                            child: Transform.scale(
                              scale: 2,
                              child: Stack(
                                children: [
                                  MyAnimation(),
                                  Positioned(left: 80, child: MyAnimation())
                                ],
                              ),
                            ))
                      ],
                    ),
                    /*Column(
                  children: [
                    SizedBox(height: 50.h,),
                    Text("Test",textScaler: TextScaler.linear(0.8),textAlign: TextAlign.center,style: TextStyle(color: Colors.white)),
                  ],
                ),*/
                  ),
                  buildScroll(bot),
                ],
              ),
            ],
          )),
    );
  }
}

Widget buildScroll(double bot) {
  return Container(
    height: 3000.h,
    color: Color(0xffC0C0C0),
    child: Stack(
      children: [
        Positioned(
            top: ScreenUtil().setHeight(300.h),
            left: ScreenUtil().setWidth(80),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800]),
              height: 300.h,
              width: 230.w,
            )),
        Positioned(
            top: ScreenUtil().setHeight(1000.h),
            left: ScreenUtil().setWidth(50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300.w,
                child: Text(
                  "I am a creative person. I am always dedicated towards my work. I wish to upscale my skills and improve myself whenever it is needed.",
                  style: TextStyle(fontSize: 10.sp),
                ),
              ),
            )),
        Positioned(
            left: ScreenUtil().setWidth(bot),
            top: ScreenUtil().setHeight(40),
            child: SizedBox(
                height: 1000.h,
                child: Image(
                  image: AssetImage('assets/fishes.png'),
                  fit: BoxFit.cover,
                ))),
        Positioned(
            top: ScreenUtil().setHeight(250.h),
            left: ScreenUtil().setWidth(73),
            child: SizedBox(
                height: 400.h,
                width: 260.w,
                child: Image(image: AssetImage('assets/skills.png')))),
        Positioned(
            top: ScreenUtil().setHeight(1400.h),
            left: ScreenUtil().setWidth(50),
            child: Container(
              height: 500.h,
              width: 300.w,
              color: Colors.black,
              child: Skills(),
            )
        )
      ],
    ),
  );
}
