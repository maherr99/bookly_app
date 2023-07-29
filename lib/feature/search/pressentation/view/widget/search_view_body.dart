import 'package:bookly_app/feature/search/pressentation/view/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../../core/styles.dart';
import '../../../../home/pressention/view/widget/widget_book_details_view/best_seller_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15, top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextField(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Searcg Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    child: BestSellerItem(),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
