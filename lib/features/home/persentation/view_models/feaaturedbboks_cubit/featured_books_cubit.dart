import 'package:bloc/bloc.dart';
import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/data/repos/homerepo.dart';
import 'package:booklyy/features/home/data/repos/homerepo_implem.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.Homerepo) : super(FeaturedBooksInitial());
  final homerepo Homerepo;
  Future<void> FeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await Homerepo.fetchfeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.errormessage));
    }, (books) {
      emit(FeaturedBooksSucess(books));
    });
  }
}
