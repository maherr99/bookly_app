import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featurebook_state.dart';

class FeaturebookCubit extends Cubit<FeaturebookState> {
  FeaturebookCubit(this.homeRepo) : super(FeaturebookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBook() async {
    emit(FeaturebookLoading());
    var result = await homeRepo.fetchFeatureBook();

    result.fold((Failure) {
      emit(FeaturebookFailure(Failure.errmassege));
    }, (books) {
      emit(FeaturebookSuccess(books));
    });
  }
}
