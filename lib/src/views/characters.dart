import 'package:fanbase_piece/src/components/app_bar.dart';
import 'package:fanbase_piece/src/components/grid_card_character.dart';
import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:fanbase_piece/src/data/grid_character.dart';
import 'package:fanbase_piece/src/models/grid_card_character_option.dart';
import 'package:flutter/material.dart';

class BaseCharacters extends StatelessWidget {
  BaseCharacters({Key? key}) : super(key: key);
  final Map<String, GridCardCharacterOption> options = {...DATA_GRID_CHARACTER};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        title: 'Personagens',
        appBar: AppBar(),
        back: true,
        home: true,
      ),
      body: Stack(
        children: [
          MainBackground(),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image(
                      image: AssetImage('assets/images/icons/search.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      height: 8,
                    ),
                    border: UnderlineInputBorder(),
                    hintText: 'Procurar um personagem',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  padding: EdgeInsets.all(8.0),
                  children: List.generate(
                    options.length,
                    (index) {
                      return Center(
                        child: GridCardCharacter(
                            option: options.values.elementAt(index)),
                      );
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
