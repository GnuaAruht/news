import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/presentation/pages/article_detail_page.dart';
import 'package:shimmer/shimmer.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../core/constants/ui_constants.dart';
import '../../domain/entities/article.dart';
import '../../domain/entities/category.dart';
import '../blocs/main/main_bloc.dart';
import '../widgets/article_item_widget.dart';
import '../widgets/loading_failed_widget.dart';
import '../widgets/loading_list_widget.dart';
import '../widgets/loading_widget.dart';
import 'article_list_page.dart';
import 'category_list_page.dart';
import 'search_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _MainAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<MainBloc>().add(const MainEvent.fetchArticles());
        },
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return state.when(
                loading: () => const _MainLoadingListWidget(),
                fetched: (articles) => articles.isNotEmpty
                    ? _MainView(articles: articles)
                    : SizedBox.fromSize(),
                error: (_) => LoadingFailedWidget(
                      onRetry: () {
                        context
                            .read<MainBloc>()
                            .add(const MainEvent.fetchArticles());
                      },
                    ));
          },
        ),
      ),
    );
  }
}

class _MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const _MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(SearchPage.routeName);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          decoration: ShapeDecoration(
              color: Colors.grey[200], shape: const StadiumBorder()),
          child: Row(
            children: const [
              Icon(Icons.search, color: Colors.grey),
              SizedBox(
                width: DEFAULT_PADDING,
              ),
              Text('Search News',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () async {
              final Category? _category =
                  await Navigator.pushNamed(context, CategoryListPage.routeName)
                      as Category?;

              if (_category != null) {
                Navigator.pushNamed(context, ArticleListPage.routeName,
                    arguments: _category);
              }
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MainView extends StatelessWidget {
  final List<Article> articles;
  const _MainView({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _TopArticleListWidget(
            articles: articles.sublist(0, 5),
          ),
          const SizedBox(
            height: 12.0,
          ),
          _RecentArticleListWidget(articles: articles.sublist(5)),
        ],
      ),
    );
  }
}

class _TopArticleListWidget extends StatefulWidget {
  final List<Article> articles;

  const _TopArticleListWidget({Key? key, required this.articles})
      : super(key: key);

  @override
  State<_TopArticleListWidget> createState() => _TopArticleListWidgetState();
}

class _TopArticleListWidgetState extends State<_TopArticleListWidget> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Top News',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                  children: widget.articles.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(
                            _currentIndex == entry.key ? 0.8 : 0.4)),
                  ),
                );
              }).toList())
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                aspectRatio: 1.4,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                }),
            items: List.generate(
                widget.articles.length,
                (index) => _TopArticleItemWidget(
                      article: widget.articles[index],
                    )),
          )
        ],
      ),
    );
  }
}

class _TopArticleItemWidget extends StatelessWidget {
  final Article article;
  const _TopArticleItemWidget({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ArticleDetailPage.routeName,
            arguments: article);
      },
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              FadeInImage.memoryNetwork(
                imageErrorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.red.withOpacity(0.4),
                    child: const Icon(Icons.error_outline_outlined),
                  );
                },
                placeholder: kTransparentImage,
                image: article.urlToImage ?? '',
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.8)
                ], stops: const [
                  0.4,
                  0.9
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      article.title,
                      maxLines: 3,
                      style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Text(
                          article.source.name,
                          style: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          article.formattedDate,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _RecentArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  const _RecentArticleListWidget({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent News',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ArticleListPage.routeName);
                },
                child: const Text(
                  'View all',
                  style: TextStyle(color: Colors.blue, fontSize: 16.0),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          _ArticleListWidget(articles: articles),
          const SizedBox(
            height: 8.0,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ArticleListPage.routeName);
            },
            child: const Text(
              'View all',
              style: TextStyle(color: Colors.blue, fontSize: 16.0),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ],
      ),
    );
  }
}

class _ArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  const _ArticleListWidget({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 4.0,
          );
        },
        itemBuilder: (context, index) {
          return ArticleItemWidget(
            article: articles[index],
          );
        });
  }
}

class _MainLoadingListWidget extends StatelessWidget {
  const _MainLoadingListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: false,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      LoadingWidget(
                        width: 100,
                      ),
                      LoadingWidget(
                        width: 100,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child:
                        AspectRatio(aspectRatio: 1.4, child: LoadingWidget()),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      LoadingWidget(
                        width: 100,
                      ),
                      LoadingWidget(
                        width: 80,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  const LoadingListWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
