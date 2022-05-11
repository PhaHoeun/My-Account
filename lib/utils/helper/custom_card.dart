import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color? color;
  final Widget? child;
  final String? text;
  final String? step;
  final String? direction;
  const CustomCard({
    Key? key,
    this.color,
    this.child,
    this.text,
    this.step,
    this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 185,
      width: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 20),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: child,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "$text",
              style: const TextStyle(
                color: Color.fromARGB(255, 87, 87, 87),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Text(
              "$step Steps",
              style: const TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "$direction",
                  style: const TextStyle(
                    color: Colors.transparent,
                    decorationColor: Colors.black,
                    decorationThickness: 2,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset(0, -10),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20, top: 5),
                child: Icon(Icons.east),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
