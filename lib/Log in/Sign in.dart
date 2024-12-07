import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:unizone/HomeScreen/HomeScreen.dart';
import 'package:unizone/Log%20in/Const/IconButtom/IconButtom.dart';
import 'package:unizone/Log%20in/Const/LineOR/LineOR.dart';
import 'package:unizone/Log%20in/TextFormField.dart';
import 'package:unizone/Abbreviation/button_utils.dart';
import 'package:unizone/Sign%20up/GoToLogIn.dart';
import 'package:unizone/Sign%20up/Sign%20up.dart';
import '../Sign up/TransFormScale.dart';
import 'Forget password.dart';

class SignIn extends StatefulWidget{
  static const String routeName = 'Sign-In';

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/Tablet login-amico 1.png'),
                const SizedBox(height: 25),
                TextFormFields( controller: emailController,
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    return "null";
                  },
                ),
                const SizedBox(height: 25),
                TextFormFields(controller: passwordController,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                    return 'null';
                  },
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TransFormScale(),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Remember me', style: TextStyle(color: Color(0xFF252525), fontSize: 12, fontWeight: FontWeight.w400,),),
                    ),
                    const SizedBox(width: 67),
                   InkWell(
                     onTap: (){Navigator.of(context).pushNamed(ForgetPassword.routeName);},
                     child: const Padding(
                       padding: EdgeInsets.only(top: 9,right: 20),
                       child: Text('Forget password?', style: TextStyle(color: Color(0xFF00A0DC), fontWeight: FontWeight.w400, fontSize: 16,),),
                     ),
                   ),
                  ],
                ),
                const SizedBox(height: 80,),
               ButtonApp(text: 'Sign in', onPressed: (){ Navigator.of(context).pushNamed(HomeScreen.routeName);}, colorstext: Colors.white, background: const Color(0xFF00A0DC)),
                const SizedBox(height: 25),
                const GoToLogIn(texts1: 'New Member? ', widget: SignUp(), texts2: 'Create account'),
                const SizedBox(height: 30,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LineOR(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text('OR',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,color: Color(0xFF95989A),),),
                    ),
                    LineOR(),
                  ],
                ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonMdiIcons(icon: MdiIcons.facebook),
                  const SizedBox(width: 12),
                  const IconButtonMdiIcons(icon: FontAwesomeIcons.google),
                  const SizedBox(width: 12),
                  const IconButtonMdiIcons(icon: FontAwesomeIcons.linkedin,),
                ],
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}