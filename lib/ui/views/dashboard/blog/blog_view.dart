// ignore_for_file: deprecated_member_use

import 'package:my_portfolio/core/utils/exports.dart';
import 'package:my_portfolio/ui/views/dashboard/blog/blog_viewmodel.dart';
import 'package:my_portfolio/ui/views/dashboard/dashboard_viewmodel.dart';
import 'package:my_portfolio/ui/widgets/animation/loading_animation.dart';
import 'package:shimmer/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BlogView extends StackedView<BlogViewModel> {
  const BlogView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(BlogViewModel viewModel) {
    viewModel.setup();
  }

  @override
  Widget builder(BuildContext context, BlogViewModel viewModel, Widget? child) {
    return ReactivePartialBuild<DashboardViewModel>(
      builder: (context, parentModel) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: Utils.darkWhiteNav,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: Text(
                    'Blog',
                    style: BrandTextStyles.bold.copyWith(
                      fontSize: 24.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                if (!viewModel.onModelReadyCalled)
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: LoadingAnimation(),
                        ),
                      ],
                    ),
                  )
                else
                  Expanded(
                      child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    itemCount: viewModel.articles?.length ?? 0,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 25.h),
                    itemBuilder: (context, i) {
                      final article = viewModel.articles?[i];
                      return GestureDetector(
                        onTap: () {
                          viewModel.navigateToArticleDetail(article);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Hero(
                              tag: article?.title ?? '',
                              child: CachedNetworkImage(
                                  imageUrl: article?.urlToImage ?? '',
                                  filterQuality: FilterQuality.low,
                                  fit: BoxFit.fill,
                                  progressIndicatorBuilder:
                                      (context, url, progress) =>
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
                                      )),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              article?.title ?? '',
                              style: BrandTextStyles.bold.copyWith(
                                  fontSize: 20.sp, color: Colors.black),
                            ),
                            Text(
                              'Author:  ${article?.title ?? ''}',
                              style: BrandTextStyles.medium.copyWith(
                                  fontSize: 16.sp, color: Colors.black),
                            ),
                            Text(
                              'Source:  ${article?.source?.name ?? ''}',
                              style: BrandTextStyles.medium.copyWith(
                                  fontSize: 16.sp, color: Colors.black),
                            ),
                            Text(
                              article?.description ?? '',
                              style: BrandTextStyles.regular.copyWith(
                                  fontSize: 16.sp, color: Colors.black),
                            )
                          ],
                        ),
                      );
                    },
                  )),
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
