import 'package:booklyy/core/utilts/service_locator.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/features/home/data/repos/homerepo.dart';
import 'package:booklyy/features/home/data/repos/homerepo_implem.dart';
import 'package:booklyy/features/home/persentation/view_models/cubit/simillar_books_cubit.dart';
import 'package:booklyy/features/home/persentation/views/book_details_view.dart';
import 'package:booklyy/features/home/persentation/views/home_view.dart';
import 'package:booklyy/features/search/persentation/views/search_view.dart';
import 'package:booklyy/features/splash/persentation/view/splashscreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class approutes {
  static const khomeview = '/homeview';
  static const kbookdetalisview = '/bookdetalisview';
  static const ksearchview = '/searchview';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => splashscreen()),
    GoRoute(path: khomeview, builder: (context, state) => homwview()),
    GoRoute(
        path: kbookdetalisview,
        builder: (context, state) => BlocProvider(
              create: (context) => SimillarBooksCubit(getIt.get<Homereppo>()),
              child: BookDetailsView(
                bookmodel: state.extra as Bookmodel,
              ),
            )),
    GoRoute(path: ksearchview, builder: (context, state) => searchview())
  ]);
}
