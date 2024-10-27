import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final Color? colorValue = THelperFunctions.getColor(text);
    final bool isColor = colorValue != null;

    return ChoiceChip(
      label: isColor
          ? TCircularContainer(
              width: 50,
              height: 50,
              backgroundColor: colorValue,
            )
          : Text(text),

      selected: selected,
      onSelected: (value) {
        if (onSelected != null) {
          onSelected!(value);
        }
      },
      labelStyle: TextStyle(
        color: selected
            ? TColors.white
            : TColors.black, // Provide a contrast color
      ),
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor
          ? const EdgeInsets.all(0)
          : const EdgeInsets.symmetric(horizontal: 8.0),
      shape: isColor
          ? const CircleBorder()
          : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), // Default shape for non-color chips
            ),
      backgroundColor:
          isColor ? colorValue : TColors.lightGrey, // Provide a default color
      selectedColor: Colors.green,
    );
  }
}
