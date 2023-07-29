import 'package:bookly_app/feature/home/pressention/view/book%20_%20details_view.dart';
import 'package:bookly_app/feature/home/pressention/view/home_view.dart';
import 'package:bookly_app/feature/search/pressentation/view/search_view.dart';
import 'package:bookly_app/feature/splash/pessention/view/splash_view.dart';
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
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
