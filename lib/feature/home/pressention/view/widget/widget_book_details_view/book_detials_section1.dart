import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/rating_item.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/styles.dart';
import 'custom _ appbar_bookdetails.dart';
import '../widget shared/custom_buttom.dart';
import '../widget shared/custom_item.dart';

class BookDetialsSection1 extends StatelessWidget {
  const BookDetialsSection1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarBookDetails(),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          child: const CustomItem(
            imageurl:
                'https://www.seiu1000.org/sites/main/files/main-images/camera_lense_0.jpeg',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'The jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
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
          height: 15,
        ),
        const RatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
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
                  fontsize: 16,
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
        ),
      ],
    );
  }
}
