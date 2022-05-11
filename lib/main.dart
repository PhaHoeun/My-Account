import 'package:custom_textfield/configure/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:number_pagination/number_pagination.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'NumberPagenation Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Scaffold(body: MyHomePage()),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   var selectedPageNumber = 3;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Flexible(
//           child: Container(
//             alignment: Alignment.center,
//             height: double.infinity,
//             color: Colors.yellow[200],
//             child: Text('PAGE INFO $selectedPageNumber'), //do manage state
//           ),
//         ),
//         NumberPagination(
//           onPageChanged: (int pageNumber) {
//             //do somthing for selected page
//             setState(() {
//               selectedPageNumber = pageNumber;
//             });
//           },
//           pageTotal: 5,
//           pageInit: selectedPageNumber, // picked number when init page
//           colorPrimary: Colors.white,
//           colorSub: Colors.grey,
//         ),
//       ],
//     );
//   }
// }

// import 'package:custom_textfield/controller/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(
//         title: "Pagination",
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   String? title;

//   MyHomePage({
//     Key? key,
//     this.title,
//   }) : super(key: key);

//   HomePageController homePageController = Get.put(HomePageController());
//   ScrollController controller = ScrollController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title!),
//       ),
//       body: GetBuilder(
//         init: homePageController,
//         builder: (value) => ListView.builder(
//           controller: controller,
//           itemCount: homePageController.list.length,
//           itemBuilder: (context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 children: [
//                   Container(
//                     color: Colors.red,
//                     height: 100,
//                     child: Center(
//                       child: Text(homePageController.list[index].name.toString()),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class MyModel {
//   String? name;

//   MyModel({
//     this.name,
//   });
// }
