import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class check extends StatelessWidget {
  const check({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller c = Get.put(controller());
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox"),),
      body:  Column(
        children: [
          Obx(() => CheckboxListTile(title: Text("Mouse Rs.250"),onChanged: <bool>(value) {
            c.chekbox(1, 250, value);

          },value: c.t3.value,),),
          Obx(() => CheckboxListTile(title: Text("Mouse Rs.500"),onChanged: <bool>(value) {
            c.chekbox(2, 500, value);

          },value: c.t4.value,),),
          Obx(() => CheckboxListTile(title: Text("Mouse Rs.400"),onChanged: <bool>(value) {
            c.chekbox(3, 400, value);

          },value: c.t5.value,),),
          Obx(() => Text("Total Price : ${c.amt}",style: TextStyle(fontSize: 20),),),
        ],
      ),
    );
  }
}
