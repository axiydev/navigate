import 'package:flutter/material.dart';
import 'package:navigate/consts/consts.dart';
import 'package:navigate/pages/screen_2/screen_two.dart';

class ScreenOne extends StatefulWidget {
  static const String routeName = '/screen_1';
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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
              child: const Text(
                "Screen One",
                style: MyStyles.bold,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenTwo.routeName,
                      arguments: {'data': 'Hello from screen1'});
                },
                icon: const Icon(Icons.forward))
          ],
        )),
      ),
    );
  }
}
