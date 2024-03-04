import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
class Cat extends StatefulWidget {
  const Cat({Key? key}) : super(key: key);

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 2),vsync: this)..repeat();
    _controller.addListener(() {
      setState(() {});
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      child: Lottie.network(
          "https://lottie.host/f35790e2-f4dc-421d-9f7f-477201454887/9nyLd06N9D.json",
          controller: _controller
      ),
    );
  }
}
