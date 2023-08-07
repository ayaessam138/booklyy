import 'package:bloc/bloc.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit() : super(FeaturedBooksInitial());
}
