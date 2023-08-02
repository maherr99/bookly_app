import 'package:bookly_app/core/failure.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBook();
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook();
}
