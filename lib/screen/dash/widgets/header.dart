import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:website/utils/textheme.dart';

import '../controller/dashcontroller.dart';

class Header extends StatelessWidget {
  Header({Key? key}) : super(key: key);

  DashController dashController = Get.put(DashController());
  HeaderController headerController = Get.put(HeaderController());


  @override
  Widget build(BuildContext context) {
    return Container(
      child: webHeader(context),
    );
  }

  Widget mobileHeader(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("$index"),
          );
        },
        itemCount: 5,
      ),
    );
  }

  Widget webHeader(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/9/97/Mobile_Apps_Development_Company_Logo_-_Codeexceptional.png"),
                // "https://uplo  ad.wikimedia.org/wikipedia/commons/1/13/Wattpad_logo.png"),
          ),
          SizedBox(
            width: 600,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MouseRegion(
                  onHover: (event) {
                    headerController.addData(index, true);
                  },
                  onExit: (event) {
                    headerController.addData(index, false);
                  },
                  child: Obx(
                    () => GestureDetector(
                      onTap: (){
                        dashController.scrollBasedOnHeader(headerController.headerTitle[index]);
                      },
                      child: Container(
                        height: 60,
                        width: 100,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        // color: headerController.getData(index)
                        //     ? Colors.black
                        //     : Colors.transparent,
                        alignment: Alignment.center,
                        child: Text(
                          "${headerController.headerTitle[index]}",
                          style: headerTextStyle(headerController.getData(index)
                              ? Colors.blue
                              : Colors.black),
                          // style: TextStyle(
                          //     color: headerController.getData(index)
                          //         ? Colors.blue
                          //         : Colors.black),
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 5,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderController extends GetxController {
  RxBool isHover = false.obs;
  RxList hoverList = [false, false, false, false, false].obs;
  List headerTitle = ["Home", "About Us","Services", "Portfolio","Contact"];

  void addData(int index, bool hover) {
    hoverList[index] = hover;
  }

  bool getData(int index) {
    return hoverList[index];
  }
}
