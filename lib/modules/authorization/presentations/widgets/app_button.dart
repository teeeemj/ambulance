import 'package:flutter/material.dart';

import '../../../../core/config/app_colors.dart';
import '../../../../core/config/app_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              8,
            )),
          ),
          padding: MaterialStateProperty.all(
            const EdgeInsets.only(
              left: 121,
              top: 17,
              right: 123,
              bottom: 16,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(AppColor.buttonBGColor),
        ),
        child: Text(
          title,
          style: AppFonts.s18w600.copyWith(
            color: AppColor.textButtonColor,
          ),
        ),
      ),
    );
  }
}
