import 'package:fanbase_piece/src/models/home_model.dart';
import 'package:flutter/material.dart';

class GridCardHome extends StatelessWidget {
  final HomeModel home;
  const GridCardHome({Key? key, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(home.route),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 14.0 / 10.0,
                  child: Image(
                    image: AssetImage(home.image),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: Text(
                    home.title,
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
