import 'package:bookly_app/feature/home/pressention/manager_cubit/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_error_massege.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_load.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget shared/custom_item.dart';

class BookDetialsListView extends StatelessWidget {
  const BookDetialsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomItem(
                    imageurl:
                        state.books[index].volumeInfo.imageLinks?.thumbnail ??
                            '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBookFailure) {
          return CustomError(errmassege: state.errmassege);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
