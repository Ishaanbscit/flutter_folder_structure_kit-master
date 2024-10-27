import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/text/section_heading.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/features/authentication/screen/Widgets/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = 'Coding with ISHAAN';
  String userName = 'Coding with ItRanker';
  String userId = '45689';
  String email = 'coding_with_itranker@gmail.com';
  String phoneNumber = '821045678';
  String gender = 'Male';
  String dateOfBirth = '10 Oct 2000';

  void _editProfileInfo(String field) {
    setState(() {
      if (field == 'name') name = 'New Name';
      if (field == 'username') userName = 'New UserName';
      if (field == 'email') email = 'new_email@example.com';
      // Add similar updates for other fields...
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200, // Set height as per your requirement
                      child: TPrimaryHeaderContainer(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TCircularImage(
                              image: TImages.user,
                              width: 80,
                              height: 80,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text('Change Profile Picture'),
                            ),
                            const SizedBox(height: TSizes.defaultSpace),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems / 2),
                    const Divider(
                        color: Colors.black), // Changed divider color to black
                    const SizedBox(height: TSizes.spaceBtwItems),
                    TSectionHeading(
                      title: 'Profile Information',
                      showActionButton: false,
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('name'),
                      title: 'Name',
                      value: name,
                      icon: Iconsax.user,
                    ),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('username'),
                      title: 'Username',
                      value: userName,
                      icon: Iconsax.user1,
                    ),
                    TSectionHeading(
                      title: 'Personal Information',
                      showActionButton: false,
                      onPressed: () {},
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const Divider(
                        color: Colors.black), // Changed divider color to black
                    const SizedBox(height: TSizes.spaceBtwItems),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('userId'),
                      title: 'User ID',
                      value: userId,
                      icon: Iconsax.copy,
                    ),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('email'),
                      title: 'E-mail',
                      value: email,
                      icon: Iconsax.message,
                    ),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('phoneNumber'),
                      title: 'Phone Number',
                      value: phoneNumber,
                      icon: Iconsax.call,
                    ),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('gender'),
                      title: 'Gender',
                      value: gender,
                      icon: Iconsax.grid_35,
                    ),
                    TProflieMenu(
                      onPressed: () => _editProfileInfo('dob'),
                      title: 'Date of Birth',
                      value: dateOfBirth,
                      icon: Iconsax.calendar,
                    ),
                    const Divider(
                        color: Colors.black), // Changed divider color to black
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Close Account',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
