import 'package:booklyy/features/home/persentation/views/book_details_view.dart';
import 'package:booklyy/features/home/persentation/views/home_view.dart';
import 'package:booklyy/features/splash/persentation/view/splashscreen.dart';
import 'package:go_router/go_router.dart';

abstract class approutes {
  static const khomeview = '/homeview';
  static const kbookdetalisview = '/bookdetalisview';
  static final router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => splashscreen()),
    GoRoute(path: khomeview, builder: (context, state) => homwview()),
    GoRoute(
        path: kbookdetalisview, builder: (context, state) => BookDetailsView())
  ]);
}
