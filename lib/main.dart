import 'package:bookly_app/constant/constant.dart';
import 'package:bookly_app/core/api_services.dart';
import 'package:bookly_app/core/app_route.dart';
import 'package:bookly_app/core/loctater_server.dart';
import 'package:bookly_app/core/simple_observer.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'feature/home/pressention/manager_cubit/feature_book_cubit/featurebook_cubit.dart';
import 'feature/home/pressention/manager_cubit/newset_book_cubit/newsetbook_cubit.dart';

void main() {
  setup;
  Bloc.observer = SimpleObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturebookCubit(
            HomeRepoImpl(ApiServices(Dio())),
          )..fetchFeatureBook(),
        ),
        BlocProvider(
          create: (context) => NewsetbookCubit(
            HomeRepoImpl(ApiServices(Dio())),
          ),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.route,
      ),
    );
  }
}
