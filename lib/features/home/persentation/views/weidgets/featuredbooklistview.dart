import 'package:booklyy/core/utilts/app_routes.dart';
import 'package:booklyy/core/weidget/CustuomLoadingIndicator.dart';
import 'package:booklyy/core/weidget/cusstomerror.dart';
import 'package:booklyy/features/home/persentation/view_models/feaaturedbboks_cubit/featured_books_cubit.dart';
import 'package:booklyy/features/home/persentation/views/weidgets/custombookinmageitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class featuredbooklistview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.featuredBooks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(approutes.kbookdetalisview,
                            extra: state.featuredBooks[index]);
                      },
                      child: custombookinmageitem(
                        imageurl: state.featuredBooks[index].volumeInfo
                                .imageLinks?.thumbnail ??
                            '',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFailure) {
          return custoumerrorweidget(Errormessage: state.errormesage);
        } else {
          return CustuomLoadingIndicator();
        }
      },
    );
  }
}
