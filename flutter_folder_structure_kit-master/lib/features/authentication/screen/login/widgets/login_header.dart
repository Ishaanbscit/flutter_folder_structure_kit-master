import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screen/login/widgets/form_divider.dart';
import 'package:t_store/features/authentication/screen/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screen/login/widgets/social_buttons.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///logo, Title & sub_title
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 150,
              image:
                  AssetImage(dark ? TImages.darkAppLogo : TImages.darkAppLogo),
            ),
            Text(TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.sm),
            Text(TTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const TLoginForm(),

        TFormDivider(
          dark: dark,
          dividerText: 'Hello',
        ),
        const SizedBox(height: TSizes.spaceBtwSections),

        ///Footer
        const TScocialButton(),
      ],
    );
  }
}


/*
import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screen/login/widgets/social_buttons.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'login_form.dart';
import 'form_divider.dart';
import 'social_button.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 150,
              image: AssetImage(dark
                  ? TImages.darkAppLogo
                  : TImages.lightAppLogo),
            ),
            Text(TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.sm),
            Text(TTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const TLoginForm(),
        TFormDivider(dark: dark, dividerText: '',),
        const SizedBox(height: TSizes.spaceBtwSections),
        const TSocialButton();
      ],
    );
  }
}
*/