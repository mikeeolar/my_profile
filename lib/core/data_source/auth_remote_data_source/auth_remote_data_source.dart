import 'package:dartz/dartz.dart';
import 'package:my_portfolio/core/models/guthub_resp_response.dart';
import 'package:my_portfolio/core/utils/exports.dart';

abstract class AuthRemoteDataSource {
  // All authentication api calls - login, register, authentication settings, etc

  Future<Either<AppError, List<GithubRepoResponse>>> getGithubRepo();
}
