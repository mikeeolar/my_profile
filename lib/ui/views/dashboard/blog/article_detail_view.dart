// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:my_portfolio/core/models/news.dart';
import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/blog/blog_viewmodel.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetailView extends StackedView<BlogViewModel> {
  const ArticleDetailView({Key? key, required this.article}) : super(key: key);

  final Articles article;

  @override
  Widget builder(BuildContext context, BlogViewModel viewModel, Widget? child) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Utils.darkWhiteNav,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                InkWell(
                    onTap: () => locator<NavigationService>().back(),
                    child: const CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      child: Icon(Icons.arrow_back_ios_new, color: kDarkColor),
                    )),
                SizedBox(width: 20.w),
                SizedBox(height: 20.h),
                Hero(
                  tag: article.title ?? '',
                  child: CachedNetworkImage(
                    imageUrl: article.urlToImage ?? '',
                    filterQuality: FilterQuality.low,
                    fit: BoxFit.fill,
                    progressIndicatorBuilder: (context, url, progress) =>
                        Shimmer.fromColors(
                      baseColor: Colors.grey[350]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 130.h,
                        color: Colors.white,
                      ),
                    ),
                    errorWidget: (context, _, __) => const Icon(
                      Icons.error,
                      color: kPrimaryColor,
                      size: 100,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Text(
                  article.title ?? '',
                  style: BrandTextStyles.bold.copyWith(
                    fontSize: 18.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  article.content ?? '',
                  style: BrandTextStyles.regular.copyWith(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5.h),
                InkWell(
                  onTap: () {
                    launch(article.url ?? '');
                  },
                  child: Text(
                    'Read more',
                    style: BrandTextStyles.medium.copyWith(
                      fontSize: 16.sp,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  BlogViewModel viewModelBuilder(BuildContext context) => BlogViewModel();
}
