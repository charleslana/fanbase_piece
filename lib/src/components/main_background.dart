import 'package:flutter/material.dart';

class MainBackground extends StatelessWidget {
  const MainBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/body_bg.png'),
          fit: BoxFit.fill,
        ),
        color: Colors.black,
      ),
    );
  }
}
