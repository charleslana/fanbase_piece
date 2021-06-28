import 'package:fanbase_piece/src/components/app_bar.dart';
import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Favoritos',
        appBar: AppBar(),
        back: true,
        home: true,
      ),
      body: Stack(
        children: [
          MainBackground(),
          Center(
            child: Text('Favoritos'),
          ),
        ],
      ),
    );
  }
}
