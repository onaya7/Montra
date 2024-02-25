import 'package:flutter/material.dart';
import 'package:montra/app/app_screen_size.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';
import 'package:montra/features/profile/presentation/widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            width: ScreenSize.maxWidth(context),
            color: ColorConstants.lightColor80,
            child: Column(
              children: <Widget>[
                ProfileHeader(
                    name: TextConstants.name,
                    imagePath: ImagePathConstants.profilePicture,
                    onPressed: () {}),
                const SizedBox(
                  height: 40,
                ),
              ],
            )));
  }
}
