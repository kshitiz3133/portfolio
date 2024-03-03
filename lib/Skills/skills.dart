import 'package:flutter/material.dart';
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.black,),
        Container(color: Colors.red,),
        Container(color: Colors.green,),
      ],
    );
  }
}
