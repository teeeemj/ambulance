import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/core/config/app_colors.dart';
import 'package:lesson1/core/config/app_consts.dart';
import 'package:lesson1/core/config/app_fonts.dart';
import 'package:lesson1/core/config/routes/app_router.dart';
import 'package:lesson1/modules/authorization/presentations/widgets/info_text_row.dart';
import 'package:shared_preferences/shared_preferences.dart';

@RoutePage()
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Профиль',
            style: AppFonts.s17w600.copyWith(
              color: AppColor.appBarColor,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: AppColor.appBarColor,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 18),
            Text(
              'Зачем нужен профиль?',
              style: AppFonts.s22w500.copyWith(
                color: AppColor.textColor,
              ),
            ),
            const SizedBox(height: 25),
            const InfoTextRow(
              image: AssetImage('assets/images/pngs/hospital.png'),
              text: 'Записывайтесь на прием к самым лучшим специалистам',
            ),
            const SizedBox(height: 30),
            const InfoTextRow(
              image: AssetImage('assets/images/pngs/clipboard.png'),
              text:
                  'Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку',
            ),
            const SizedBox(height: 30),
            const InfoTextRow(
              image: AssetImage('assets/images/pngs/speech.png'),
              text:
                  'Просматривайте отзывы о врачах и дополняйте собственными комментариями',
            ),
            const SizedBox(height: 30),
            const InfoTextRow(
              image: AssetImage('assets/images/pngs/bellhop.png'),
              text:
                  'Получайте уведомления о приеме или о поступивших сообщениях',
            ),
            const SizedBox(height: 20),
            AppButton(
              title: 'Войти',
              onPressed: () async {
                context.router.push(
                  const LoginRoute(),
                );
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setBool(
                  AppConsts.isFirstEnter,
                  false,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

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
