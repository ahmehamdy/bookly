import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/Home/presentation/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          const SizedBox(height: 160, child: CustomBookImage()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child:  const Text(
                    "The Jungle BOOK",
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
              const Text("Rudyard Kipling", style: Styles.textStyle14),
              SizedBox(
                 width: MediaQuery.of(context).size.width*0.5,
                 child: const Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("19.9 \$ ", style: Styles.priceStyle),
                     Row(
                       children: [
                         Icon(Icons.star,color: Colors.yellow,),
                         Text("4.8", style: Styles.textStyle16),
                         Text("(2390)", style: Styles.textStyle14),
                       ],
                     )

                   ],
                 ),
               ),
            ],
          )
        ],
      ),
    );
  }
}
