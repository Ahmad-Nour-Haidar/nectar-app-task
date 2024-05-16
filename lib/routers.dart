import 'package:go_router/go_router.dart';
import 'package:task/views/screens/splash_screen.dart';

// GoRouter configuration
abstract final class AppRouter {
  static const splashScreen = '/';
  static const onboardingScreen = '/onboardingScreen';

  static final router = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      // GoRoute(
      //   path: onboardingScreen,
      //   builder: (context, state) => const OnboardingScreen(),
      // ),
    ],
  );
}
