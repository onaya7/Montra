import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
                child: SizedBox(
                  height: 100,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image:
                                  AssetImage(ImagePathConstants.profilePicture),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              TextConstants.username,
                              style: TextStyle(
                                color: ColorConstants.lightColor20,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              TextConstants.name,
                              style: TextStyle(
                                color: ColorConstants.darkColor75,
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        IconButton(
                            icon: SvgPicture.asset(ImagePathConstants.edit,
                                fit: BoxFit.contain,
                                height: 32,
                                width: 32,
                                colorFilter: const ColorFilter.mode(
                                    ColorConstants.darkColor50,
                                    BlendMode.srcIn)),
                            onPressed: onPressed),
                      ]),
                ))));
  }

  void onPressed() {
    debugPrint(' button pressed');
  }
}
