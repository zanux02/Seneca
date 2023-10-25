import 'package:go_router/go_router.dart';
import 'package:practicaclase/presentation/screens/home/home_screen.dart';
import 'package:practicaclase/presentation/screens/login/login_screen.dart';


final appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),

    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    )
  ],
);