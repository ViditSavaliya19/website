import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/utils/size.dart';
import 'package:website/utils/textheme.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "What i Do?",
            style: GoogleFonts.josefinSans(
              textStyle: TextStyle(
                  fontSize: 35,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          H(50),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      servicesLable(
                          "Android App Development",
                          "https://cdn-icons-png.flaticon.com/512/226/226770.png",
                          Colors.green),
                      W(20),
                      servicesLable(
                          "Flutter App Development",
                          "https://cdn-icons-png.flaticon.com/512/731/731985.png",
                          Colors.black),
                      W(20),
                      servicesLable(
                          "Web Development",
                          "https://cdn-icons-png.flaticon.com/512/1336/1336637.png",
                          Colors.blue),
                      W(20),
                      servicesLable(
                          "Github Open Source",
                          "https://cdn-icons-png.flaticon.com/512/59/59118.png",
                          Colors.orangeAccent),
                    ],
                  ),
                  H(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 50,width: 50,child: Image.network("https://cdn-icons-png.flaticon.com/512/2490/2490419.png",color: Colors.amber.shade200,)),
                            W(20),
                            Text(
                              "Learn",
                              style: headerTextStyle(
                                Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 50,width: 50,child: Image.network("https://cdn-icons-png.flaticon.com/512/1087/1087927.png",color: Colors.amber.shade200,)),
                            W(20),
                            Text(
                              "Development",
                              style: headerTextStyle(
                                Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 50,width: 50,child: Image.network("https://cdn-icons-png.flaticon.com/512/888/888034.png",color: Colors.amber.shade200,)),
                            W(20),
                            Text(
                              "CashStudy",
                              style: headerTextStyle(
                                Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget servicesLable(String title, String path, Color color) {
    return Container(
      height: 200,
      width: 200,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey.shade50, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 80,
              width: 80,
              child: Image.network(
                path,
                color: color,
              )),
          H(20),
          Text(
            "$title",
            style: headerTextStyle(
              Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
