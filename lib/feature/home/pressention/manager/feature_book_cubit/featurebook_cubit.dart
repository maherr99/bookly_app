import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featurebook_state.dart';

class FeaturebookCubit extends Cubit<FeaturebookState> {
  FeaturebookCubit() : super(FeaturebookInitial());
}
