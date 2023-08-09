import 'package:bookly_app/feature/home/pressention/view/widget/widget_book_details_view/book_detials_section1.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/book_model/book_model.dart';
import 'book_detials_section2.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                BookDetialsSection1(
                  book: bookmodel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const BookDetialsSection2(),
                const SizedBox(
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
