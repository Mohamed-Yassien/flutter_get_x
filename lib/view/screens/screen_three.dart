import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {},
              child: const Text(
                'Screen 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {},
              child: const Text(
                'Screen 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {},
              child: const Text(
                'back',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
