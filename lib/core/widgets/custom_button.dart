import 'package:HBuss/core/util/size_config.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.text, required Null Function() onTap})
      : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
          color: hMainColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14,
            color: Color.fromARGB(0, 26, 243, 243),
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
