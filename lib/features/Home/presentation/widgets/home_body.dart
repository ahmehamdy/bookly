import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/Home/presentation/widgets/CustomAppBar.dart';
import 'package:book_app/features/Home/presentation/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';
import 'best_seller_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureListView(),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 40, bottom: 20),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        BestSellerList(),
      ],
    );
  }
}
