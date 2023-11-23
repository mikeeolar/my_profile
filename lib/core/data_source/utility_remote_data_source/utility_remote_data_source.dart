import 'package:dartz/dartz.dart';
import 'package:my_portfolio/core/models/news.dart';
import 'package:my_portfolio/core/utils/exports.dart';

abstract class UtilityRemoteDataSource {
  // All utility related api calls - bank list, states list, etc.

  Future<Either<AppError, News>> getNews();
}