import 'package:flutter/material.dart';

class Day1Widget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Day1WidgetState();
  }
}

class Day1WidgetState extends State<Day1Widget> {
  String sampleText = "This is sample text line";
  ImageProvider imageProvider = ImageProvider()
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 普通文字
        Text("This is text widget."),
        Text("Hello variable. $sampleText"),
        Text("Hello text style",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(0xff, 0x66, 0xcc, 0xff),
                fontSize: 18)),
        Text("This is multi line text1\nThis is multi line text2"),
        Image.asset("assets/landscape-3779159_640.jpg"),
        Image.asset("assets/rail-3678287_640.jpg", width: 300),
        Image.network("https://www.google.com/logos/doodles/2018/the-geminid-meteor-shower-2018-5112685963247616.2-s.png"),
        Image()
      ],
    );
  }
}
