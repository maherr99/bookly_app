import 'package:bookly_app/feature/home/pressention/view/widget/widget_book_details_view/book_detials_section1.dart';
import 'package:flutter/material.dart';

import 'book_detials_section2.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                BookDetialsSection1(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                BookDetialsSection2(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
