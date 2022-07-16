import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashController extends GetxController {
  final contactKey = GlobalKey();
  final portfolioKey = GlobalKey();
  final servicesKey = GlobalKey();
  final aboutKey = GlobalKey();
  final homeKey = GlobalKey();




  Future _scroll(BuildContext? context) async {
    if (context != null) {
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
  }

  scrollBasedOnHeader(String nameOnTap) {
    if (nameOnTap == "Contact") {
    } else if (nameOnTap == "Home") {
      _scroll(homeKey.currentContext);
    } else if (nameOnTap == "Services") {
    } else if (nameOnTap == "Portfolio") {
    } else if (nameOnTap == "About") {
      _scroll(aboutKey.currentContext);
    } else if (nameOnTap == "Blog") {
    }
  }
}
