import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zomatomenu/zcondi.dart';

void main() {
  runApp(GetMaterialApp(
    home: getm(),
  ));
}

class getm extends StatelessWidget {
  model m = Get.put(model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Menu Bar"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
         Container(
           child:  Column(
             children: [
               Obx(() => CheckboxListTile(
                 title: Text(
                   "Tomato 50",
                   style: TextStyle(fontSize: 20),
                 ),
                 value: m.check1.value,
                 onChanged: (val1) {
                   m.checm1(val1);
                 },
               )),
               Obx(() => CheckboxListTile(
                 title: Text(
                   "potato 60",
                   style: TextStyle(fontSize: 20),
                 ),
                 value: m.check2.value,
                 onChanged: (val2) {
                   m.checm2(val2);
                 },
               )),
               Obx(() => CheckboxListTile(
                 title: Text(
                   "Brinjal 400",
                   style: TextStyle(fontSize: 20),
                 ),
                 value: m.check3.value,
                 onChanged: (val3) {
                   m.checm3(val3);
                 },
               )),
             ],
           ),
         ),
          SizedBox(height: 50,),
          Obx(() => Container(
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(width: 2,color: Colors.deepOrangeAccent)
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('${m.ans}'),
                ElevatedButton(onPressed: () {
                  Get.snackbar('${m.ans}', 'your total bill',snackPosition: SnackPosition.BOTTOM);
                }, child: Text('Total Bill'))
              ],
            ),
          )
          )
        ],
      ),
    );
  }
}
