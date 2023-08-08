import 'package:booklyy/core/utilts/api_service.dart';
import 'package:booklyy/core/utilts/app_routes.dart';
import 'package:booklyy/core/utilts/service_locator.dart';
import 'package:booklyy/features/home/data/repos/homerepo_implem.dart';
import 'package:booklyy/features/home/persentation/view_models/feaaturedbboks_cubit/featured_books_cubit.dart';
import 'package:booklyy/features/home/persentation/view_models/newestbook_cubit/cubit/newest_book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';
import 'features/splash/persentation/view/splashscreen.dart';

void main() {
  setup();
  runApp(bookly());
}

class bookly extends StatelessWidget {
  bookly({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<Homereppo>())..fetchfeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBookCubit(getIt.get<Homereppo>())..fetchNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: approutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
