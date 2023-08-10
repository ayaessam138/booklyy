// ignore: camel_case_types
import 'package:booklyy/core/utilts/api_service.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home/data/repos/homerepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homereppo implements homerepo {
  final ApiService apiService;
  Homereppo(this.apiService);
  @override
  Future<Either<failure, List<Bookmodel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              '/volumes?Filtering=free-ebooks&Sorting=newest &q=subject:computer science');
      List<Bookmodel> Books = [];
      for (var item in data['items']) {
        try {
          Books.add(Bookmodel.fromJson(item));
        } on Exception catch (e) {
          Books.add(Bookmodel.fromJson(item));
        }
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Serverfailure.fromDioError(e));
      }
      return left(Serverfailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<Bookmodel>>> fetchfeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint: '/volumes?Filtering=free-ebooks&q=subject:Programming');
      List<Bookmodel> Books = [];
      for (var item in data['items']) {
        Books.add(Bookmodel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Serverfailure.fromDioError(e));
      }
      return left(Serverfailure(e.toString()));
    }
  }

  @override
  Future<Either<failure, List<Bookmodel>>> fetchSimillarBooks(
      {required String Category}) async {
    try {
      var data = await apiService.get(
          endpoint:
              '/volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:computer science');
      List<Bookmodel> Books = [];
      for (var item in data['items']) {
        try {
          Books.add(Bookmodel.fromJson(item));
        } on Exception catch (e) {
          Books.add(Bookmodel.fromJson(item));
        }
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(Serverfailure.fromDioError(e));
      }
      return left(Serverfailure(e.toString()));
    }
  }
}
