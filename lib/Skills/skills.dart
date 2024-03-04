import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                height: 300.h,
                child: Image(image: AssetImage('assets/flutter.png'),)),
            SizedBox(
              width: 150.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FLUTTER",style: TextStyle(fontSize: 12.sp,color: Colors.black),),
                  Text(
                    "frontend framework",
                    style: TextStyle(fontSize: 10.sp),
                  ),
                  Text(
                    "-for cross platform development",
                    style: TextStyle(fontSize: 8.sp),
                  ),
                ],
              ),
            ),
          ],
        ),),
        SizedBox(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 150.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FIREBASE",style: TextStyle(fontSize: 12.sp,color: Colors.black),),
                  Text(
                    "-for backend",
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ],
              ),
            ),
            SizedBox(height: 500.h,child: Image(image: AssetImage('assets/firebase.png'),)),
          ],
        ),),
        Padding(
          padding: const EdgeInsets.only(left: 80 , right: 80.0,top: 100),
          child: SizedBox(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20.w,),
                    Text("Creative Tools",style: TextStyle(fontSize: 15.sp),),
                    SizedBox(
                      height: 259.h,
                      child: Image(image: AssetImage('assets/canva.png'))),
                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 384.h,
                        child: Image(image: AssetImage('assets/figma.png'))),
                    SizedBox(width: 40.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Figma for UI designing",style: TextStyle(fontSize: 10.sp),),
                        Text("Canva for graphics",style: TextStyle(fontSize: 10.sp),),
                      ],
                    )
                  ],)
              ],
            ),
          ),
        )
      ],
    );
  }
}
