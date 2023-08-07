import 'package:bookly_app/core/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errmassege});
  final String errmassege;
  @override
  Widget build(BuildContext context) {
    return Text(
      errmassege,
      style: Styles.textStyle18,
    );
  }
}
