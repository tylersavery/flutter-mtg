// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    MtgCardListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MtgCardListScreen(),
      );
    },
    MtgCardDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<MtgCardDetailRouteArgs>(
          orElse: () => MtgCardDetailRouteArgs(id: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MtgCardDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };
}

/// generated route for
/// [MtgCardListScreen]
class MtgCardListRoute extends PageRouteInfo<void> {
  const MtgCardListRoute({List<PageRouteInfo>? children})
      : super(
          MtgCardListRoute.name,
          initialChildren: children,
        );

  static const String name = 'MtgCardListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MtgCardDetailScreen]
class MtgCardDetailRoute extends PageRouteInfo<MtgCardDetailRouteArgs> {
  MtgCardDetailRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          MtgCardDetailRoute.name,
          args: MtgCardDetailRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'MtgCardDetailRoute';

  static const PageInfo<MtgCardDetailRouteArgs> page =
      PageInfo<MtgCardDetailRouteArgs>(name);
}

class MtgCardDetailRouteArgs {
  const MtgCardDetailRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'MtgCardDetailRouteArgs{key: $key, id: $id}';
  }
}
