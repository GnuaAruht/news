import 'package:flutter/material.dart';
import 'package:news/core/constants/ui_constants.dart';
import 'package:news/domain/entities/category.dart';
import 'package:news/presentation/pages/article_list_page.dart';

class CategoryListPage extends StatelessWidget {
  const CategoryListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: DEFAULT_PADDING),
          child: Column(
            children: [
              SizedBox(
                height: kToolbarHeight,
                child: Row(
                  children: [
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.close))
                  ],
                ),
              ),
              const Text(
                'Filter News Category',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(
                height: DEFAULT_PADDING,
              ),
              ...Category.values
                  .map((category) => _CategoryItemWidget(category: category))
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryItemWidget extends StatelessWidget {
  final Category category;
  const _CategoryItemWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const ArticleListPage()));
      },
      child: Container(
        padding: const EdgeInsets.all(DEFAULT_PADDING * 2.5),
        alignment: Alignment.center,
        child: Text(
          category.title,
          style: const TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
