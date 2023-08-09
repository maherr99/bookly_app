import 'package:bookly_app/core/api_services.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/feature/home/pressention/manager_cubit/similar_book_cubit/similar_book_cubit.dart';
import 'package:bookly_app/feature/home/pressention/view/book%20_%20details_view.dart';
import 'package:bookly_app/feature/home/pressention/view/home_view.dart';
import 'package:bookly_app/feature/search/pressentation/view/search_view.dart';
import 'package:bookly_app/feature/splash/pessention/view/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetailsView = '/BookDtailsView';
  static const kSearchView = '/SearchView';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) =>
              SimilarBookCubit(HomeRepoImpl(ApiServices(Dio()))),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
