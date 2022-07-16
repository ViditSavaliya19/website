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
                width: MediaQuery.of(context).size.width*0.3,
                child: Text(
                  aboutme_txt,
                  style: titleTextStyle(Colors.black38  , 18),
                ),
              )
            ],
          ),
          W(MediaQuery.of(context).size.width * 0.1),
          SizedBox(
            height: 500,
            width: 500,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
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
}
