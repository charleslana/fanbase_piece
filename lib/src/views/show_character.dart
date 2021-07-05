import 'package:fanbase_piece/src/components/character_background.dart';
import 'package:fanbase_piece/src/components/menu_bar.dart';
import 'package:fanbase_piece/src/components/tooltip_text.dart';
import 'package:fanbase_piece/src/models/character_model.dart';
import 'package:flutter/material.dart';

class ShowCharacter extends StatefulWidget {
  const ShowCharacter({Key? key}) : super(key: key);

  @override
  _ShowCharacterState createState() => _ShowCharacterState();
}

class _ShowCharacterState extends State<ShowCharacter> {
  late final CharacterModel _character;
  late String _currentImage = '${_character.image}_1';

  void _changeImage(String image) {
    setState(() {
      _currentImage = image;
    });
  }

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
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CharacterBackground(),
          Column(
            children: [
              MenuBar(
                title: _character.name,
                enableBack: true,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: screenSize.height * 0.05,
                ),
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 13.0 / 10.0,
                    child: Image(
                      image: AssetImage(
                          'assets/images/characters/$_currentImage.png'),
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: screenSize.height * 0.40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/character_footer.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 80),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 4.0,
                        children: _character.images.map((index) {
                          return GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(
                                horizontal: 2,
                              ),
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/icons/select.png'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                              child: Text(
                                index.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onTap: () => _changeImage(
                                _character.image + '_' + index.toString()),
                          );
                        }).toList(),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Rank ${_character.rank}',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: 'PoetsenOne',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: TooltipText(
                                  child: Image(
                                    image: AssetImage(
                                        'assets/images/organizations/${_character.organization}.png'),
                                    fit: BoxFit.contain,
                                    alignment: Alignment.center,
                                    width: 40,
                                  ),
                                  text: _character.organization == 1
                                      ? 'Pirata'
                                      : _character.organization == 2
                                          ? 'Marinha'
                                          : 'Revolucionário',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: _character.haki.length == 0
                                    ? Text('O personagem não possui haki.')
                                    : Wrap(
                                        spacing: 8.0,
                                        runSpacing: 4.0,
                                        children: _character.haki.map((index) {
                                          return TooltipText(
                                            text: index == 1
                                                ? 'Haki da Observação'
                                                : index == 2
                                                    ? 'Haki do Armamento'
                                                    : 'Haki do Rei',
                                            child: Container(
                                              alignment: Alignment.center,
                                              margin: EdgeInsets.symmetric(
                                                horizontal: 2,
                                              ),
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/haki/$index.png'),
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
