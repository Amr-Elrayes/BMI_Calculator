import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class calculate_button extends StatelessWidget {
  const calculate_button({super.key, required this.onpressed, required this.height, required this.text});
  final Function() onpressed;
  final double height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onpressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsPalet.secondcolor,
          foregroundColor: ColorsPalet.textcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(14),
          ),
        ),
      ),
    );
  }
}
