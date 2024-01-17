import 'package:flutter/material.dart';
import 'package:lesson1/core/config/app_colors.dart';
import 'package:lesson1/core/config/app_fonts.dart';

class InfoTextRow extends StatelessWidget {
  final AssetImage image;
  final String text;
  const InfoTextRow({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          height: 32,
          width: 32,
          image: image,
        ),
        const SizedBox(width: 18),
        Text(
          text,
          style: AppFonts.s15w400.copyWith(color: AppColor.textColor),
        )
      ],
    );
  }
}
