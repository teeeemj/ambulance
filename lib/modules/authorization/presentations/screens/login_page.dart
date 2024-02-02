import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lesson1/core/config/app_colors.dart';
import 'package:lesson1/core/config/app_consts.dart';
import 'package:lesson1/core/config/app_fonts.dart';
import 'package:lesson1/core/config/routes/app_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../widgets/app_button.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();
  int code = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(),
        ),
        elevation: 3,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: AppColor.appBarColor.withOpacity(
              0.54,
            ),
          ),
        ),
        title: const Text(
          'Вход',
          style: AppFonts.s17w600,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Войти',
              style: AppFonts.s34w700,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Номер телефона',
              style: AppFonts.s15w400,
            ),
            TextField(
              inputFormatters: [
                MaskTextInputFormatter(
                  mask: '### ## ## ##',
                ),
              ],
              style: AppFonts.s17w600,
              keyboardType: TextInputType.phone,
              controller: controller,
              decoration: const InputDecoration(
                prefix: Text(
                  '0',
                  style: AppFonts.s17w600,
                ),
                hintText: '___ __ __ __',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.appBarColor,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'На указанный вами номер придет однократное СМС-сообщение с кодом подтверждения.',
              style: AppFonts.s15w400,
            ),
            const Spacer(),
            AppButton(
              onPressed: () async {
                const storage = FlutterSecureStorage();
                await storage.write(
                    key: AppConsts.phone, value: controller.text);
                print('${await storage.read(key: AppConsts.phone)}');

                code = Random().nextInt(8999) + 1000;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      code.toString(),
                    ),
                  ),
                );
                context.router.push(
                  ConfirmRoute(
                    code: code,
                  ),
                );
              },
              title: 'Далее',
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
