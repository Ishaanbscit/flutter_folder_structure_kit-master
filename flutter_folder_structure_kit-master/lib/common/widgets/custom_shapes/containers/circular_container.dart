import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 200,
    this.padding = 0,
    this.child,
    required this.backgroundColor,
    this.margin, // Use backgroundColor for consistency
  });

  final double width;
  final double height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding), // Make padding customizable
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(radius), // Custom radius for flexibility
        color: backgroundColor, // Use the provided background color
      ),
      child: child,
    );
  }
}
