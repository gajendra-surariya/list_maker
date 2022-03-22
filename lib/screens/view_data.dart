import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:notes_maker/controller/data_controller.dart';

class ViewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.find<DataController>();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home_outlined),
        ),
        title: Text(
          "List",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40, top: 30),
        child: Text(controller.data.value),
      ),
    );
  }
}
