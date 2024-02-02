import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lesson1/core/config/app_colors.dart';
import 'package:lesson1/core/config/app_fonts.dart';
import 'package:lesson1/core/config/routes/app_router.dart';

import '../widgets/app_button.dart';

@RoutePage()
class ConfirmPage extends StatefulWidget {
  const ConfirmPage({
    super.key,
    required this.code,
  });

  final int code;
  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  String? errorText;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(),
        ),
        leading: IconButton(
          onPressed: () {
            context.router.pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColor.arrowBackColor,
          ),
        ),
        title: Text(
          'Подтверждение номера',
          style: AppFonts.s17w600.copyWith(
            color: AppColor.textColorBlack,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Text(
                'Введите код из смс',
                style: AppFonts.s22w500.copyWith(
                  color: AppColor.textColor,
                ),
              ),
              const SizedBox(height: 143),
              Row(
                children: [
                  Text(
                    'Код',
                    style: AppFonts.s18w600.copyWith(
                      color: AppColor.textColor,
                    ),
                  ),
                  const SizedBox(width: 86),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [LengthLimitingTextInputFormatter(4)],
                      decoration: InputDecoration(
                        errorText: errorText,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 101,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),
              const Divider(
                color: AppColor.dividerColor,
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Получить код повторно',
                  style: AppFonts.s15w400.copyWith(
                    color: AppColor.getCodeAgainColor,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.getCodeAgainColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 85,
              ),
              AppButton(
                  onPressed: () async {
                    errorText = null;
                    print(
                        'Entered code: ${controller.text}, Expected code: ${widget.code}');
                    if (controller.text == '${widget.code}') {
                      await context.router.push(UserCreateRoute());
                    } else {
                      errorText = 'error';
                      setState(() {});
                    }
                  },
                  title: 'Далее')
            ],
          ),
        ),
      ),
    );
  }
}
