part of 'newsetbook_cubit.dart';

abstract class NewsetbookState extends Equatable {
  const NewsetbookState();

  @override
  List<Object> get props => [];
}

class NewsetbookInitial extends NewsetbookState {}

class NewsetbookLoading extends NewsetbookState {}

class NewsebookFailure extends NewsetbookState {
  final String errmassege;

  const NewsebookFailure(this.errmassege);
}

class NewsebookSuccess extends NewsetbookState {
  final List<BookModel> books;

  const NewsebookSuccess(this.books);
}
