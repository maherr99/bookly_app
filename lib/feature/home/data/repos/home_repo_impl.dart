import 'dart:math';

import 'package:bookly_app/core/failure.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/api_services.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook() async {
    try {
      var data = await apiServices.get(
          endpoints: 'volumes?Filtering=free-ebooks&q=subject:Programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioException(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBook() async {
    try {
      var data = await apiServices.get(
        endpoints: 'volumes?Filtering=free-ebooks&q=subject:computer science',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModel.fromJson(item));
        } catch (e) {
          print(item);
        }
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDioException(e));
      }
    }
    return left(ServiceFailure(e.toString()));
  }
}
