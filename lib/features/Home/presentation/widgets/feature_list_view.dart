import 'package:book_app/features/Home/presentation/manger/all_books/cubit/newst_books_cubit.dart';
import 'package:book_app/features/Home/presentation/manger/all_books/cubit/newst_books_state.dart';
import 'package:book_app/features/Home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstBooksCubit, NewstBooksState>(
      builder: (context, stat) {
        if (stat is NewstBooksSucces) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.29,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const CustomBookImage();
              },
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
            ),
          );
        } else if (stat is NewstBooksFaliures) {
          return Text(stat.error);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
