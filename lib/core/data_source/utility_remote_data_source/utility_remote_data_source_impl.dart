import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_portfolio/core/data_source/utility_remote_data_source/utility_remote_data_source.dart';
import 'package:my_portfolio/core/exceptions/auth_exception.dart';
import 'package:my_portfolio/core/models/news.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class UtilityRemoteDataSourceImpl extends UtilityRemoteDataSource {
  final HttpService _httpService = locator<HttpService>();

  @override
  Future<Either<AppError, News>> getNews() async {
    try {
      final FormattedResponse raw = await _httpService.getHttp(
          'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=${dotenv.env['NEWSAPIKEY']}');
      if (raw.success) {
        News res = News.fromJson(raw.data as Map<String, dynamic>);
        return Right(res);
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
