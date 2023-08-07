part of 'featured_books_cubit.dart';

class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSucess extends FeaturedBooksState {
  final String errormesage;
  const FeaturedBooksSucess(this.errormesage);
}

class FeaturedBooksFailure extends FeaturedBooksState {
  final List<Bookmodel> featuredBooks;
  const FeaturedBooksFailure(this.featuredBooks);
}
