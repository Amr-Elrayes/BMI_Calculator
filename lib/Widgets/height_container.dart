import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Height_container extends StatelessWidget {
  Height_container({super.key, required this.onChanged, required this.height});

  final double height;
  final Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsPalet.primarycolor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Text(
            "Height",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: ColorsPalet.textcolor,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toInt().toString(),
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: ColorsPalet.textcolor,
                ),
              ),
              Text(
                "cm",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: ColorsPalet.textcolor,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Slider(
            min: 100,
            max: 200,
            value: height,
            onChanged: onChanged,
            // setState(() {
            //   height = v;
            // });
            activeColor: ColorsPalet.secondcolor,
          ),
        ],
      ),
    );
  }
}
