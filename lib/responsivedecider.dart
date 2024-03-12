import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/dekstop.dart';

import 'moibile.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) =>
            MaterialApp(
              home: Home(),
            ));
  }
}

class Dekstop extends StatelessWidget {
  const Dekstop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1440, 1024),
        builder: (context, child) =>
            MaterialApp(
              home: DESKHOME(),
            ));
  }
}
