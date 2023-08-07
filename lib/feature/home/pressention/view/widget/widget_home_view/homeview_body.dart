import 'package:bookly_app/core/styles.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_error_massege.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget_home_view/bestseller_itemlistview.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget_home_view/custom_appbar.dart';
import 'package:bookly_app/feature/home/pressention/view/widget/widget%20shared/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager_cubit/feature_book_cubit/featurebook_cubit.dart';
import '../widget shared/custom_load.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
                const CustomAppBar(),
                const SizedBox(
                  height: 30,
                ),
                BlocBuilder<FeaturebookCubit, FeaturebookState>(
                  builder: (context, state) {
                    if (state is FeaturebookSuccess) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * .3,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: state.books.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: CustomItem(
                                imageurl: state.books[index].volumeInfo
                                    .imageLinks.thumbnail,
                              ),
                            );
                          },
                        ),
                      );
                    } else if (state is FeaturebookFailure) {
                      return CustomError(errmassege: state.errmassege);
                    } else {
                      return const CustomLoading();
                    }
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: BestSellerItemListView(),
        )
      ],
    );
  }
}
