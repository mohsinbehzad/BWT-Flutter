import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {super.key,
      required this.buttonName,
      this.icon,
      this.bgColor = Colors.orange,
      this.textStyle,
      this.callBack});

  final String buttonName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shadowColor: bgColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25)),
          )),
      child: icon != null
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  icon!,
                  const SizedBox(
                    width: 11,
                  ),
                  Text(
                    buttonName,
                    style: textStyle,
                  )
                ],
              ),
            )
          : Text(
              buttonName,
              style: textStyle,
            ),
    );
  }
}
