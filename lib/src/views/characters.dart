import 'package:fanbase_piece/src/components/grid_card_character.dart';
import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:fanbase_piece/src/components/menu_bar.dart';
import 'package:fanbase_piece/src/data/character_data.dart';
import 'package:fanbase_piece/src/models/character_model.dart';
import 'package:fanbase_piece/src/utils/utils.dart';
import 'package:flutter/material.dart';

class ViewCharacters extends StatefulWidget {
  ViewCharacters({Key? key}) : super(key: key);

  @override
  _ViewCharactersState createState() => _ViewCharactersState();
}

class _ViewCharactersState extends State<ViewCharacters> {
  final Map<String, CharacterModel> _characters = {...CHARACTER_DATA};
  late Map<String, CharacterModel> _filterCharacters;

  @override
  void initState() {
    super.initState();
    _filterCharacters = _characters;
  }

  void _changeFilterCharacter(String text) {
    if (text != '') {
      final filterCharacters =
          Utils().searchFilterCharacters(_characters, text);
      return setState(() {
        _filterCharacters = filterCharacters;
      });
    }
    setState(() {
      _filterCharacters = _characters;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainBackground(),
          MenuBar(
            title: 'Personagens',
            enableBack: true,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 180,
            ),
            child: Column(
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
                    onChanged: (text) {
                      _changeFilterCharacter(text);
                    },
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 4,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 4,
                    padding: EdgeInsets.all(8.0),
                    children: List.generate(
                      _filterCharacters.length,
                      (index) {
                        return Center(
                          child: GridCardCharacter(
                              character:
                                  _filterCharacters.values.elementAt(index)),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
