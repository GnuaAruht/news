import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/main/main_bloc.dart';
import '../widgets/news_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      body: Center(
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return state.when(
                initial: () => const Text('Initial'),
                loading: () => const Text('Loading'),
                fetched: (articles) {
                  return NewsListWidget(articles: articles);
                },
                error: (errorMessage) => Text(errorMessage));
          },
        ),
      ),
    );
  }
}
