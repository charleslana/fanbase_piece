import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  const MyAppBar({Key? key, required this.title, required this.appBar})
      : super(key: key);
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/appbar_bg.png'),
            fit: BoxFit.fill,
          ),
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      leading: Padding(
        padding: EdgeInsets.all(5.0),
        child: Image(
          image: AssetImage('assets/images/icons/appbar_icon.png'),
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(0.0),
          child: IconButton(
            icon: Image(
              image: AssetImage('assets/images/icons/favorite.png'),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
