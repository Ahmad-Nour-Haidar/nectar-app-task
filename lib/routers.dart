import 'package:go_router/go_router.dart';
import 'package:task/views/screens/home_screen.dart';
import 'package:task/views/screens/onboarding_screen.dart';
import 'package:task/views/screens/order_accepted_screen.dart';
import 'package:task/views/screens/splash_screen.dart';

// GoRouter configuration
abstract final class AppRouter {
  static const splashScreen = '/';
  static const onboardingScreen = '/onboardingScreen';
  static const homeView = '/homeView';
  static const orderAcceptedScreen = '/orderAcceptedScreen';
  static const beveragesView = '/beverages';
  static const orderAcceptedView = '/orderAccepted';

  static final router = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: onboardingScreen,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: orderAcceptedScreen,
        builder: (context, state) => const OrderAcceptedScreen(),
      ),
    ],
  );
}
