import 'package:flutter/material.dart';
import 'package:navigate/consts/consts.dart';
import 'package:navigate/pages/screen_3/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  final String? data;
  static const String routeName = '/screen_2';
  const ScreenTwo({this.data, super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
            child: ButtonBar(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Screen Two  data::${widget.data}",
                style: MyStyles.bold,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenThree.routeName);
                },
                icon: const Icon(Icons.forward))
          ],
        )),
      ),
    );
  }
}
