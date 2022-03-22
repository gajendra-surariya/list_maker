import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  var data = "".obs;
  List<String> items = [];
  var itemController = TextEditingController();
  addData() {
    if (itemController.text.isNotEmpty) {
      //send backend the request to change data in this row category and if succeded do as below
      // this._rowData = this.rowTextController.text;
      items.add(itemController.text);
      itemController.text = "";
      changeDataList();
      //else show message of try again
    }
  }

  changeDataList() {
    String string = "";
    items.forEach((element) {
      string = string + "->" + element + "\n";
    });
    data.value = string;
  }
}
