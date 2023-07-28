import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom%20_%20appbar_bookdetails.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom_buttom.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/custom_item.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/rating_item.dart';
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
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .5,
            child: const CustomItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 7,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const RatingItem(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              Expanded(
                child: CustomButom(
                  text: r'19.99 $',
                  textcolor: Colors.black,
                  backgroundcolor: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
              ),
              Expanded(
                child: CustomButom(
                  text: 'Free Preview',
                  textcolor: Colors.white,
                  backgroundcolor: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
