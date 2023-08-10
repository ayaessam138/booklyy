import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/persentation/view_models/cubit/simillar_books_cubit.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/BookDetails_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  final Bookmodel bookmodel;

  const BookDetailsView({super.key, required this.bookmodel});
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimillarBooksCubit>(context).fetchSimillarBooks(
        Category: widget.bookmodel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BookDetailsBody(
      bookmodel: widget.bookmodel,
    )));
  }
}
