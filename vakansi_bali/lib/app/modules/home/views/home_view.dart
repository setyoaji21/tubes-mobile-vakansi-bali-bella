import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vakansi_bali/app/view/components/basic_button.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Vakansi Bali',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              BasicButton(
                text: 'Logout',
                onPressed: () => Get.offAllNamed(Routes.LOGIN),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
