import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage('assets/flutter.png'),),
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
                ],
              ),
            ),
          ],
        ),),
        Container(child: Row(
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
                    "for backend",
                    style: TextStyle(fontSize: 10.sp),
                  ),
                ],
              ),
            ),
            Image(image: AssetImage('assets/firebase.png'),),
          ],
        ),),
      ],
    );
  }
}
