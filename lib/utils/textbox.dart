import 'package:flutter/material.dart';
import 'constants.dart';

class TextBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const TextBox({@required this.child, this.padding, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: COLOR_BLACK,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
        // border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: child,
      ),
    );
  }
}
