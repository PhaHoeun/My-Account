// import 'package:custom_textfield/main.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class HomePageController extends GetxController {
//   List<MyModel> list = [];
//   ScrollController controller = ScrollController();
//   int listLength = 30;

//   @override
//   void onInit() {
//     generateList();
//     addItems();
//     super.onInit();
//   }

//   addItems() async {
//     controller.addListener(() {
//       if (controller.position.maxScrollExtent == controller.position.pixels) {
//         for (int i = 0; i < 8; i++) {
//           listLength++;
//           list.add(MyModel(name: (listLength).toString()));
//           update();
//         }
//       }
//     });
//   }

//   generateList() {
//     list = List.generate(
//         listLength, (index) => MyModel(name: (index + 1).toString()));
//   }
// }
