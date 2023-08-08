import 'package:bookly_app/core/app_route.dart';
import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_item.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({required this.bookmodel});
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomItem(imageurl: bookmodel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookmodel.volumeInfo.title!,
                      style: Styles.textStyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookmodel.volumeInfo.authors!.first,
                    style: Styles.textStyle16.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Free',
                        style: Styles.textStyle20c,
                      ),
                      RatingItem(
                        rating: 0,
                        count: bookmodel.volumeInfo.pageCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
