import 'package:fanbase_piece/src/views/home.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  final String title;
  final bool? enableBack;

  const MenuBar({
    Key? key,
    required this.title,
    this.enableBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.10,
            ),
            width: MediaQuery.of(context).size.width,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/menu_bar/title.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: 55,
              ),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
          ),
          Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => enableBack == null
                      ? null
                      : Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => Home())),
                  child: Image(
                    image: AssetImage('assets/images/menu_bar/home.png'),
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
                enableBack == null
                    ? Container()
                    : InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Image(
                          image: AssetImage('assets/images/menu_bar/back.png'),
                          fit: BoxFit.contain,
                          alignment: Alignment.center,
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
