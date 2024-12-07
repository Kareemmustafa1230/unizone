import 'package:flutter/material.dart';

class TextFormFields extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String Function(String?)? validator;
  const TextFormFields({super.key, required this.controller, required this.labelText, required this.hintText, this.keyboardType = TextInputType.text, this.obscureText = false, this.validator,});
  @override
  State<TextFormFields> createState() => _TextFormFieldsState();
}

class _TextFormFieldsState extends State<TextFormFields> {
  bool _obscureText = true;
  late String passwordText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFF33C4C4C4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.labelText == 'Password'|| widget.labelText == "Strong Password" || widget.labelText == "Confirm Password" || widget.labelText == "New Password" ? _obscureText : widget.obscureText,
        onChanged: (value) {
          setState(() {
            if (widget.labelText == 'Password' ||  widget.labelText == "Strong Password" || widget.labelText == "Confirm Password"|| widget.labelText == "New Password") {
              passwordText = value;
            }
          });
        },
        decoration: InputDecoration(
          suf fixIcon: widget.labelText == 'Password'|| widget.labelText == "Strong Password" || widget.labelText == "Confirm Password"|| widget.labelText == "New Password"
              ? GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: ImageIcon(
              AssetImage(_obscureText ? "assets/images/Vector.png" : "assets/images/Vector.png"),
              color: _obscureText ? Colors.blue : Colors.grey,
            ),
          )
              : widget.labelText == 'Email' || widget.labelText == 'Valid email'||widget.labelText =='Enter your email'
              ? const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.mail, color: Colors.blue),
          )
              : widget.labelText == 'Phone Number'
              ? const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(Icons.phone_android, color: Colors.blue,size: 25,),
          )
              : widget.labelText == 'Full Name'
              ? const Padding(
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(Icons.person, color: Colors.blue,size: 25,),
          )
              : null,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xFFCED5E1),
              width: 2,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Color(0xFFCED5E1),
              width: 2,
            ),
          ),
          labelText: widget.labelText,
          suffixStyle: const TextStyle(
            color: Color(0xFF80000000),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF80000000),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        ),
        validator: widget.validator,
      ),
    );
  }
}