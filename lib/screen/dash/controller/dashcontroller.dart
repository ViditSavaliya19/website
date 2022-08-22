import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashController extends GetxController {
  final contactKey = GlobalKey();
  final portfolioKey = GlobalKey();
  final servicesKey = GlobalKey();
  final aboutKey = GlobalKey();
  final homeKey = GlobalKey();

  // portfolio
  RxList<Color> color =
      RxList([Colors.greenAccent, Colors.transparent, Colors.transparent]);
  RxBool isHover = false.obs;
  RxInt isAnimat = 0.obs;

  // Flutter List

  RxList<String> flutterList = RxList([
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
  ]);
  RxList<String> androidList = RxList([
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
  ]);
  RxList<String> webList = RxList([
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
  ]);
  RxList<String> dataList = RxList([]);

  void showProtfolio(int index) {
    dataList.clear();
    switch (index) {
      case 0:
        dataList.addAll(androidList);
        break;
      case 1:
        dataList.addAll(flutterList);
        break;
      case 2:
        dataList.addAll(webList);
        break;
    }
  }

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
      _scroll(contactKey.currentContext);
    } else if (nameOnTap == "Home") {
      _scroll(homeKey.currentContext);
    } else if (nameOnTap == "Services") {
      _scroll(servicesKey.currentContext);
    } else if (nameOnTap == "Portfolio") {
      _scroll(portfolioKey.currentContext);
    } else if (nameOnTap == "About Us") {
      _scroll(aboutKey.currentContext);
    }
  }
}
