import 'package:booklyy/core/errors/failure.dart';
import 'package:booklyy/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:dartz/dartz.dart';

abstract class homerepo {
  Future<Either<failure, List<Bookmodel>>> fetchBestSellerBooks();
  Future<Either<failure, List<Bookmodel>>> fetchfeaturedBooks();
}
