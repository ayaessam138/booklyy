import 'package:booklyy/core/weidget/cusstomerror.dart';
import 'package:booklyy/features/home/persentation/view_models/cubit/simillar_books_cubit.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class bookdetailslistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBooksCubit, SimillarBooksState>(
        builder: (context, state) {
      if (state is SimillarBookssSucess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.SimillarBooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: custombookinmageitem(
                      imageurl: state.SimillarBooks[index].volumeInfo.imageLinks
                              ?.smallThumbnail ??
                          ''),
                );
              }),
        );
      } else if (state is SimillarBooksFailure) {
        return custoumerrorweidget(Errormessage: state.errormesage);
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
