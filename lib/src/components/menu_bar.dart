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
      height: 200.0,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/menu_bar/title.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: 40,
              ),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
          ),
          Positioned(
            top: 100.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/menu_bar/home.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: InkWell(
                        onTap: () => enableBack == null
                            ? null
                            : Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Home())),
                      ),
                    ),
                    enableBack == null
                        ? Container()
                        : Container(
                            margin: EdgeInsets.all(5.0),
                            width: 100.0,
                            height: 100.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/menu_bar/back.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                            child: InkWell(
                              onTap: () => Navigator.of(context).pop(),
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
