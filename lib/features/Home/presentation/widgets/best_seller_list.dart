import 'package:book_app/features/Home/presentation/widgets/best_seller_items.dart';
import 'package:flutter/material.dart';
class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return const BestSellerItems();
    },childCount: 10));
  }
}
