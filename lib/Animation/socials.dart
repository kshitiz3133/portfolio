import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';


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
  bool ishovereda=false;
  bool ishoveredb=false;

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
              onTap:(){
                _launchURLa();
              } ,
              child: MouseRegion(
                onEnter: (event){
                  ishovereda=true;
                },
                onExit: (event){
                  ishovereda=false;
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: ishovereda? 325.h:300.h,
                  child: Image.asset('assets/github.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top:animation.value+2,
              right: aanimation.value,
            ),
            child: InkWell(
              onTap: (){_launchURLb();},
              child: MouseRegion(
                onEnter: (event){
                  ishoveredb=true;
                },
                onExit: (event){
                  ishoveredb=false;
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: ishoveredb? 325.h:300.h,
                  child: Image.asset('assets/ln.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void _launchURLa() async {
  const url = 'https://github.com/kshitiz3133';
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
void _launchURLb() async {
  const url = 'https://www.linkedin.com/in/kshitiz3133/';
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}