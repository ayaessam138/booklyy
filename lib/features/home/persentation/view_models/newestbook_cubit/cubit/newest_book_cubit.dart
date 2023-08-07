import 'package:bloc/bloc.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/data/repos/homerepo.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.Homerepo) : super(NewestBookInitial());
  final homerepo Homerepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBookloading());
    var result = await Homerepo.fetchNewestBooks();
    result.fold((failure) {
      emit(NewestBookfailure(failure.errormessage));
    }, (books) {
      emit(NewestBooksucess(books));
    });
  }
}
