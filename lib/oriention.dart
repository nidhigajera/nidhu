import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class oriention extends StatefulWidget {
  const oriention({Key? key}) : super(key: key);

  @override
  State<oriention> createState() => _orientionState();
}

class _orientionState extends State<oriention> {
  @override
  void initState()
  {
    super.initState();
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeLeft,
        ]);
  }
  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder:  (context, orientation) {
      print(orientation);
      if(orientation==Orientation.landscape)
        {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
          );
        }
      else
        {
          return Scaffold(
            appBar: AppBar(),
            body: Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
          );
        }
    },);
  }
}
