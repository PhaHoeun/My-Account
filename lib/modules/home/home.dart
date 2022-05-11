import 'package:auto_route/auto_route.dart';
import 'package:custom_textfield/configure/route.gr.dart';
import 'package:custom_textfield/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              validator: (val) {
                if (val!.isEmpty) {
                  return "Please input your first name";
                }
                return null;
              },
              onChanged: (value) {
                // debugPrint(value);
              },
              onSaved: (value) {
                debugPrint("First Name $value");
              },
              label: RichText(
                text: TextSpan(
                  text: 'First Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '*',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              hintText: "Input First Name=============",
            ),
            CustomTextField(
              onSaved: (value) {
                debugPrint("Last Name $value");
              },
              label: RichText(
                text: TextSpan(
                  text: 'Last Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              hintText: "Input Last Name",
            ),
            CustomTextField(
              onSaved: (value) {
                debugPrint("Phone Number $value");
              },
              prefixText: "(+855) ",
              // initialValue: "(+855) ",
              label: RichText(
                text: TextSpan(
                  text: 'Phone Number',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              hintText: "Input Phone Number",
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                    }
                    context.pushRoute(const LoginRouter());
                  },
                  child: const Text("Submit Form=========="),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.reset();
                  },
                  child: const Text("Reset Form"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
