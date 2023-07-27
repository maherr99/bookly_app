import 'package:bookly_app/feature/home/pressention/view/widget/custom_appbar.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        const CustomAppBar(),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomItem();
              }),
        ),
      ],
    );
  }
}
