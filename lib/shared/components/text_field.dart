// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget text_field({
  required TextEditingController controller,
  required String hintText,
  required String textValidator,
  Function(dynamic)? onSubmit,
}) =>
    TextFormField(
      onFieldSubmitted: onSubmit,
      keyboardType: TextInputType.number,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return textValidator;
        }
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(
            color: Color(0xffED1B35),
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        prefixIcon:
            const Icon(Icons.calendar_month_rounded, color: Color(0xffED1B35)),
        hintText: hintText,
      ),
      cursorColor: Colors.black,
    );
