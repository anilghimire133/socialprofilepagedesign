import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.backgroundColor,
      required this.title,
      required this.borderColor,
      this.textColor})
      : super(key: key);
  MaterialStateProperty<Color> backgroundColor;
  String title;
  Color? textColor;
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: SizedBox(
            height: 40,
            width: 120,
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: textColor),
              ),
            ),
          ),
          style: ButtonStyle(
              backgroundColor: backgroundColor,
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0))),
              side: MaterialStateProperty.all(
                  BorderSide(width: 2.0, color: borderColor))),
        ),
      ],
    );
  }
}
