import 'package:flutter/material.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key,
    this.currencySign = '\$',
    required this.price,
    this.maxLines = 1,
    this.isLarge = false,
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = isLarge
        ? Theme.of(context).textTheme.headlineMedium
        : Theme.of(context).textTheme.titleLarge;

    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: textStyle?.copyWith(
            decoration: lineThrough ? TextDecoration.lineThrough : null,
          ) ??
          TextStyle(
            // Fallback style in case textStyle is null
            fontSize: isLarge ? 24 : 18,
            decoration: lineThrough ? TextDecoration.lineThrough : null,
          ),
    );
  }
}
