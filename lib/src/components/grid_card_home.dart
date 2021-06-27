import 'package:fanbase_piece/src/models/grid_card_option.dart';
import 'package:flutter/material.dart';

class GridCardHome extends StatelessWidget {
  final GridCardOption option;
  const GridCardHome({Key? key, required this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/grid_card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(option.route),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 18.0 / 10.0,
                  child: Image(
                    image: AssetImage(option.image),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: Text(
                    option.title,
                    style: TextStyle(
                      fontSize: 15,
                    ),
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
