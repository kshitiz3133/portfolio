import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Socials extends StatefulWidget {
  const Socials({Key? key}) : super(key: key);

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _controllera;
  late final Animation animation;
  late final Animation aanimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 2400),
      vsync: this,
    )..repeat(reverse: true);
    _controllera = AnimationController(
      duration: Duration(milliseconds: 2900),
      vsync: this,
    )..repeat(reverse: true);

    animation = Tween<double>(begin: 0, end: 13).animate(CurvedAnimation(parent: _controllera, curve: Curves.easeInOut));
    aanimation = Tween<double>(begin: 25, end: 5).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllera.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MySocials(animation, aanimation);
  }
}

class MySocials extends AnimatedWidget {
  final Animation animation;
  final Animation aanimation;

  MySocials(this.animation, this.aanimation) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.h ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: animation.value+14,
              left: aanimation.value,
            ),
            child: InkWell(
              onTap:(){} ,
              child: Container(
                height: 300.h,
                child: Image.asset('assets/github.png'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top:animation.value+2,
              right: aanimation.value,
            ),
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 300.h,
                child: Image.asset('assets/ln.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
