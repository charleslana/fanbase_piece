import 'package:fanbase_piece/src/components/main_background.dart';
import 'package:fanbase_piece/src/components/menu_bar.dart';
import 'package:fanbase_piece/src/models/character_model.dart';
import 'package:flutter/material.dart';

class ShowCharacter extends StatefulWidget {
  const ShowCharacter({Key? key}) : super(key: key);

  @override
  _ShowCharacterState createState() => _ShowCharacterState();
}

class _ShowCharacterState extends State<ShowCharacter> {
  late final CharacterModel _character;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final character = ModalRoute.of(context)!.settings.arguments;

    if (character != null) {
      _character = character as CharacterModel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MainBackground(),
          MenuBar(
            title: 'Model',
            enableBack: true,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 180,
            ),
            child: Center(
              child: Text(_character.name),
            ),
          ),
        ],
      ),
    );
  }
}
