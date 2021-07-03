import 'package:fanbase_piece/src/models/character_model.dart';
import 'package:fanbase_piece/src/routes/app_routes.dart';
import 'package:flutter/material.dart';

class GridCardCharacter extends StatelessWidget {
  final CharacterModel character;
  const GridCardCharacter({Key? key, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(AppRoutes.CHARACTERS),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 13.0 / 10.0,
                  child: Image(
                    image: AssetImage(character.pathIcon),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
