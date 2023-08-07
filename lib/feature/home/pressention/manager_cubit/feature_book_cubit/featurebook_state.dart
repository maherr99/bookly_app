part of 'featurebook_cubit.dart';

abstract class FeaturebookState extends Equatable {
  const FeaturebookState();

  @override
  List<Object> get props => [];
}

class FeaturebookInitial extends FeaturebookState {}

class FeaturebookLoading extends FeaturebookState {}

class FeaturebookFailure extends FeaturebookState {
  final String errmassege;

  const FeaturebookFailure(this.errmassege);
}

class FeaturebookSuccess extends FeaturebookState {
  final List<BookModel> books;

  const FeaturebookSuccess(this.books);
}
