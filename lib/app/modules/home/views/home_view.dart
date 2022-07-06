import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('Home'),
      );
    }

    double heightBody =
        heightDevice - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
        appBar: myAppBar(),
        body: Container(
          width: 200,
          height: 100,
          color: Colors.amber,
          child: Center(
              child: FittedBox(
            child: Text(
              'Haloo',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          )),
        )
        // body: Column(
        //   children: [
        //     Container(
        //       height: heightBody / 2,
        //       width: widthDevice * 0.5,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       height: heightBody * 0.3,
        //       width: widthDevice * 0.5,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       height: heightBody * 0.2,
        //       width: widthDevice * 0.5,
        //       color: Colors.green,
        //     ),
        //   ],
        // ),
        );
  }
}
