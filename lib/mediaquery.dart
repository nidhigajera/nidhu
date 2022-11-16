import 'package:flutter/material.dart';

class media extends StatefulWidget {
  const media({Key? key}) : super(key: key);

  @override
  State<media> createState() => _mediaState();
}

class _mediaState extends State<media> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double appbarheight=kToolbarHeight;
    double statusbarheight =MediaQuery.of(context).padding.top;
    double bottombarheight =MediaQuery.of(context).padding.bottom;
    double bodyheight = height-appbarheight-statusbarheight-bottombarheight;

    print("w=$widget");
    print("h=$height");

    return Scaffold(
      appBar: AppBar(title: Text("mediaquery"),),
      body: Row(
        children: [
          Container(
            height: bodyheight*0.2,
            width: width*0.5,
            color: Colors.orange,
          ),
          Container(
            height: bodyheight*0.8,
            width: width*0.5,
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
