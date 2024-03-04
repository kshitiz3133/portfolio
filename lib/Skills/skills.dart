import 'package:flutter/material.dart';
class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        Container(child: Row(
          children: [
            Image(image: AssetImage('assets/flutter.png'),),
          ],
        ),),
        Container(color: Colors.red,),
        Container(color: Colors.green,),
      ],
    );
  }
}
