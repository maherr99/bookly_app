import 'package:flutter/material.dart';

import '../../../../../../core/styles.dart';
import '../widget shared/custom_item.dart';

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
        SizedBox(
          height: MediaQuery.of(context).size.height * .15,
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
      ],
    );
  }
}
