import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zometobill_getx/model.dart';

class first extends StatelessWidget {

  model m = Get.put(model());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: Colors.black87,
        title:Text("Fruits-Bill",style: TextStyle(fontSize: 30),),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child:CircleAvatar(
                    backgroundImage: AssetImage("my_image/fruits.jpg"),
                  )
              ),
              Obx(() => CheckboxListTile(
                  activeColor: Colors.black,
                  title: Text("Mango"),
                  subtitle: Text("price: 250/-"),
                  onChanged: (value) {
                    m.t.value = value!;
                    if (value == true) {
                      m.total = m.total + 250;
                    } else {
                      m.total = m.total - 250;
                    }
                  },
                  value: m.t.value
              ),),
             Obx(() =>  CheckboxListTile(
                 activeColor: Colors.black,
                 title: Text("Apple"),
                 subtitle: Text("price: 100/-"),
                 onChanged: (value) {
                   m.t1.value = value!;
                   if (value == true) {
                     m.total = m.total + 100;
                   } else {
                     m.total = m.total - 100;
                   }
                 },
                 value: m.t1.value
             ),),
              Obx(() => CheckboxListTile(
                  activeColor: Colors.black,
                  title: Text("Orange"),
                  subtitle: Text("price: 220/-"),
                  onChanged: (value) {
                    m.t2.value = value!;
                    if (value == true) {
                      m.total = m.total + 220;
                    } else {
                      m.total = m.total - 220;
                    }
                  },
                  value: m.t2.value
              ),),
             Obx(() =>  CheckboxListTile(
                 activeColor: Colors.black,
                 title: Text("Kiwi"),
                 subtitle: Text("price: 150/-"),
                 onChanged: (value) {
                   m.t3.value = value!;
                   if (value == true) {
                     m.total = m.total + 150;
                   } else {
                     m.total = m.total - 150;
                   }
                 },
                 value: m.t3.value
             ),),
              Obx(() => Text("Total Bill: ${m.total}",)),
            ],
          ),
        ),
      ),
    );
  }
}
