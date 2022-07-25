import 'package:flutter/material.dart';
import 'package:navigate/consts/consts.dart';

class ScreenFour extends StatefulWidget {
  static const String routeName = '/screen_4';
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
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
                "Error Page",
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
