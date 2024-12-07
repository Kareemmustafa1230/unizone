import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../Abbreviation/button_utils.dart';
import 'New Password.dart';

class CodeForgetPassword extends StatefulWidget {
  static const String routeName = 'Code-Forget-Password';
  const CodeForgetPassword({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CodeForgetPasswordState createState() => _CodeForgetPasswordState();
}

class _CodeForgetPasswordState extends State<CodeForgetPassword> {
  int countdown = 30;
  late Timer timer;
  TextEditingController pinController = TextEditingController();
  FocusNode pinFocusNode = FocusNode();
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  final focusedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    ),
  );
  @override
  void initState() {
    super.initState();
    startTimer();

    WidgetsBinding.instance!.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(pinFocusNode);
    });
  }
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          countdown = 30;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Image.asset('assets/images/Secure data-panas1 (1).png'),
              const Text('Please enter the 6-digit code sent to your \nemail remon101@gmail.com for verification.'),
              const SizedBox(height: 52),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pinput(
                    length: 6,
                    keyboardType: TextInputType.number,
                    controller: pinController,
                    focusNode: pinFocusNode, // تعيين المؤشر للخانة الأولى
                    textInputAction: TextInputAction.next,
                    showCursor: true,
                    onSubmitted: (pin) {},
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                  ),
                ],
              ),
              const SizedBox(height: 40),
              ButtonApp(text: 'Verify', onPressed: () {Navigator.of(context).pushNamed(NewPassword.routeName);}, colorstext: Colors.white, background: const Color(0xFF00A0DC)),
              const SizedBox(height: 62),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn’t receive any code?',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color(0xFF252525),
                    ),
                  ),
                  Text('Resend Again',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Color(0xFF00A0DC),
                    ),
                  ),
                ],
              ),
              Text('Request new code in 00:${countdown.toString().padLeft(2, '0')}s',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: Color(0x80000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
