import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:website/utils/size.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: Stack(
        children: [
          Image.asset("assets/images/bg_home.jpeg",fit: BoxFit.cover,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile App Developer",
                        style: GoogleFonts.josefinSans(
                            fontSize: 30, color: Colors.blue)),
                    H(20),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          "FLUTTER & ANDROID",speed: Duration(milliseconds: 100),cursor: "_",
                          textStyle: GoogleFonts.josefinSans(
                              fontSize: 60,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                      isRepeatingAnimation: true,
                    ),

                    // Text("FLUTTER & ANDROID",
                    //     style: GoogleFonts.josefinSans(
                    //         fontSize: 60,
                    //         color: Colors.black,
                    //         fontWeight: FontWeight.bold)),
                    H(20),
                    Text("Android & Flutter Developer at Surat",
                        style: GoogleFonts.josefinSans(
                            fontSize: 18, color: Colors.grey)),
                    H(20),

                    SizedBox(
                        height: 40,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Let's Talk"),
                        ))
                  ],
                ),
              ),
              W(MediaQuery.of(context).size.width * 0.1),
              Container(
                // height: MediaQuery.of(context).size.height * 0.7,
                // width: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset(
                  "assets/images/welcome_section.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
