import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/model/book_model/book_model.dart';

part 'newsetbook_state.dart';

class NewsetbookCubit extends Cubit<NewsetbookState> {
  NewsetbookCubit(this.homeRepo) : super(NewsetbookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewsetBook() async {
    emit(NewsetbookLoading());
    var result = await homeRepo.fetchNewsetBook();

    result.fold((Failure) {
      emit(NewsebookFailure(Failure.errmassege));
    }, (books) {
      emit(NewsebookSuccess(books));
    });
  }
}
