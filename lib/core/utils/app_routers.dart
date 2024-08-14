import 'package:book_app/features/Home/presentation/home_view.dart';
import 'package:book_app/features/splash/presentation/Splash_View.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView='/homeview';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    )
  ]);
}
