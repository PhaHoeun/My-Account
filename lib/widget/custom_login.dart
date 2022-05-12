import 'package:auto_route/auto_route.dart';
import 'package:custom_textfield/configure/route.gr.dart';
import 'package:custom_textfield/modules/home/reset.dart';
import 'package:custom_textfield/utils/helper/custom_button.dart';
import 'package:custom_textfield/utils/helper/cutom_textformfield.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomLogin extends StatefulWidget {
  CustomLogin({Key? key}) : super(key: key);

  @override
  State<CustomLogin> createState() => _CustomLoginState();
  bool isObscure = true;
}

class _CustomLoginState extends State<CustomLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 25,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
              ),
              const SizedBox(height: 110),
              const Text(
                "Hey,\nLogin Now.",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const Text(
                    "If you are new / ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Create New");
                    },
                    child: const Text(
                      "Create New",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      validator: (value) {
                        debugPrint(value);
                        if (value!.isEmpty) {
                          return 'Please input username!';
                          // Get.snackbar('', 'Incorrect username');
                        } else {
                          return null;
                        }
                      },

                      suffixIcon: Container(
                        margin: const EdgeInsets.only(right: 15),
                        width: 20,
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.flash_on,
                            size: 15,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      fillColor: Colors.grey[200],
                      focusColor: Colors.amber[300],
                      hintText: 'Username',
                      // labelText: 'Username',
                    ),
                    const SizedBox(height: 20),
                    CustomTextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please input password!';
                          // Get.snackbar('', 'Incorrect password');
                        } else {
                          return null;
                        }
                      },
                      fillColor: Colors.grey[200],
                      hintText: 'Password',
                      obscureText: widget.isObscure,
                      suffixIcon: IconButton(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        icon: Icon(
                          widget.isObscure
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(
                            () {
                              widget.isObscure = !widget.isObscure;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "Forgot Passcode? / ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Reset");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResetScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Center(
                child: CustomButton(
                  onTap: () {
                    // debugPrint("${_formKey.currentState!.validate()}");
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: ((context) => const ProfilePage()),
                      //   ),
                      // );

                      context.pushRoute(ProfileRoute(user: 'Kea', id: 1));
                      // context.router.pushNamed('profile?id=500000&user=Pha');
                    }
                  },
                  buttonName: 'Login',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                  color: Colors.red[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
