import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lesson1/core/config/app_colors.dart';
import 'package:lesson1/core/config/app_consts.dart';
import 'package:lesson1/core/config/app_fonts.dart';

@RoutePage()
class ProfScreen extends StatefulWidget {
  const ProfScreen({super.key});

  @override
  State<ProfScreen> createState() => _ProfScreenState();
}

class _ProfScreenState extends State<ProfScreen> {
  String? name;
  String? surname;
  String? phone;
  File? image;

  Future<void> getDataFromStorage() async {
    const storage = FlutterSecureStorage();
    name = await storage.read(key: AppConsts.name);
    surname = await storage.read(key: AppConsts.surname);
    phone = await storage.read(key: AppConsts.phone);
    setState(() {});
  }

  @override
  void initState() {
    getDataFromStorage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Мой профиль',
                    style: AppFonts.s34w700.copyWith(
                      color: AppColor.textColor,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    iconSize: 24,
                    onPressed: () {},
                    icon: const Icon(Icons.settings_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColor.circleAvatarColor,
                    backgroundImage: image != null
                        ? Image.file(image!, fit: BoxFit.cover).image
                        : null,
                    child: image == null
                        ? Text(
                            '${name?[0] ?? ''} ${surname?[0] ?? ''}',
                            style: AppFonts.s40w500.copyWith(
                              color: AppColor.textColorWhite,
                            ),
                          )
                        : null,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: AppColor.buttonBGColor,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () async {
                          final ImagePicker picker = ImagePicker();
                          final pickedImage = await picker.pickImage(
                            source: ImageSource.gallery,
                          );

                          try {
                            image = File(pickedImage!.path);
                            setState(() {});
                          } catch (e) {
                            log('error');
                          }
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          color: AppColor.textColorWhite,
                          size: 16,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '$name $surname',
                style: AppFonts.s22w500.copyWith(color: AppColor.textColor),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '$phone',
                style: AppFonts.s18w400.copyWith(
                  color: AppColor.textColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
