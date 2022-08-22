import 'package:flutter/material.dart';
import 'package:website/utils/size.dart';
import 'package:website/utils/string.dart';
import 'package:website/utils/textheme.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Me",
                style: titleTextStyle(Colors.blue, 50),
              ),
              H(20),
              Text(
                "I Am Jay Flutter & Game Developer & Speaker",
                style: titleTextStyle(Colors.black, 30),
              ),
              H(20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Text(
                  aboutme_txt,
                  style: simpleTextStyle(Colors.black38, 15),
                ),
              ),
              H(30),
              Text(
                "Technology I have worked with",
                style: simpleTextStyle(Colors.black, 18),
              ),
              H(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterLogo(),
                          Text(
                            "Flutter",
                            style: simpleTextStyle(Colors.black, 15),
                          )
                        ],
                      ),
                      height: 35,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey.shade200),
                    ),
                    W(10),
                    techLable("assets/images/android_icon.png","Android"),
                    W(10),
                    techLable("assets/images/java.png","Java"),
                    W(10),
                    techLable("assets/images/kotlin_icon.png","Kotlin"),
                    W(10),
                    techLable("assets/images/dart_icon.png","Dart"),
                  ],
                ),
              ),
            ],
          ),
          W(MediaQuery.of(context).size.width * 0.1),
          SizedBox(
            height: 500,
            width: 500,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 10,
              shadowColor: Colors.blue.shade300,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdni.iconscout.com/illustration/premium/thumb/edit-social-media-profile-5295893-4412910.png"),
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget techLable(String path,String name) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              height: 35,
              width: 35,
              child: Image.asset("$path")),
          W(10),
          Text(
            "$name",
            style: simpleTextStyle(Colors.black, 15),
          )
        ],
      ),
      height: 35,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.grey.shade200),
    );
  }
}
