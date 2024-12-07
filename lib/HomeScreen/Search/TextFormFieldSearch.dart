import 'package:flutter/material.dart';

class TextFormFieldSearch extends StatefulWidget {
  const TextFormFieldSearch({
    Key? key, required this.controller, required this.labelText, required this.hintText, required this.keyboardType, required this.obscureText, this.validator, this.onChanged,}) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final String Function(String?)? validator;
  final void Function(String)? onChanged;
  @override
  State<TextFormFieldSearch> createState() => _TextFormFieldSearchState();
}
class _TextFormFieldSearchState extends State<TextFormFieldSearch> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixIcon: widget.labelText == 'Search...'
            ? GestureDetector(
          onTap: () {
          },
          child: const Icon(Icons.arrow_back, color: Colors.grey,),
        )
            : null,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Color(0xFF00A0DC),
            width: 1.5,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
            color: Color(0xFF00A0DC),
            width: 1.5,
          ),
        ),
        labelText: widget.labelText,
        suffixStyle: const TextStyle(
          color: Color(0xFF95989A),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Color(0xFF95989A),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
      ),
      validator: widget.validator,
    );
  }
}
