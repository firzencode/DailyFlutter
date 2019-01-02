import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

class Day1Widget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Day1WidgetState();
}

class Day1WidgetState extends State<Day1Widget> {
  String sampleText = "This is sample text line";
  Timer testObj;

  int _minutes = 0;
  int _seconds = 0;
  int _milliseconds = 0;
  int _allMilliseconds = 0;

  Timer _timer;

  Day1WidgetState() {
    _timer = null;
  }

  Timer createTimer() {
    return Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
      _allMilliseconds += 1;
      print(_allMilliseconds);
      var allMilliseconds = _allMilliseconds;
      setState(() {
        _milliseconds = allMilliseconds % 1000;
        var allSeconds = allMilliseconds ~/ 1000;
        _minutes = allSeconds ~/ 60;
        _seconds = allSeconds % 60;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 普通文字
//        Text("This is text widget." + f.format(1)),
//        Text("Hello variable. $sampleText"),
//        Text("Hello text style",
//            textAlign: TextAlign.left,
//            style: TextStyle(
//                fontWeight: FontWeight.bold,
//                color: Color.fromARGB(0xff, 0x66, 0xcc, 0xff),
//                fontSize: 18)),
//        Text("This is multi line text1\nThis is multi line text2"),
//        Image.asset("assets/landscape-3779159_640.jpg"),
        Image.asset("assets/rail-3678287_640.jpg", width: 300),
        Image.network(
            "https://www.google.com/logos/doodles/2018/the-geminid-meteor-shower-2018-5112685963247616.2-s.png"),
//        Text(_minutesFormat.format(_minutes) +
//            ":" +
//            _secondsFormat.format(_seconds) +
//            "." +
//            _millisecondsFormat.format(_milliseconds / 100)),
        Text(_minutes.toString().padLeft(2, '0') +
            ":" +
            _seconds.toString().padLeft(2, '0') +
            "." +
            (_milliseconds ~/ 10).toString().padLeft(2, '0')),
        RaisedButton(
          child: const Text("Start"),
          onPressed: () {
            if (_timer != null) {
              _timer.cancel();
            }
            _timer = createTimer();
          },
        ),
        RaisedButton(
          child: const Text("Pause"),
          onPressed: () {
            if (_timer != null) {
              _timer.cancel();
            }
          },
        ),
        RaisedButton(
          child: const Text("Reset"),
          onPressed: () {
            setState(() {
              if (_timer != null) {
                _timer.cancel();
              }
              _allMilliseconds = 0;
              _milliseconds = 0;
              _seconds = 0;
              _minutes = 0;
            });
          },
        )

//        RaisedButton(
//          child: const Text('Test Raised Button'),
//          onPressed: () {
//            print("xxx");
//            testObj.cancel();
//          },
//        ),
//        FlatButton(
//          child: const Text('Another Flat Button'),
//          onPressed: () {
//            print("flat button");
//            testObj =
//                Timer.periodic(Duration(milliseconds: 100), (Timer timer) {
//              print(timer.tick);
//              print(testObj.hashCode);
//              print(timer.hashCode);
//              setState(() {
//                sampleText = "time: ${timer.tick}";
//              });
//              if (timer.tick >= 100) {
//                timer.cancel();
//              }
//            });
//          },
//        ),
      ],
    );
  }
}

//Future<String> delayAndReturn() {
//  return Future.delayed(Duration(seconds: 2)).then((onValue) {
////    return new Future(() {
////      print("hhhhhhh");
////    });
//    print("hhhhh");
//  });
//}
//
//const timeout = const Duration(seconds: 3);
