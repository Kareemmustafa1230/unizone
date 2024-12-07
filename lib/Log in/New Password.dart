import 'package:flutter/material.dart';
import 'package:unizone/HomeScreen/HomeScreen.dart';
import 'package:unizone/Log%20in/TextFormField.dart';
import '../Abbreviation/button_utils.dart';

class NewPassword extends StatelessWidget{
  static const String routeName = 'NewPassword';
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  NewPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 62),
              Image.asset('assets/images/Tablet login-amicos 1 (1).png'),
              const SizedBox(height: 45),
              TextFormFields(
                keyboardType: TextInputType.visiblePassword,
                  controller: newPasswordController,
                  labelText: 'New Password',
                  hintText: 'Enter your New Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  return 'null';
                },
              ),
              const SizedBox(height: 25),
              TextFormFields(
                keyboardType: TextInputType.visiblePassword,
                controller: confirmPasswordController,
                labelText: 'Confirm Password',
                hintText: 'Enter your Confirm Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  return 'null';
                },
              ),
              const SizedBox(height: 90),
              ButtonApp(text: 'Change', onPressed: (){Navigator.of(context).pushNamed(HomeScreen.routeName);}, colorstext: Colors.white, background: const Color(0xFF00A0DC)),
            ],
          ),
        ),
      ),
    );
  }
}