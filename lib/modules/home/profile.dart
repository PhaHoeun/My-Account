import 'package:auto_route/auto_route.dart';
import 'package:custom_textfield/configure/route.gr.dart';
import 'package:custom_textfield/modules/home/image_picker.dart';
import 'package:custom_textfield/utils/helper/custom_card.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, @PathParam('profileId') required this.profileId})
      : super(key: key);

  final int profileId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      // Get.back();
                      context.pushRoute(const LoginRouter());
                    },
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 35, top: 10),
                  child: GestureDetector(
                    onTap: () {
                      debugPrint("Click on ...");
                    },
                    child: const Icon(
                      Icons.more_horiz,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 80),
            Expanded(
              child: Stack(
                // alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 65,
                    right: 0,
                    child: Transform.rotate(
                      angle: 3.14 / (-12),
                      child: Container(
                        width: 500,
                        color: const Color.fromARGB(255, 167, 29, 20),
                        height: 120,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        // height: 90,
                        color: Colors.white,
                      ),
                      const Spacer(),
                      Container(
                        width: 40,
                        // height: 90,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Positioned(
                    top: 130,
                    left: 165,
                    child: SizedBox(
                      width: 150,
                      height: 150,
                      child: Stack(
                        children: [
                          Container(
                            width: 110,
                            height: 110,
                            decoration: BoxDecoration(
                              // color: Colors.teal,
                              borderRadius: BorderRadius.circular(40),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  "https://lh3.googleusercontent.com/a-/AOh14Gjp_OujNTvkwAAMpecFFyHmGGvFjKrnwDnQZb852Q=s576-p-rw-no",
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            left: 85,
                            child: CircleAvatar(
                              radius: 13,
                              backgroundColor:
                                  const Color.fromARGB(255, 110, 173, 202),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PickImage(),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  Icons.camera_alt,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: const [
                      Text(
                        "Applied",
                        style: TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "28",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "Reviewed",
                        style: TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "73",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        "Contacted",
                        style: TextStyle(
                          color: Color.fromARGB(255, 129, 129, 129),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "18",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(left: 40, top: 70, bottom: 40),
              child: Text(
                "Complete Profile",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                  color: Colors.cyan[300],
                  child: Icon(
                    Icons.school,
                    color: Colors.cyan[300],
                    size: 20,
                  ),
                  text: 'Education',
                  step: '02',
                  direction: 'Left',
                ),
                const SizedBox(width: 35),
                CustomCard(
                  color: Colors.amberAccent[400],
                  child: Icon(
                    Icons.business_center,
                    color: Colors.amberAccent.shade400,
                    size: 20,
                  ),
                  text: 'Professional',
                  step: '04',
                  direction: 'Left',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    debugPrint("Click on price");
                  },
                  child: const Text(
                    "Buy Pro \$23.49",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
