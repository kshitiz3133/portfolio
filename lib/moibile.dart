import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Animation/cat.dart';
import 'package:portfolio/Animation/rocket.dart';
import 'package:portfolio/Animation/wave.dart';
import 'package:portfolio/Skills/skills.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double topOne = 200;
  double fOne = 1;
  double topTwo = 450;
  double bot = 250;
  double conw = 60; //size
  bool _isHovereda = false;
  bool _isHoveredb = false;
  bool _isHoveredc = false;

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
      child: Scaffold(
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
                  /*if(fOne>0.2&&fOne<=1){
                    fOne=fOne-v.scrollDelta!/1000;
                  }*/
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
                  top: ScreenUtil().setHeight(topOne - 200),
                  right: ScreenUtil().setWidth(10.w),
                  child: Cat(),
                ),
                Positioned(
                  left: ScreenUtil().setWidth(bot - 200),
                  bottom: ScreenUtil().setHeight(380),
                  child: Text(
                    "Kshitiz Agarwal\'s\ ",
                    style: TextStyle(
                        fontSize: 40.sp, color: Colors.black.withOpacity(fOne)),
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
                    top: ScreenUtil().setHeight(topTwo + 400.h),
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
                                    MouseRegion(
                                      onEnter: (event) {
                                        setState(() {
                                          _isHovereda = true;
                                        });
                                      },
                                      onExit: (event) {
                                        setState(() {
                                          _isHovereda = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: _isHovereda
                                            ? 50+MediaQuery.of(context).size.width/3 + conw.h
                                            : MediaQuery.of(context).size.width/3+conw.h,
                                        width:
                                            _isHovereda ? 50 + conw.w : conw.w,
                                        color: _isHovereda
                                            ? Colors.white
                                            : Colors.grey[300],
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: const Image(image: AssetImage("assets/app1.jpg")),
                                            ),
                                            SizedBox(
                                              height: conw.h,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                "🌟 UNREAL ENGINE X FLUTTER AND MOBILE SENSORS 🌟",
                                                style: TextStyle(fontSize: 6.sp),
                                                maxLines: 3,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    MouseRegion(
                                      onEnter: (event) {
                                        setState(() {
                                          _isHoveredb = true;
                                        });
                                      },
                                      onExit: (event) {
                                        setState(() {
                                          _isHoveredb = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: _isHoveredb
                                            ? 50+MediaQuery.of(context).size.width/3 + conw.h
                                            : MediaQuery.of(context).size.width/3+conw.h,
                                        width:
                                            _isHoveredb ? 50 + conw.w : conw.w,
                                        color: _isHoveredb
                                            ? Colors.white
                                            : Colors.grey[300],
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: const Image(image: AssetImage("assets/app2.png")),
                                            ),
                                            SizedBox(
                                              height: conw.h,
                                            ),
                                            Text(
                                              "Minimal Chatting App",
                                              style: TextStyle(fontSize: 6.sp),
                                              maxLines: 3,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    MouseRegion(
                                      onEnter: (event) {
                                        setState(() {
                                          _isHoveredc = true;
                                        });
                                      },
                                      onExit: (event) {
                                        setState(() {
                                          _isHoveredc = false;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        height: _isHoveredc
                                            ? 50+MediaQuery.of(context).size.width/3 + conw.h
                                            : MediaQuery.of(context).size.width/3+conw.h,
                                        width:
                                            _isHoveredc ? 50 + conw.w : conw.w,
                                        color: _isHoveredc
                                            ? Colors.white
                                            : Colors.grey[300],
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: const Image(image: AssetImage("assets/app3.png")),
                                            ),
                                            SizedBox(
                                              height: conw.h,
                                            ),
                                            Text(
                                              "Expense Tracking App",
                                              style: TextStyle(fontSize: 6.sp),
                                              maxLines: 3,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: ScreenUtil().setHeight(topOne + 1550.h),
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
                              top: ScreenUtil().setHeight(topOne + 1450.h),
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
                    buildScroll(context, bot),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

Widget buildScroll(BuildContext context, double bot) {
  return Container(
    height: 5400.h,
    color: Color(0xffC0C0C0),
    child: Stack(
      children: [
        Positioned(
          top: ScreenUtil().setHeight(300.h),
          left: ScreenUtil().setWidth(80),
          child: Text("My Skills"),
        ),
        Positioned(
          top: ScreenUtil().setHeight(300.h),
          left: ScreenUtil().setWidth(80),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[800]),
              child: SizedBox(
                  height: MediaQuery.of(context).size.width / 4.5,
                  width: 230.w,
                  child: Visibility(
                      visible: false,
                      child: Image(image: AssetImage('assets/skills.png'))))),
        ),
        Positioned(
            left: ScreenUtil().setWidth(bot.h),
            top: ScreenUtil().setHeight(40),
            child: SizedBox(
                height: 1000.h,
                child: Image(
                  image: AssetImage('assets/fishes.png'),
                  fit: BoxFit.cover,
                  colorBlendMode: BlendMode.srcOver,
                ))),
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
            top: ScreenUtil().setHeight(250.h),
            left: ScreenUtil().setWidth(73),
            child: SizedBox(
                height: 62.h+MediaQuery.of(context).size.width / 4.5,
                width: 260.w,
                child: Image(image: AssetImage('assets/skills.png')))),
        Positioned(
            top: ScreenUtil().setHeight(1400.h),
            child: Container(
              height: 3000.h,
              width: MediaQuery.of(context).size.width,
              child: Skills(),
            )),
        Positioned(
            top: ScreenUtil().setHeight(MediaQuery.of(context).size.width*3.5+ bot * 2),
            left: ScreenUtil().setHeight(2 * bot + 700.w),
            child: Transform.rotate(angle: 5.5, child: Rocket()))
      ],
    ),
  );
}
