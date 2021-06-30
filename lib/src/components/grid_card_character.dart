import 'package:fanbase_piece/src/models/grid_card_character_option.dart';
import 'package:fanbase_piece/src/routes/app_routes.dart';
import 'package:flutter/material.dart';

class GridCardCharacter extends StatelessWidget {
  final GridCardCharacterOption option;
  const GridCardCharacter({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(AppRoutes.HOME),
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
                    image: AssetImage(option.image),
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
