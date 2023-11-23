import 'package:dartz/dartz.dart';
import 'package:my_portfolio/core/data_source/auth_remote_data_source/auth_remote_data_source.dart';
import 'package:my_portfolio/core/exceptions/auth_exception.dart';
import 'package:my_portfolio/core/models/guthub_resp_response.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final HttpService _httpService = locator<HttpService>();

  @override
  Future<Either<AppError, List<GithubRepoResponse>>> getGithubRepo() async {
    try {
      final FormattedResponse raw = await _httpService
          .getHttp('https://api.github.com/users/mikeeolar/repos');
      if (raw.success) {
        // GithubRepoResponse res = GithubRepoResponse.fromJson(raw.data);
        // return Right(res as List<GithubRepoResponse>);
        List<GithubRepoResponse> temp = [];
        raw.data.forEach((e) => temp.add(GithubRepoResponse.fromJson(e)));
        return Right(temp);
      } else {
        return Left(AppError(
            errorType: AppErrorType.network,
            message: (raw.data['errors'] ??
                raw.responseCodeError ??
                'An Error Occured') as String));
      }
    } on NetworkException catch (e) {
      return Left(
          AppError(errorType: AppErrorType.network, message: e.message));
    } on SocketException catch (e) {
      return Left(
          AppError(errorType: AppErrorType.network, message: e.message));
    } on AuthException catch (e) {
      return Left(AppError(errorType: AppErrorType.api, message: e.message));
    } on Exception catch (e) {
      return Left(AppError(errorType: AppErrorType.api, message: '$e'));
    } catch (e) {
      return const Left(AppError(
          errorType: AppErrorType.api,
          message: 'An error occurred. Please try again'));
    }
  }
}
