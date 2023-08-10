part of 'simillar_books_cubit.dart';

class SimillarBooksState extends Equatable {
  const SimillarBooksState();

  @override
  List<Object> get props => [];
}

class SimillarBooksInitial extends SimillarBooksState {}

class SimillarBooksLoading extends SimillarBooksState {}

class SimillarBookssSucess extends SimillarBooksState {
  final List<Bookmodel> SimillarBooks;
  const SimillarBookssSucess(this.SimillarBooks);
}

class SimillarBooksFailure extends SimillarBooksState {
  final String errormesage;
  const SimillarBooksFailure(this.errormesage);
}
