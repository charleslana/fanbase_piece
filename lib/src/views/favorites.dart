import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:fanbase_piece/src/components/menu_bar.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainBackground(),
          MenuBar(
            title: 'Favoritos',
            home: true,
            back: true,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 180,
            ),
            child: Center(
              child: Text('Favoritos'),
            ),
          ),
        ],
      ),
    );
  }
}
