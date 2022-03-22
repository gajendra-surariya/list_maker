import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:notes_maker/controller/data_controller.dart';
import 'package:notes_maker/screens/view_data.dart';

class EnterDataScreen extends StatelessWidget {
  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Maker",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Center(
              child: TextField(
                controller: controller.itemController..text = "enter data",
                keyboardType: TextInputType.text,
                style: const TextStyle(color: Colors.black),
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.deepOrangeAccent,
                      width: 1.0,
                    ),
                  ),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.only(
                    left: 15,
                    bottom: 9,
                    top: 9,
                    right: 15,
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(ViewData());
                },
                child: Text("View List"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: controller.addData,
      ),
    );
  }
}
