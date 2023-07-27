import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/best_seller_item.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom_appbar.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                return const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomItem(),
                );
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          const BestSellerItem(),
        ],
      ),
    );
  }
}
