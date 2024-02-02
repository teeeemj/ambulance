import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_fonts.dart';

class ProfileTextField extends StatelessWidget {
  final String title;
  final String hinttext;
  const ProfileTextField(
      {super.key,
      required this.nameController,
      required this.title,
      required this.hinttext});

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.s15w400.copyWith(
              color: AppColor.textColor,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle:
                  AppFonts.s17w400.copyWith(color: AppColor.hintTxtColor),
              enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.underlineColor,
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: AppColor.underlineColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
