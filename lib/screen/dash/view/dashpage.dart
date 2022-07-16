
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:website/screen/dash/controller/dashcontroller.dart';
import 'package:website/screen/dash/widgets/home.dart';

import '../widgets/aboutme.dart';
import '../widgets/header.dart';

class Dash extends StatefulWidget {
  const Dash({Key? key}) : super(key: key);

  @override
  State<Dash> createState() => _DashState();
}

class _DashState extends State<Dash> {

  DashController dashController = Get.put(DashController());



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [

            SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Home(key: dashController.homeKey),
                    AboutMe(key: dashController.aboutKey),

                  ],
                ),
              ),
            ),
            Header(),

          ],
        )
      ),
    );
  }
}
