part of 'newest_book_cubit.dart';

class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {}

class NewestBookloading extends NewestBookState {}

class NewestBooksucess extends NewestBookState {
  final List<Bookmodel> newestbooks;
  const NewestBooksucess(this.newestbooks);
}

class NewestBookfailure extends NewestBookState {
  final String errormessage;
  const NewestBookfailure(this.errormessage);
}
