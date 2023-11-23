import 'package:my_portfolio/core/data_source/utility_remote_data_source/utility_remote_data_source.dart';
import 'package:my_portfolio/core/models/news.dart';
import 'package:my_portfolio/core/utils/exports.dart';

class BlogViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final UtilityService _utilityService = locator<UtilityService>();

  final UtilityRemoteDataSource _utilityRemoteSource =
      locator<UtilityRemoteDataSource>();

  List<Articles>? get articles => _utilityService.articles;

  Future setup() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await fetchNews();
      setOnModelReadyCalled(true);
    });
  }

  Future fetchNews() async {
    setBusyForObject(articles, true);
    final data = await _utilityRemoteSource.getNews();

    data.fold((l) {
      setBusyForObject(articles, false);
      flusher(l.message, color: Colors.red);
    }, (r) {
      setBusyForObject(articles, false);
      _utilityService.articles = r.articles;
    });
  }

  void navigateToArticleDetail(Articles? article) {
    _navigationService.navigateTo(Routes.articleDetail, arguments: article);
  }
}
