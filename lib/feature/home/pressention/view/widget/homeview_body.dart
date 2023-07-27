import 'package:bookly_app/feature/home/pressention/view/widget/custom_appbar.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          const CustomAppBar(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CustomItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
