import 'package:fanbase_piece/src/components/app_bar.dart';
import 'package:fanbase_piece/src/components/grid_card_home.dart';
import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:fanbase_piece/src/data/grid_home.dart';
import 'package:fanbase_piece/src/models/grid_card_option.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final Map<String, GridCardOption> options = {...DATA_GRID_HOME};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'Fanbase Piece',
        appBar: AppBar(),
      ),
      body: Stack(
        children: [
          MainBackground(),
          Center(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              padding: EdgeInsets.all(8.0),
              shrinkWrap: true,
              children: List.generate(
                options.length,
                (index) {
                  return Center(
                    child:
                        GridCardHome(option: options.values.elementAt(index)),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
