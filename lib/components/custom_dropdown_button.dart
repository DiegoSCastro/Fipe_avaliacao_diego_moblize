import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<DropdownMenuItem<String>> list;
  final String hint;
  final String value;
  final Function onChanged;

  CustomDropdownButton({
    this.list,
    this.hint,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        isDense: true,
        hintText: hint,
      ),
      value: value,
      items: list,
      onChanged: onChanged,
    );
  }
}
