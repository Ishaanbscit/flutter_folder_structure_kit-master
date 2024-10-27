import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size,
    this.color,
    required this.icon,
    this.backgroundColor,
    required this.onPressed,
  });

  final double? width, height, size;
  final Color? color;
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor ??
            (THelperFunctions.isDarkMode(context)
                ? TColors.black.withOpacity(0.9)
                : TColors.white.withOpacity(0.9)),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, color: color, size: size),
      ),
    );
  }
}
