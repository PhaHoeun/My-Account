import 'package:animated_background/animated_background.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class TestPackageScreen extends StatefulWidget {
  const TestPackageScreen({Key? key}) : super(key: key);

  @override
  State<TestPackageScreen> createState() => _TestPackageScreenState();
}

class _TestPackageScreenState extends State<TestPackageScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Package Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              height: 750,
              width: 600,
              color: Colors.transparent,
              child: AnimatedBackground(
                vsync: this,
                behaviour: RandomParticleBehaviour(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DelayedDisplay(
                      child: Column(
                        children: const [
                          Text(
                            "Welcome",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ),
                      delay: const Duration(seconds: 1),
                    ),
                    DelayedDisplay(
                      child: Column(
                        children: const [
                          Text(
                            "To",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ),
                      delay: const Duration(seconds: 2),
                    ),
                    DelayedDisplay(
                      child: Column(
                        children: const [
                          Text(
                            "Flutter",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ),
                      delay: const Duration(seconds: 3),
                    ),
                    DelayedDisplay(
                      child: Column(
                        children: const [
                          Text(
                            "Animated",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ),
                      delay: const Duration(seconds: 4),
                    ),
                    DelayedDisplay(
                      child: Column(
                        children: const [
                          Text(
                            "Background",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w900,
                              color: Colors.amberAccent,
                            ),
                          ),
                        ],
                      ),
                      delay: const Duration(seconds: 5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
