import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomButom extends StatelessWidget {
  const CustomButom({
    required this.text,
    this.onpressed,
    required this.backgroundcolor,
    required this.textcolor,
    this.borderRadius,
    this.fontsize,
  });
  final String text;
  final Function()? onpressed;
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        onPressed: onpressed,
        child: Text(text,
            style: Styles.textStyle18.copyWith(
              color: textcolor,
              fontWeight: FontWeight.w900,
              fontSize: fontsize,
            )),
      ),
    );
  }
}
