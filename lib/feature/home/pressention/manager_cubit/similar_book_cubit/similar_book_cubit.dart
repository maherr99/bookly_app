import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBook({required String gategory}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilarBook(gategory: gategory);

    result.fold((Failure) {
      emit(SimilarBookFailure(Failure.errmassege));
    }, (books) {
      emit(SimilarBookSuccess(books));
    });
  }
}
