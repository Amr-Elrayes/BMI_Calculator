import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class male_female_container extends StatelessWidget {
  const male_female_container({
    super.key,
    required this.icon,
    required this.gender,
    required this.ontap,
    required this.color,
  });
  final IconData icon;
  final String gender;
  final Color color;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Icon(icon, color: ColorsPalet.textcolor, size: 150),
            SizedBox(height: 10),
            Text(
              gender,
              style: TextStyle(
                color: ColorsPalet.textcolor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
