import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.widget.dart';
import 'package:t_store/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary, // Make background color transparent
        child: SizedBox(
          child: Stack(
            children: [
              // Add circular decorations with opacity and consistent margin
              Positioned(
                top: -150,
                right: -250, // Adjusted right margin for better positioning
                child: TCircularContainer(
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300, // Adjusted right margin for better alignment
                child: TCircularContainer(
                  radius: 400,
                  backgroundColor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              // Add child elements (if any)
              child, // Insert the child widget passed to TPrimaryHeaderContainer
            ],
          ),
        ),
      ),
    );
  }
}
