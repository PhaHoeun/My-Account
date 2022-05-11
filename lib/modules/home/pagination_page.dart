import 'package:flutter/material.dart';
import 'package:number_pagination/number_pagination.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedPageNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            color: Colors.yellow[200],
            child: Text('PAGE INFO $selectedPageNumber'), //do manage state
          ),
        ),
        NumberPagination(
          onPageChanged: (int pageNumber) {
            //do somthing for selected page
            setState(() {
              selectedPageNumber = pageNumber;
            });
          },
          pageTotal: 100,
          pageInit: selectedPageNumber, // picked number when init page
          colorPrimary: Colors.red,
          colorSub: Colors.yellow,
        ),
      ],
    );
  }
}
