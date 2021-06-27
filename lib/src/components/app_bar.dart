import 'package:fanbase_piece/src/routes/app_routes.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;
  final bool? back;
  final bool? home;

  const MyAppBar({
    Key? key,
    required this.title,
    required this.appBar,
    this.back,
    this.home,
  }) : super(key: key);

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
      leading: IconButton(
        icon: Image(
          image: AssetImage('assets/images/icons/appbar.png'),
        ),
        onPressed: () => home == null
            ? null
            : Navigator.of(context).pushNamed(AppRoutes.HOME),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        back == null
            ? IconButton(
                icon: Image(
                  image: AssetImage('assets/images/icons/favorite.png'),
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(AppRoutes.FAVORITE),
              )
            : IconButton(
                icon: Image(
                  image: AssetImage('assets/images/icons/back.png'),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
      ],
    );
  }
}
