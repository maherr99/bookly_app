import 'package:bookly_app/constant/constant.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom%20_%20appbar_bookdetails.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          const CustomAppBarBookDetails(),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(kPhoto),
          ),
        ],
      ),
    );
  }
}
