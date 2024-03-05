import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Rocket extends StatefulWidget {
  const Rocket({Key? key}) : super(key: key);

  @override
  State<Rocket> createState() => _RocketState();
}

class _RocketState extends State<Rocket> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(duration: Duration(seconds: 1),vsync: this)..repeat();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width/6,
      child: Lottie.network(
          "https://lottie.host/ea1cb244-be16-4f59-a4e5-56fa3423ccb2/2sDC9gIVJk.json",
          controller: _controller
      ),
    );
  }
}
