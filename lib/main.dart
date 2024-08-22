import 'package:book_app/core/utils/app_routers.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:book_app/features/Home/data/repo/home_repo_impl.dart';
import 'package:book_app/features/Home/presentation/manger/all_books/cubit/newst_books_cubit.dart';
import 'package:book_app/features/Home/presentation/manger/best_seller/cubit/best_seller_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                NewstBooksCubit(getIt.get<HomeRepoImpi>())..featshNewBooks()),
        BlocProvider(
            create: (context) => BestSellerCubit(getIt.get<HomeRepoImpi>())
              ..featshBestSellerBooks()),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark()
              .textTheme
              .apply(bodyColor: Colors.white, displayColor: Colors.white)),
          scaffoldBackgroundColor: const Color(0xff100B20),
        ),
      ),
    );
  }
}
