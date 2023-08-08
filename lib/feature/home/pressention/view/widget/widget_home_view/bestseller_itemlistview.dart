import 'package:bookly_app/feature/home/pressention/manager_cubit/newset_book_cubit/newsetbook_cubit.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_error_massege.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_load.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget_home_view/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetbookCubit, NewsetbookState>(
        builder: (context, state) {
      if (state is NewsebookSuccess) {
        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: BestSellerItem(
                  bookmodel: state.books[index],
                ),
              );
            });
      } else if (state is NewsebookFailure) {
        return CustomError(errmassege: state.errmassege);
      } else {
        return const CustomLoading();
      }
    });
  }
}
