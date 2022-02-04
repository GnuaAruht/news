import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/constants/constants.dart';
import 'loading_widget.dart';

class LoadingListWidget extends StatelessWidget {
  const LoadingListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      enabled: false,
      child: ListView.separated(
        itemCount: 60,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        separatorBuilder: (context, index) => const SizedBox(
          height: 8.0,
        ),
        itemBuilder: (context, index) => const _LoadingItemWidiget(),
      ),
    );
  }
}

class _LoadingItemWidiget extends StatelessWidget {
  const _LoadingItemWidiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: DEFAULT_ITEM_HEIGHT,
      child: Row(
        children: [
          const LoadingWidget(
            width: 120.0,
            height: 100,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              children: [
                const LoadingWidget(
                  height: 16.0,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const LoadingWidget(
                  height: 16.0,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const LoadingWidget(
                  height: 16.0,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    LoadingWidget(
                      width: 80,
                    ),
                    LoadingWidget(
                      width: 80,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
