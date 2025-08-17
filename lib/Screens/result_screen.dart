import 'package:bmi_calculator/Widgets/calculate_button.dart';
import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.res});
  final double res;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: ColorsPalet.textcolor, size: 30),
        ),
      ),
      backgroundColor: ColorsPalet.bgcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 17),
            Text(
              "Your Result",
              style: TextStyle(
                color: ColorsPalet.textcolor,
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: ColorsPalet.primarycolor,
                borderRadius: BorderRadius.circular(20),
              ),
              width: double.infinity,
              child: Column(
                spacing: 80,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    getBMICategory(res),
                    style: TextStyle(
                      color: getBMIColor(res),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    res.toStringAsFixed(2),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      getBMIFeedback(res),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 1),
                ],
              ),
            ),
            SizedBox(height: 25),
            calculate_button(
              onpressed: () {
                Navigator.pop(context);
              },
              height: 60,
              text: "Recalculate",
            ),
          ],
        ),
      ),
    );
  }
}

String getBMICategory(double bmi) {
  if (bmi < 18.5) {
    return "Underweight";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "Healthy Weight";
  } else if (bmi >= 25 && bmi <= 29.9) {
    return "Overweight";
  } else if (bmi >= 30 && bmi <= 34.9) {
    return "Obese";
  } else if (bmi >= 35 && bmi <= 39.9) {
    return "Severely Obese";
  } else {
    return "Morbidly Obese";
  }
}

Color getBMIColor(double bmi) {
  if (bmi < 18.5) {
    return Colors.white;
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return Colors.green;
  } else if (bmi >= 25 && bmi <= 29.9) {
    return Colors.yellow;
  } else if (bmi >= 30 && bmi <= 34.9) {
    return Colors.orange;
  } else if (bmi >= 35 && bmi <= 39.9) {
    return Colors.red;
  } else {
    return Colors.purple;
  }
}

String getBMIFeedback(double bmi) {
  if (bmi < 18.5) {
    return "You are underweight. Try to eat a balanced diet 💡";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "Your body weight is absolutely normal, Good job! 💪";
  } else if (bmi >= 25 && bmi <= 29.9) {
    return "You are overweight. Consider regular exercise 🏃‍♂️";
  } else if (bmi >= 30 && bmi <= 34.9) {
    return "You are obese. It's important to adopt a healthier lifestyle ⚠️";
  } else if (bmi >= 35 && bmi <= 39.9) {
    return "You are severely obese. Seek medical advice and focus on weight loss ❤️";
  } else {
    return "You are morbidly obese. Immediate medical guidance is highly recommended 🚨";
  }
}
