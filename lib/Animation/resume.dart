import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher_string.dart';
class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> with TickerProviderStateMixin{
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
    aanimation = Tween<double>(begin: 15, end: 5).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllera.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyResume(animation, aanimation);
  }
}

class MyResume extends AnimatedWidget {
  final Animation animation;
  final Animation aanimation;
  bool ishovereda=false;
  bool ishoveredb=false;

  MyResume(this.animation, this.aanimation) : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            height: 1500.h ,
            child: Center(
              child:
                Padding(
                  padding: EdgeInsets.only(
                    top:animation.value+2,
                    right: aanimation.value,
                  ),
                  child: MouseRegion(
                    onEnter: (event){
                      ishoveredb=true;
                    },
                    onExit: (event){
                      ishoveredb=false;
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: ishoveredb? 1700.h:1800.h,
                      child: Image.asset('assets/resume.png'),
                    ),
                  ),
                ),
            ),
          );
        } else {
          return Container(
            height: 800.h ,
            child: Center(
              child:
                Padding(
                  padding: EdgeInsets.only(
                    top:animation.value+2,
                    right: aanimation.value+4 ,
                  ),
                  child: MouseRegion(
                    onEnter: (event){
                      ishoveredb=true;
                    },
                    onExit: (event){
                      ishoveredb=false;
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: ishoveredb? 1025.h:1100.h,
                      child: Image.asset('assets/resume.png'),
                    ),
                  ),
                ),
            ),
          );
        }
      },
    );
  }
}
