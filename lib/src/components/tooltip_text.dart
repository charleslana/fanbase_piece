import 'package:flutter/material.dart';

class TooltipText extends StatelessWidget {
  final String text;
  final Widget child;
  const TooltipText({
    Key? key,
    required this.text,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.9),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      message: text,
      child: child,
    );
  }
}
