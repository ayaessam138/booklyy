part of 'featured_books_cubit.dart';

class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSucess extends FeaturedBooksState {
  final List<Bookmodel> featuredBooks;
  const FeaturedBooksSucess(this.featuredBooks);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final String errormesage;
  const FeaturedBooksFailure(this.errormesage);
}
