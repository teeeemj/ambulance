import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lesson1/core/config/app_colors.dart';
import 'package:lesson1/core/config/app_consts.dart';
import 'package:lesson1/core/config/app_fonts.dart';
import 'package:lesson1/core/config/routes/app_router.dart';
import 'package:lesson1/modules/authorization/presentations/widgets/app_button.dart';

import '../widgets/profile_textfield.dart';

@RoutePage()
class UserCreateScreen extends StatelessWidget {
  const UserCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController surnameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: Icon(
            Icons.close,
            color: AppColor.textColorBlack.withOpacity(0.54),
          ),
        ),
        title: Text(
          'Создание профиля',
          style: AppFonts.s17w600.copyWith(
            color: AppColor.textColorBlack,
          ),
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 31,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 34),
            ProfileTextField(
              nameController: nameController,
              title: 'Имя',
              hinttext: 'Введите ваше имя',
            ),
            const SizedBox(height: 32),
            ProfileTextField(
              nameController: surnameController,
              title: 'Фамилия',
              hinttext: 'Введите вашу фамилию',
            ),
            const SizedBox(height: 149),
            AppButton(
              onPressed: () async {
                final storage = FlutterSecureStorage();
                await storage.write(
                  key: AppConsts.name,
                  value: nameController.text,
                );
                await storage.write(
                  key: AppConsts.surname,
                  value: surnameController.text,
                );
                context.router.push(ProfRoute());
              },
              title: 'Далее',
            ),
          ],
        ),
      ),
    );
  }
}
