import 'package:auto_route/auto_route.dart';
import 'package:mtg/src/screens/mtg_card_detail_screen.dart';
import 'package:mtg/src/screens/mtg_card_list_screen.dart';
import 'package:flutter/foundation.dart';
part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, path: "/", page: MtgCardListRoute.page),
        AutoRoute(path: "/card/:id", page: MtgCardDetailRoute.page),
      ];
}
