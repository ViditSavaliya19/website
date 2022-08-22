import 'package:flutter/material.dart';
import 'package:website/utils/size.dart';
import 'package:website/utils/textheme.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          contactItem(Icons.location_on,"Gujarat"),
          H(20),
          contactItem(Icons.call,"+919924368553"),
          H(20),
          contactItem(Icons.email,"jay@gmail.com"),
          H(20),
          contactItem(Icons.whatsapp,"+919924368553"),
        ],
      ),
    );
  }

  Widget contactItem(IconData whatsapp,String data) {
    return Container(
      width: 200,
      height: 100,
      padding:EdgeInsets.only(left: 10,right: 10),
      color: Color(0xffeeeeee),
      alignment: Alignment.center,
      child: Row(
        children: [
          Icon(whatsapp,color: Colors.blue),
          W(10),
          Text("$data",style: headerTextStyle(Colors.black)),
        ],
      ),
    );
  }
}
