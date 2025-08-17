import 'package:bmi_calculator/Screens/result_screen.dart';
import 'package:bmi_calculator/Widgets/calculate_button.dart';
import 'package:bmi_calculator/Widgets/height_container.dart';
import 'package:bmi_calculator/Widgets/male_female_container.dart';
import 'package:bmi_calculator/Widgets/weight_age_container.dart';
import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? isMale;
  int weight = 65;
  int age = 18;
  double height = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsPalet.bgcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 35),
        child: Column(
          spacing: 25,
          children: [
            //Male & Female Section
            Row(
              spacing: 20,
              children: [
                Expanded(
                  child: male_female_container(
                    icon: Icons.male,
                    gender: "Male",
                    color: (isMale == null || isMale == false)
                        ? ColorsPalet.primarycolor
                        : ColorsPalet.secondcolor,
                    ontap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: male_female_container(
                    icon: Icons.female,
                    gender: "Female",
                    color: (isMale == null || isMale == true)
                        ? ColorsPalet.primarycolor
                        : ColorsPalet.secondcolor,
                    ontap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                  ),
                ),
              ],
            ),
            //Height Section
            Height_container(
              height: height,
              onChanged: (v) {
                setState(() {
                  height = v;
                });
              },
            ),
            //Weight & Age Section
            Row(
              spacing: 20,
              children: [
                Expanded(
                  child: WeightAgeContainer(
                    type: "Weight",
                    value: weight,
                    onAdd: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onRemove: () {
                      setState(() {
                        if (weight > 0) {
                          weight--;
                        }
                      });
                    },
                  ),
                ),
                Expanded(
                  child: WeightAgeContainer(
                    type: "Age",
                    value: age,
                    onAdd: () {
                      setState(() {
                        age++;
                      });
                    },
                    onRemove: () {
                      setState(() {
                        if (age > 0) {
                          age--;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            //Clculate Button
            calculate_button(
              height: 60,
              text: "Calculate",
              onpressed: () {
                double result = weight / (height * height * 0.0001);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen(res: result)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
