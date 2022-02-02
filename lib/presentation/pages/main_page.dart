import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/ui_constants.dart';
import '../../domain/entities/article.dart';
import '../../injector.dart';
import '../blocs/main/main_bloc.dart';
import '../blocs/search/search_bloc.dart';
import '../widgets/article_list_widget.dart';
import 'category_list_page.dart';
import 'search_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _MainAppBar(),
      body: RefreshIndicator(
        onRefresh: () async {},
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Text('Loading'),
                fetched: (articles) => _MainView(articles: articles),
                error: (errorMessage) => Text(errorMessage));
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
      // backgroundColor: Colors.white,
      title: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => BlocProvider(
                    create: (context) => injector.get<SearchBloc>(),
                    child: const SearchPage(),
                  )));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          decoration: ShapeDecoration(
              color: Colors.grey[400], shape: const StadiumBorder()),
          child: Row(
            children: const [
              Icon(Icons.search),
              SizedBox(
                width: DEFAULT_PADDING,
              ),
              Text('Search News',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400))
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const CategoryListPage()));
            },
            icon: const Icon(Icons.menu))
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
            articles: articles,
          ),
          _ArticleListWidget(articles: articles),
        ],
      ),
    );
  }
}

class _TopArticleListWidget extends StatelessWidget {
  final int _currentIndex = 0;
  final CarouselController _controller = CarouselController();
  final List<Article> articles;

  _TopArticleListWidget({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.all(DEFAULT_PADDING),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Top News'),
              Container(
                height: 20.0,
                width: 100,
                decoration: const BoxDecoration(color: Colors.green),
              ),
            ],
          ),
          const SizedBox(
            height: 4.0,
          ),
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                aspectRatio: 2.0,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: const Duration(milliseconds: 500),
                onPageChanged: (index, reason) {}),
            items: List.generate(
                3,
                (index) => _TopArticleItemWidget(
                      article: articles[index],
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
    return Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            article.urlToImage ?? '',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
                    stops: const [0.4, 0.88],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Text(
          //       article.title,
          //       maxLines: 2,
          //       style: const TextStyle(overflow: TextOverflow.ellipsis),
          //     ),
          //     const SizedBox(
          //       height: DEFAULT_PADDING,
          //     ),
          //     Row(
          //       children: [Text(article.source.name), const Text('12/12/12')],
          //     )
          //   ],
          // )
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(DEFAULT_PADDING),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Recent News'), Text('View all')],
          ),
        ),
        ArticleListWidget(articles: articles),
        ElevatedButton(onPressed: () {}, child: const Text('View all'))
      ],
    );
  }
}
