import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textColor,
    this.showActionButton = true,
    required this.title,
    this.buttonTitle = 'View all',
    required this.onPressed,
  });

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Title text
        Expanded(
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        // Spacer to push the button to the right
        if (showActionButton)
          Padding(
            padding:
                const EdgeInsets.only(right: 8.0), // Add margin to the right
            child: TextButton(
              onPressed: onPressed,
              child: Text(buttonTitle),
            ),
          ),
      ],
    );
  }
}
