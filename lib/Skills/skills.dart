import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/Animation/socials.dart';
import 'package:portfolio/Animation/wave.dart';
//commit
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
      child: Column(
        children: [
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width / 5,
                    child: Image(
                      image: AssetImage('assets/flutter.png'),
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "FLUTTER",
                        style: TextStyle(fontSize: 40.sp, color: Colors.black),
                      ),
                      Text(
                        "-frontend framework",
                        style: TextStyle(fontSize: 30.sp),
                      ),
                      Text(
                        "-for cross platform development",
                        style: TextStyle(fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FIREBASE",
                          style: TextStyle(fontSize: 40.sp, color: Colors.black),
                        ),
                        Text(
                          "-for backend",
                          style: TextStyle(fontSize: 30.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width/5,
                      child: Image(
                        image: AssetImage('assets/firebase.png'),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(height: 200.h,),
          SizedBox(
            width: 1000.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "Creative Tools",
                      style: TextStyle(fontSize: 40.sp),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        child: Image(image: AssetImage('assets/canva.png'))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        child: Image(image: AssetImage('assets/figma.png'))),
                    SizedBox(width: MediaQuery.of(context).size.width / 8,),
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Figma for UI designing",
                            style: TextStyle(fontSize: 30.sp),
                            maxLines: 3,
                            overflow: TextOverflow.visible,
                          ),
                          Text(
                            "Canva for graphics",
                            style: TextStyle(fontSize: 30.sp),
                            maxLines: 3,
                            overflow: TextOverflow.visible,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Text("Socials",style: TextStyle(fontSize: 40.sp),),
          ),
          const Socials(),
        ],
      ),
    );
  }
}
