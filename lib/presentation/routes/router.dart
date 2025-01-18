import 'package:auto_route/auto_route.dart';
import 'package:cluedo_neu/presentation/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

 @override
 List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: CreateGameRoute.page),
    AutoRoute(page: GameRoute.page),
 ];
}