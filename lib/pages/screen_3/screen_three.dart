import 'package:flutter/material.dart';
import 'package:navigate/consts/consts.dart';
import 'package:navigate/pages/screen_4/screen_four.dart';

class ScreenThree extends StatefulWidget {
  static const String routeName = '/screen_3';
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
                "Screen Three",
                style: MyStyles.bold,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, ScreenFour.routeName);
                },
                icon: const Icon(Icons.forward))
          ],
        )),
      ),
    );
  }
}
