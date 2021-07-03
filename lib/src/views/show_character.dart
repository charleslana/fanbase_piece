import 'package:fanbase_piece/src/components/character_background.dart';
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
          CharacterBackground(),
          MenuBar(
            title: 'Informações',
            enableBack: true,
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.20,
            ),
            child: Center(
              child: AspectRatio(
                aspectRatio: 13.0 / 10.0,
                child: Image(
                  image: AssetImage(
                      'assets/images/characters/${_character.image}.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/character_footer.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Center(
                  child: Text('Texto'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
