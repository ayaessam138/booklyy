import 'package:booklyy/core/weidget/cusstomerror.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/persentation/view_models/newestbook_cubit/cubit/newest_book_cubit.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/Bestsellerlistviewitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Bestsellerlistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBooksucess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.newestbooks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Bestsellerlistviewitem(
                    bookmodel: state.newestbooks[index],
                  ),
                );
              });
        } else if (state is NewestBookfailure) {
          return custoumerrorweidget(Errormessage: state.errormessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
