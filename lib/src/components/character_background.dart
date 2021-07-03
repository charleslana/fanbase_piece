import 'package:flutter/material.dart';

class CharacterBackground extends StatelessWidget {
  const CharacterBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/character_bg.jpg'),
          fit: BoxFit.fill,
        ),
        color: Colors.black,
      ),
    );
  }
}
