import 'package:flutter/material.dart';

class BuyNowBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const BuyNowBox(
      {@required this.child, this.padding, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 170, end: 0, start: 0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.green,
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
