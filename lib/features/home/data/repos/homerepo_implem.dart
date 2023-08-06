// ignore: camel_case_types
import 'package:booklyy/core/utilts/api_service.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home/data/repos/homerepo.dart';
import 'package:dartz/dartz.dart';

class Homereppo implements homerepo {
  final ApiService apiService;
  Homereppo(this.apiService);
  @override
  Future<Either<failure, List<Bookmodel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              '/volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      List<Bookmodel> Books = [];
      for (var item in data['items']) {
        Books.add(Bookmodel.fromJson(item));
      }
      return right(Books);
    } on Exception catch (e) {
      return left(Serverfailure());
    }
  }

  @override
  Future<Either<failure, List<Bookmodel>>> fetchfeaturedBooks() {
    // TODO: implement fetchfeaturedBooks
    throw UnimplementedError();
  }
}
