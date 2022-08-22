import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:website/screen/dash/controller/dashcontroller.dart';
import 'package:website/utils/size.dart';
import 'package:website/utils/textheme.dart';

class Protfolio extends StatelessWidget {
  Protfolio({Key? key}) : super(key: key);

  DashController dashController = Get.put(DashController());

  List link = [
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://miro.medium.com/max/1400/1*gb6jatf_ObbxCfj0HyCodw.png",
    "https://ecommerce-platforms.com/wp-content/uploads/2015/06/hubspot-mobile.jpg",
    "https://dafq4moetmy65.cloudfront.net/cdn/ff/Eg62YpDyUTjFuwPZugmXwW2AuBBIQY18W4APhFDvI2M/1527234016/public/2018-05/main_10.jpg",
    "https://miro.medium.com/max/1400/1*gb6jatf_ObbxCfj0HyCodw.png",
    "https://ecommerce-platforms.com/wp-content/uploads/2015/06/hubspot-mobile.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    dashController.dataList.addAll(dashController.androidList);
    return Container(
      height: 800,
      width: MediaQuery.of(context).size.width * 0.8,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Portfolio",
            style: titleTextStyle(Colors.black, 50),
          ),
          H(20),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width * 0.28,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Obx(
                      () => tabContainer(dashController.color[0], "Android")),
                  onTap: () {
                    dashController.color[0] = Colors.greenAccent;
                    dashController.color[1] = Colors.transparent;
                    dashController.color[2] = Colors.transparent;

                    dashController.showProtfolio(0);
                  },
                ),
                W(20),
                GestureDetector(
                    onTap: () {
                      dashController.color[0] = Colors.transparent;
                      dashController.color[1] = Colors.greenAccent;
                      dashController.color[2] = Colors.transparent;
                      dashController.showProtfolio(1);
                    },
                    child: Obx(() =>
                        tabContainer(dashController.color[1], "Flutter"))),
                W(20),
                GestureDetector(
                    onTap: () {
                      dashController.color[0] = Colors.transparent;
                      dashController.color[1] = Colors.transparent;
                      dashController.color[2] = Colors.greenAccent;
                      dashController.showProtfolio(2);
                    },
                    child: Obx(
                        () => tabContainer(dashController.color[2], "Web"))),
              ],
            ),
          ),
          H(20),
          Container(
            width: 900,
            height: 600,
            child: Obx(
              () => GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: dashController.dataList.length,
                itemBuilder: (context, index) {
                  return MouseRegion(
                    onHover: (event) {
                      dashController.isHover.value = true;
                      dashController.isAnimat.value = 1;
                    },
                    onExit: (event) {
                      dashController.isHover.value = false;
                      dashController.isAnimat.value = 0;
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      alignment: Alignment.center,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.network(
                            "${dashController.dataList[index]}",
                            fit: BoxFit.cover,
                            height: 300,
                            width: 300,
                          ),
                          FlutterLogo(size: 100),
                          Obx(
                            () => AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              height:
                                  dashController.isAnimat.value == 0 ? 0 : 50,
                              width: 150,
                              alignment: Alignment.center,
                              child: Visibility(
                                visible: dashController.isAnimat.value == 0
                                    ? false
                                    : true,
                                child: Text(
                                  "Show More",
                                  style: TextStyle(
                                      color: dashController.isHover.value
                                          ? Colors.white
                                          : Colors.transparent,
                                      fontSize: 20),
                                ),
                              ),
                              color: dashController.isHover.value
                                  ? Colors.black54
                                  : Colors.transparent,
                            ),
                          ),
                        ],
                      ),
                      color: Colors.grey,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tabContainer(Color bgcolor, String text) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      child: Text(
        "$text",
        style: headerTextStyle(
          Colors.black,
        ),
      ),
    );
  }
}
// SizedBox(
//   height: 600,
//   child: GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 3,
//         childAspectRatio: 2,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20),
//     itemCount: link.length,
//     itemBuilder: (context, index) {
//       // return Container(
//       //   height: 100,
//       //   width: 100,
//       //   color: Colors.black,
//       // );
//
//       return Container(
//         padding: EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//           boxShadow: [
//             BoxShadow(color: Colors.red.shade50,spreadRadius: 2,blurRadius: 5,blurStyle: BlurStyle.outer,),
//           ]
//         ),
//         alignment: Alignment.center,
//         child: Stack(
//           alignment: Alignment.centerRight,
//           children: [
//             SizedBox(
//                 height: 200,
//                 width: 400,
//                 child: Image.network(link[index],
//                     fit: BoxFit.fill)),
//             Container(
//               height: 200,
//               width: 200,
//               decoration: BoxDecoration(
//                   color: Color(0xFF007DA8),
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     bottomLeft: Radius.circular(30),
//                   )),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Title",
//                     style: titleTextStyle(Colors.white, 50),
//                   ),
//                   Text(
//                     "Title",
//                     style: titleTextStyle(Colors.white, 25),
//                   ),
//                   Text(
//                     "20/07/2022",
//                     style: titleTextStyle(Colors.white, 18),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   ),
// ),
