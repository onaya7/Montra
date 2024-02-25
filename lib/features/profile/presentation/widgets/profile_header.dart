import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/core/constants/text_constants.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String imagePath;
  final void Function()? onPressed;

  const ProfileHeader({
    required this.name,
    required this.imagePath,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              name,
              style: const TextStyle(
                color: ColorConstants.lightColor20,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(
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
                    ColorConstants.darkColor50, BlendMode.srcIn)),
            onPressed: onPressed),
      ]),
    );
  }
}
