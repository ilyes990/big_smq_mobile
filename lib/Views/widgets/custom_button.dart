import 'package:big_smq_mobile_app/utils/colors.dart';
import 'package:big_smq_mobile_app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color color;

  const CustomButton({super.key, required this.buttonText, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(blueThemeColor),
          padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(0, 20, 0, 20)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
        ),
        child: Text(
          buttonText,
          style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
