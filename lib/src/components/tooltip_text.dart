import 'package:flutter/material.dart';

class TooltipText extends StatelessWidget {
  final String text;
  final Widget child;
  TooltipText({Key? key, required this.text, required this.child})
      : super(key: key);

  final GlobalKey _toolTipKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final dynamic _toolTip = _toolTipKey.currentState;
        _toolTip.ensureTooltipVisible();
      },
      child: Tooltip(
        key: _toolTipKey,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.9),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        message: text,
        child: child,
      ),
    );
  }
}
