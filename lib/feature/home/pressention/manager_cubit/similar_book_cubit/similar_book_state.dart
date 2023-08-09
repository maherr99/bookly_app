part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookFailure extends SimilarBookState {
  final String errmassege;

  const SimilarBookFailure(this.errmassege);
}

final class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> books;
  const SimilarBookSuccess(this.books);
}
