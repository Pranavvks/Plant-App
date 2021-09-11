import 'package:flutter/material.dart';
import 'constants.dart';

class PriceBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double width, height;

  const PriceBox({@required this.child, this.padding, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
        border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2),
      ),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(
        child: child,
      ),
    );
  }
}
