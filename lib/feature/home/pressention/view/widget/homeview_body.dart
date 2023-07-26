import 'package:bookly_app/feature/home/pressention/view/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 45,
        ),
        CustomAppBar(),
      ],
    );
  }
}
