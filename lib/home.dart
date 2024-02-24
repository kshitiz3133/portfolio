import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Animation/wave.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double topOne = 200;
  double topTwo = 450;
  double bot = 250;
  double conw=50;//size

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
                if(conw<110) {
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
                left: ScreenUtil().setWidth(bot-200),
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
                              top: ScreenUtil().setHeight(topOne+50),
                              child: Text(
                                "My projects",
                                style: TextStyle(color: Colors.white,fontSize: 40.sp),
                              )
                          ),
                          Positioned(
                              top: ScreenUtil().setHeight(topTwo+300),
                              child: Text(
                                "(Created by me)",
                                style: TextStyle(color: Colors.white.withOpacity(0.5)),
                              )
                          ),
                          Positioned(
                            top: ScreenUtil().setHeight(topTwo+500),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(height: 5*conw.h,width: conw.w,color: Colors.white,child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                      SizedBox(height: 100.h,),
                                      Icon(Icons.chat_rounded,color: Colors.black,size: conw/2,),
                                      SizedBox(height: conw.h,),
                                      Text("Minimal Chatting App")
                                    ],),),
                                    Container(height: 5*conw.h,width: conw.w,color: Colors.white,child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                      SizedBox(height: 100.h,),
                                      Icon(Icons.chat_rounded,color: Colors.black),
                                      SizedBox(height: conw.h,),
                                      Text("Minimal Chatting App")
                                    ],),),
                                    Container(height: 5*conw.h,width: conw.w,color: Colors.white,child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
                                      SizedBox(height: 100.h,),
                                      Icon(Icons.chat_rounded,color: Colors.black,),
                                      SizedBox(height: conw .h,),
                                      Text("Minimal Chatting App")
                                    ],),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: ScreenUtil().setHeight(topOne+1100),
                              child: Text(
                                "My Skills",
                                style: TextStyle(color: Colors.white,fontSize: 30.sp),
                              )
                          ),
                          Positioned(top: ScreenUtil().setHeight(topOne+1400),child: Transform.scale(
                            scale: 2,
                            child: Stack(
                              children: [
                                MyAnimation(),
                                Positioned(left: 80,child: MyAnimation())
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
                  Container(
                    height: 1100.h,
                    color: Color(0xff4D70AD),
                    child: Stack(children: [
                      Positioned(
                          left: ScreenUtil().setWidth(bot+200),
                          top: ScreenUtil().setHeight(40),
                          child: SizedBox(height: 400,child: Image(image: AssetImage('assets/fishes.png'),))
                      ),
                      Positioned(
                          left: ScreenUtil().setWidth(bot+500),
                          top: ScreenUtil().setHeight(100),
                          child: SizedBox(height: 400,child: Image(image: AssetImage('assets/fishes.png'),))
                      ),
                      Positioned(
                          left: ScreenUtil().setWidth(bot+50),
                          top: ScreenUtil().setHeight(400),
                          child: SizedBox(height: 400,child: Image(image: AssetImage('assets/fishes.png'),))
                      ),
                      Positioned(
                          left: ScreenUtil().setWidth(bot-500),
                          top: ScreenUtil().setHeight(20),
                          child: SizedBox(height: 400,child: Image(image: AssetImage('assets/fishes.png'),))
                      ),
                    ],),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
