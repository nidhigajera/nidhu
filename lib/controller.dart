import 'package:flutter/material.dart';
import 'package:get/get.dart';

class controller extends GetxController
{
  RxInt ans = 0.obs;
  RxDouble v= 2.0.obs;
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  RxBool t3 = false.obs;
  RxBool t4 = false.obs;
  RxBool t5 = false.obs;
  RxInt amt = 0.obs;

  void sum (String a,String b)
  {
     ans.value = int.parse(a)+int.parse(b);
  }

  void change(double val)
  {
    v.value=val;
  }

  void chekbox(int i,int price,bool value)
  {
    switch(i)
    {
      case 1:
        t3.value=value;
        if(t3==true){
          amt = amt + price;
        }
        else{
          amt = amt -price;
        }
        break;
      case 2:
        t4.value=value;
        if(t4==true){
          amt = amt + price;
        }
        else{
          amt = amt - price;
        }
        break;

      case 3:
        t5.value=value;
        if(t5==true){
          amt = amt + price;
        }
        else{
          amt = amt - price;
        }
    }

  }
}