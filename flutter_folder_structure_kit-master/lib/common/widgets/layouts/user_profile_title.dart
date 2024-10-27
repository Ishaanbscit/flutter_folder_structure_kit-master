import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class TUserProfileTitle extends StatelessWidget {
  final Future? Function()? onPressed; // Change this line

  const TUserProfileTitle({
    super.key,
    required this.onPressed, // Ensure onPressed is stored
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: TCircularImage(
        image: TImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Coding with Ishaan',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: TColors.white),
      ),
      subtitle: Text(
        'kishaan339@gmail.com',
        style:
            Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
      onTap: onPressed, // Add this line to handle tap
    );
  }
}
