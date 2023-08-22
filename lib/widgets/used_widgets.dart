import 'package:flutter/material.dart';

Widget button({
  required String text,
  required Color colorbox,
  required Color colortext,
  required onpressed,
}) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 40,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: colorbox,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: colortext,
            ),
          ),
        ),
      ),
    ),
  );
}
