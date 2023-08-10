import 'package:bloc/bloc.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/homerepo.dart';

part 'simillar_books_state.dart';

class SimillarBooksCubit extends Cubit<SimillarBooksState> {
  SimillarBooksCubit(this.Homerepo) : super(SimillarBooksInitial());
  final homerepo Homerepo;
  Future<void> fetchSimillarBooks({required String Category}) async {
    emit(SimillarBooksLoading());
    var result = await Homerepo.fetchSimillarBooks(Category: Category);
    result.fold((failure) {
      emit(SimillarBooksFailure(failure.errormessage));
    }, (books) {
      emit(SimillarBookssSucess(books));
    });
  }
}
