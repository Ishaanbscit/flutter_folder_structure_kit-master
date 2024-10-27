import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/features/authentication/screen/Widgets/signup.dart';
import 'package:t_store/features/authentication/screen/password_configuration/forget_password.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: TLoginHeader(dark: dark),
        ),
      ),
    );
  }
}

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Logo, title, and subtitle
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 150,
              image:
                  AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
            ),
            Text(
              TTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: dark
                        ? Colors.white
                        : Colors.black87, // Dark for light logo
                  ),
            ),
            const SizedBox(height: TSizes.sm),
            Text(
              TTexts.loginSubTitle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: dark
                        ? Colors.white70
                        : Colors.black54, // Dark for light logo
                  ),
            ),
          ],
        ),

        /* Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 150,
              image: AssetImage(
                  dark ? TImages.darkAppLogo : TImages.lightAppLogo),
            ),
            Text(TTexts.loginTitle,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: TSizes.sm),
            Text(TTexts.loginSubTitle,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),*/

        // Login form
        const TLoginForm(),
        // Divider for social login
        TFormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!),
        const SizedBox(height: TSizes.spaceBtwSections),
        // Social login buttons
        const TScocialButton(),
      ],
    );
  }
}

class TLoginForm extends StatefulWidget {
  const TLoginForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TLoginFormState createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            // Email field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: TTexts.email,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            // Password field
            TextFormField(
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordVisible ? Iconsax.eye : Iconsax.eye_slash,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            // Remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value!;
                        });
                      },
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            // Sign-in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, // Set text color
                  backgroundColor: Colors.cyan,
                ),
                onPressed: () => {
                  if (_formKey.currentState!.validate())
                    {
                      Get.to(() => const NavigationMenu()),
                    }
                },
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            // Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                ),
                onPressed: () => Get.to(() => const SignupScreen()),
                // Handle account creation logic
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const SignupScreen()),
                // );

                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TScocialButton extends StatelessWidget {
  const TScocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle Google sign-in logic
            },
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.google),
            ),
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: TColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {
              // Handle Facebook sign-in logic
            },
            icon: const Image(
              width: TSizes.iconMd,
              height: TSizes.iconMd,
              image: AssetImage(TImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}

class TFormDivider extends StatelessWidget {
  const TFormDivider(
      {super.key, required this.dark, required this.dividerText});

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}













/*
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: TSpacingStyle.paddingWithAppBarHeight,
//           child: TLoginHeader(dark: dark),
//         ),
//       ),
//     );
//   }
// }*/
// /*
// class TLoginHeader extends StatelessWidget {
//   const TLoginHeader({super.key, required this.dark});

//   final bool dark;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Logo, title, and subtitle
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image(
//               height: 150,
//               image:
//                   AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
//             ),
//             Text(TTexts.loginTitle,
//                 style: Theme.of(context).textTheme.headlineMedium),
//             const SizedBox(height: TSizes.sm),
//             Text(TTexts.loginSubTitle,
//                 style: Theme.of(context).textTheme.bodyMedium),
//           ],
//         ),
//         // Login form
//         const TLoginForm(),
//         // Divider for social login
//         TFormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!),
//         const SizedBox(height: TSizes.spaceBtwSections),
//         // Social login buttons
//         const TScocialButton(),
//       ],
//     );
//   }
// }*/
// /*
// class TLoginForm extends StatefulWidget {
//   const TLoginForm({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _TLoginFormState createState() => _TLoginFormState();
// }

// class _TLoginFormState extends State<TLoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   bool _isPasswordVisible = false;
//   bool _rememberMe = false;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
//         child: Column(
//           children: [
//             // Email field
//             TextFormField(
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Iconsax.direct_right),
//                 labelText: TTexts.email,
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your email';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(height: TSizes.spaceBtwInputFields),
//             // Password field
//             TextFormField(
//               obscureText: !_isPasswordVisible,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Iconsax.password_check),
//                 labelText: TTexts.password,
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Iconsax.eye : Iconsax.eye_slash,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(height: TSizes.spaceBtwInputFields / 2),
//             // Remember me and forgot password
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _rememberMe,
//                       onChanged: (value) {
//                         setState(() {
//                           _rememberMe = value!;
//                         });
//                       },
//                     ),
//                     const Text(TTexts.rememberMe),
//                   ],
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(TTexts.forgetPassword),
//                 ),
//               ],
//             ),
//             const SizedBox(height: TSizes.spaceBtwSections),
//             // Sign-in button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white, // Set text color
//                   backgroundColor: Colors.cyan,
//                 ),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Handle sign-in logic here
//                   }
//                 },
//                 child: const Text(TTexts.signIn),
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems),
//             // Create account button
//             SizedBox(
//               width: double.infinity,
//               child: OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                 ),
//                 onPressed: () {
//                   // Handle account creation logic
//                 },
//                 child: const Text(TTexts.createAccount),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// */
// /*
// class TScocialButton extends StatelessWidget {
//   const TScocialButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: TColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             onPressed: () {
//               // Handle Google sign-in logic
//             },
//             icon: const Image(
//               width: TSizes.iconMd,
//               height: TSizes.iconMd,
//               image: AssetImage(TImages.google),
//             ),
//           ),
//         ),
//         const SizedBox(width: TSizes.spaceBtwItems),
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: TColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             onPressed: () {
//               // Handle Facebook sign-in logic
//             },
//             icon: const Image(
//               width: TSizes.iconMd,
//               height: TSizes.iconMd,
//               image: AssetImage(TImages.facebook),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }*/

// /*
// class TFormDivider extends StatelessWidget {
//   const TFormDivider(
//       {super.key, required this.dark, required this.dividerText});

//   final bool dark;
//   final String dividerText;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Flexible(
//           child: Divider(
//             color: dark ? TColors.darkGrey : TColors.grey,
//             thickness: 0.5,
//             indent: 60,
//             endIndent: 5,
//           ),
//         ),
//         Text(
//           dividerText,
//           style: Theme.of(context).textTheme.labelMedium,
//         ),
//         Flexible(
//           child: Divider(
//             color: dark ? TColors.darkGrey : TColors.grey,
//             thickness: 0.5,
//             indent: 5,
//             endIndent: 60,
//           ),
//         ),
//       ],
//     );
//   }
// }
// */






// /*

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:t_store/common/styles/spacing_styles.dart';
// import 'package:t_store/features/authentication/screen/Widgets/signup.dart';
// import 'package:t_store/features/authentication/screen/password_configuration/forget_password.dart';
// import 'package:t_store/navigation_menu.dart';
// import 'package:t_store/utils/constants/colors.dart';
// import 'package:t_store/utils/constants/image_strings.dart';
// import 'package:t_store/utils/constants/sizes.dart';
// import 'package:t_store/utils/constants/text_strings.dart';
// import 'package:t_store/utils/helpers/helper_functions.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: TSpacingStyle.paddingWithAppBarHeight,
//           child: TLoginHeader(dark: dark),
//         ),
//       ),
//     );
//   }
// }

// class TLoginHeader extends StatelessWidget {
//   const TLoginHeader({super.key, required this.dark});

//   final bool dark;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Logo, title, and subtitle
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image(
//               height: 150,
//               image:
//                   AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
//             ),
//             Text(
//               TTexts.loginTitle,
//               style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                     color: dark
//                         ? Colors.white
//                         : Colors.black87, // Dark for light logo
//                   ),
//             ),
//             const SizedBox(height: TSizes.sm),
//             Text(
//               TTexts.loginSubTitle,
//               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     color: dark
//                         ? Colors.white70
//                         : Colors.black54, // Dark for light logo
//                   ),
//             ),
//           ],
//         ),

//         /* Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image(
//               height: 150,
//               image: AssetImage(
//                   dark ? TImages.darkAppLogo : TImages.lightAppLogo),
//             ),
//             Text(TTexts.loginTitle,
//                 style: Theme.of(context).textTheme.headlineMedium),
//             const SizedBox(height: TSizes.sm),
//             Text(TTexts.loginSubTitle,
//                 style: Theme.of(context).textTheme.bodyMedium),
//           ],
//         ),*/

//         // Login form
//         const TLoginForm(),
//         // Divider for social login
//         TFormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!),
//         const SizedBox(height: TSizes.spaceBtwSections),
//         // Social login buttons
//         const TScocialButton(),
//       ],
//     );
//   }
// }

// class TLoginForm extends StatefulWidget {
//   const TLoginForm({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _TLoginFormState createState() => _TLoginFormState();
// }

// class _TLoginFormState extends State<TLoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   bool _isPasswordVisible = false;
//   bool _rememberMe = false;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
//         child: Column(
//           children: [
//             // Email field
//             TextFormField(
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Iconsax.direct_right),
//                 labelText: TTexts.email,
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your email';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(height: TSizes.spaceBtwInputFields),
//             // Password field
//             TextFormField(
//               obscureText: !_isPasswordVisible,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Iconsax.password_check),
//                 labelText: TTexts.password,
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Iconsax.eye : Iconsax.eye_slash,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(height: TSizes.spaceBtwInputFields / 2),
//             // Remember me and forgot password
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _rememberMe,
//                       onChanged: (value) {
//                         setState(() {
//                           _rememberMe = value!;
//                         });
//                       },
//                     ),
//                     const Text(TTexts.rememberMe),
//                   ],
//                 ),
//                 TextButton(
//                   onPressed: () => Get.to(() => const ForgetPassword()),
//                   child: const Text(TTexts.forgetPassword),
//                 ),
//               ],
//             ),
//             const SizedBox(height: TSizes.spaceBtwSections),
//             // Sign-in button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white, // Set text color
//                   backgroundColor: Colors.cyan,
//                 ),
//                 onPressed: () => {
//                   if (_formKey.currentState!.validate())
//                     {
//                       Get.to(() => const NavigationMenu()),
//                     }
//                 },
//                 child: const Text(TTexts.signIn),
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems),
//             // Create account button
//             SizedBox(
//               width: double.infinity,
//               child: OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                   backgroundColor: Colors.purple,
//                 ),
//                 onPressed: () => Get.to(() => const SignupScreen()),
//                 // Handle account creation logic
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //       builder: (context) => const SignupScreen()),
//                 // );

//                 child: const Text(TTexts.createAccount),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TScocialButton extends StatelessWidget {
//   const TScocialButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: TColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             onPressed: () {
//               // Handle Google sign-in logic
//             },
//             icon: const Image(
//               width: TSizes.iconMd,
//               height: TSizes.iconMd,
//               image: AssetImage(TImages.google),
//             ),
//           ),
//         ),
//         const SizedBox(width: TSizes.spaceBtwItems),
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: TColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             onPressed: () {
//               // Handle Facebook sign-in logic
//             },
//             icon: const Image(
//               width: TSizes.iconMd,
//               height: TSizes.iconMd,
//               image: AssetImage(TImages.facebook),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class TFormDivider extends StatelessWidget {
//   const TFormDivider(
//       {super.key, required this.dark, required this.dividerText});

//   final bool dark;
//   final String dividerText;

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Flexible(
//           child: Divider(
//             color: dark ? TColors.darkGrey : TColors.grey,
//             thickness: 0.5,
//             indent: 60,
//             endIndent: 5,
//           ),
//         ),
//         Text(
//           dividerText,
//           style: Theme.of(context).textTheme.labelMedium,
//         ),
//         Flexible(
//           child: Divider(
//             color: dark ? TColors.darkGrey : TColors.grey,
//             thickness: 0.5,
//             indent: 5,
//             endIndent: 60,
//           ),
//         ),
//       ],
//     );
//   }
// }



// */





// /*
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final dark = THelperFunctions.isDarkMode(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: TSpacingStyle.paddingWithAppBarHeight,
//           child: TLoginHeader(dark: dark),
//         ),
//       ),
//     );
//   }
// }*/
// /*
// class TLoginHeader extends StatelessWidget {
//   const TLoginHeader({super.key, required this.dark});

//   final bool dark;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Logo, title, and subtitle
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image(
//               height: 150,
//               image:
//                   AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
//             ),
//             Text(TTexts.loginTitle,
//                 style: Theme.of(context).textTheme.headlineMedium),
//             const SizedBox(height: TSizes.sm),
//             Text(TTexts.loginSubTitle,
//                 style: Theme.of(context).textTheme.bodyMedium),
//           ],
//         ),
//         // Login form
//         const TLoginForm(),
//         // Divider for social login
//         TFormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!),
//         const SizedBox(height: TSizes.spaceBtwSections),
//         // Social login buttons
//         const TScocialButton(),
//       ],
//     );
//   }
// }*/
// /*
// class TLoginForm extends StatefulWidget {
//   const TLoginForm({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _TLoginFormState createState() => _TLoginFormState();
// }

// class _TLoginFormState extends State<TLoginForm> {
//   final _formKey = GlobalKey<FormState>();
//   bool _isPasswordVisible = false;
//   bool _rememberMe = false;

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
//         child: Column(
//           children: [
//             // Email field
//             TextFormField(
//               decoration: const InputDecoration(
//                 prefixIcon: Icon(Iconsax.direct_right),
//                 labelText: TTexts.email,
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your email';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(height: TSizes.spaceBtwInputFields),
//             // Password field
//             TextFormField(
//               obscureText: !_isPasswordVisible,
//               decoration: InputDecoration(
//                 prefixIcon: const Icon(Iconsax.password_check),
//                 labelText: TTexts.password,
//                 suffixIcon: IconButton(
//                   icon: Icon(
//                     _isPasswordVisible ? Iconsax.eye : Iconsax.eye_slash,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       _isPasswordVisible = !_isPasswordVisible;
//                     });
//                   },
//                 ),
//               ),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 return null;
//               },
//             ),
//             const SizedBox(height: TSizes.spaceBtwInputFields / 2),
//             // Remember me and forgot password
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(
//                       value: _rememberMe,
//                       onChanged: (value) {
//                         setState(() {
//                           _rememberMe = value!;
//                         });
//                       },
//                     ),
//                     const Text(TTexts.rememberMe),
//                   ],
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: const Text(TTexts.forgetPassword),
//                 ),
//               ],
//             ),
//             const SizedBox(height: TSizes.spaceBtwSections),
//             // Sign-in button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.white, // Set text color
//                   backgroundColor: Colors.cyan,
//                 ),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     // Handle sign-in logic here
//                   }
//                 },
//                 child: const Text(TTexts.signIn),
//               ),
//             ),
//             const SizedBox(height: TSizes.spaceBtwItems),
//             // Create account button
//             SizedBox(
//               width: double.infinity,
//               child: OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   foregroundColor: Colors.white,
//                 ),
//                 onPressed: () {
//                   // Handle account creation logic
//                 },
//                 child: const Text(TTexts.createAccount),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// */
// /*
// class TScocialButton extends StatelessWidget {
//   const TScocialButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: TColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             onPressed: () {
//               // Handle Google sign-in logic
//             },
//             icon: const Image(
//               width: TSizes.iconMd,
//               height: TSizes.iconMd,
//               image: AssetImage(TImages.google),
//             ),
//           ),
//         ),
//         const SizedBox(width: TSizes.spaceBtwItems),
//         Container(
//           decoration: BoxDecoration(
//             border: Border.all(color: TColors.grey),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: IconButton(
//             onPressed: () {
//               // Handle Facebook sign-in logic
//             },
//             icon: const Image(
//               width: TSizes.iconMd,
//               height: TSizes.iconMd,
//               image: AssetImage(TImages.facebook),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }*/

/*
class TFormDivider extends StatelessWidget {
  const TFormDivider(
      {super.key, required this.dark, required this.dividerText});

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? TColors.darkGrey : TColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
*/









/*

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:logger/logger.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const TLoginHeader(),
              const TLoginForm(),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(TImages.lightAppLogo, height: 150),
        const SizedBox(height: 20),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: TSizes.sm),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}

class TLoginForm extends StatefulWidget {
  const TLoginForm({super.key});

  @override
  _TLoginFormState createState() => _TLoginFormState();
}

class _TLoginFormState extends State<TLoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: TTexts.email),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(labelText: TTexts.password),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Implement sign-in logic here
              }
            },
            child: const Text(TTexts.signIn),
          ),
        ],
      ),
    );
  }
}
/*
class TSocialButton extends StatelessWidget {
  const TSocialButton({super.key});

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      if (googleAuth.accessToken == null || googleAuth.idToken == null) {
        throw FirebaseAuthException(
          code: 'ERROR_MISSING_GOOGLE_AUTH_TOKEN',
          message: 'Missing Google Auth Token',
        );
      }

      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
      Get.to(() => const NavigationMenu());
    } catch (e) {
      var logger = Logger();
      logger.e("Error during Google sign-in: $e");
      Get.snackbar('Google Sign-In Error', e.toString());
    }
  }

  Future<void> _signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();

      if (result.status == LoginStatus.success) {
        final AccessToken? accessToken = result.accessToken;

        if (accessToken == null) {
          throw FirebaseAuthException(
            code: 'ERROR_MISSING_FACEBOOK_AUTH_TOKEN',
            message: 'Missing Facebook Auth Token',
          );
        }

        final OAuthCredential credential =
            FacebookAuthProvider.credential(accessToken.token);

        await FirebaseAuth.instance.signInWithCredential(credential);
        Get.to(() => const NavigationMenu());
      } else if (result.status == LoginStatus.cancelled) {
        Get.snackbar('Facebook Sign-In', 'Login Cancelled');
      } else {
        throw FirebaseAuthException(
          code: 'ERROR_FACEBOOK_LOGIN_FAILED',
          message: 'Facebook Login Failed: ${result.message}',
        );
      }
    } catch (e) {
      var logger = Logger();
      logger.e("Error during Facebook sign-in: $e");
      Get.snackbar('Facebook Sign-In Error', e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Image(
            image: AssetImage(TImages.google),
            height: 40,
          ),
          onPressed: _signInWithGoogle,
        ),
        const SizedBox(width: 20),
        IconButton(
          icon: const Image(
            image: AssetImage(TImages.facebook),
            height: 40,
          ),
          onPressed: _signInWithFacebook,
        ),
      ],
    );
  }
}
*/
*/