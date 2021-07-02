import 'package:fanbase_piece/src/components/grid_card_home.dart';
import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:fanbase_piece/src/components/menu_bar.dart';
import 'package:fanbase_piece/src/data/grid_home.dart';
import 'package:fanbase_piece/src/models/grid_card_home_option.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final Map<String, GridCardHomeOption> options = {...DATA_GRID_HOME};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainBackground(),
          MenuBar(
            title: 'Home',
          ),
          Container(
            margin: EdgeInsets.only(
              top: 200,
            ),
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              padding: EdgeInsets.all(8.0),
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
