import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/config/theme.dart';
import 'package:news/injector.dart';
import 'package:news/presentation/blocs/main/main_bloc.dart';

import 'presentation/pages/main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDepedencies();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: buildlightTheme(),
      darkTheme: ThemeData.dark(),
      home: BlocProvider<MainBloc>(
        create: (context) =>
            injector.get<MainBloc>()..add(const MainEvent.fetchNewsList()),
        child: const MainPage(),
      ),
    );
  }
}
