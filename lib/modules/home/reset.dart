import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Screen"),
      ),
      body: Center(
        child: AnimatedSize(
          curve: Curves.bounceInOut,
          // ignore: deprecated_member_use
          vsync: this,
          duration: const Duration(seconds: 3),
          child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://lh3.googleusercontent.com/a-/AOh14Gjp_OujNTvkwAAMpecFFyHmGGvFjKrnwDnQZb852Q=s576-p-rw-no",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
