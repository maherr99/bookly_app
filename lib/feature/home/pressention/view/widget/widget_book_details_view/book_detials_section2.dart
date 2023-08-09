import 'package:bookly_app/feature/home/pressention/view/widget/widget_book_details_view/book_detils_listview.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/styles.dart';

class BookDetialsSection2 extends StatelessWidget {
  const BookDetialsSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'You Can Also Like',
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookDetialsListView(),
      ],
    );
  }
}
