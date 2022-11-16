import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grtx/checkbox.dart';
import 'package:grtx/controller.dart';
import 'package:grtx/mediaquery.dart';
import 'package:grtx/oriention.dart';

void main() {
  runApp(MaterialApp(
    home: check(),
  ));
}
class first extends StatelessWidget {
controller c = Get.put(controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GETX METHOD"),),
      body: Column(
        children: [
          TextField(controller: c.t1,),
          TextField(controller: c.t2,),
          ElevatedButton(onPressed: () {
            String a = c.t1.text;
            String b = c.t1.text;
            c.sum(a, b);
          }, child: Text("sum")),
          Obx(() => Text("sum = ${c.ans}")),
        ],
      ),
    );
  }
}

class slider extends StatefulWidget {
  const slider({Key? key}) : super(key: key);

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  
  controller c=Get.put(controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(() => Slider(onChanged: (value) {
            c.change(value);
          },value: c.v.value,
          max: 10,
          min: 1,)),
          Obx(() => Text("value =${c.v}"))
        ],
      ),
    );
  }
}


