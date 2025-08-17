import 'package:bmi_calculator/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WeightAgeContainer extends StatelessWidget {
  WeightAgeContainer({super.key, required this.type, required this.value, required this.onAdd, required this.onRemove});
  final String type;

final int value;
final Function() onAdd;
final Function() onRemove;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsPalet.primarycolor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Text(
            type,
            style: TextStyle(
              color: ColorsPalet.textcolor,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            value.toString(),
            style: TextStyle(
              color: ColorsPalet.textcolor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onRemove,
                icon: Icon(Icons.remove),
                style: IconButton.styleFrom(
                  backgroundColor: ColorsPalet.secondcolor,
                  foregroundColor: ColorsPalet.textcolor,
                ),
              ),
              SizedBox(width: 40),
              IconButton(
                onPressed: onAdd,
                icon: Icon(Icons.add),
                style: IconButton.styleFrom(
                  backgroundColor: ColorsPalet.secondcolor,
                  foregroundColor: ColorsPalet.textcolor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
