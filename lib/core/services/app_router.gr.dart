// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:pokedex/core/models/all_pokemons_model.dart' as _i6;
import 'package:pokedex/ui/views/dashboard/dashboard.dart' as _i1;
import 'package:pokedex/ui/views/detail/detail.dart' as _i2;
import 'package:pokedex/ui/views/welcoming/welcoming.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RouteDashboard.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ViewDashboard(),
      );
    },
    RouteDetailPage.name: (routeData) {
      final args = routeData.argsAs<RouteDetailPageArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ViewDetailPage(
          key: args.key,
          pokemon: args.pokemon,
        ),
      );
    },
    RouteWelcoming.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ViewWelcoming(),
      );
    },
  };
}

/// generated route for
/// [_i1.ViewDashboard]
class RouteDashboard extends _i4.PageRouteInfo<void> {
  const RouteDashboard({List<_i4.PageRouteInfo>? children})
      : super(
          RouteDashboard.name,
          initialChildren: children,
        );

  static const String name = 'RouteDashboard';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ViewDetailPage]
class RouteDetailPage extends _i4.PageRouteInfo<RouteDetailPageArgs> {
  RouteDetailPage({
    _i5.Key? key,
    required _i6.Pokemon pokemon,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RouteDetailPage.name,
          args: RouteDetailPageArgs(
            key: key,
            pokemon: pokemon,
          ),
          initialChildren: children,
        );

  static const String name = 'RouteDetailPage';

  static const _i4.PageInfo<RouteDetailPageArgs> page = _i4.PageInfo<RouteDetailPageArgs>(name);
}

class RouteDetailPageArgs {
  const RouteDetailPageArgs({
    this.key,
    required this.pokemon,
  });

  final _i5.Key? key;

  final _i6.Pokemon pokemon;

  @override
  String toString() {
    return 'RouteDetailPageArgs{key: $key, pokemon: $pokemon}';
  }
}

/// generated route for
/// [_i3.ViewWelcoming]
class RouteWelcoming extends _i4.PageRouteInfo<void> {
  const RouteWelcoming({List<_i4.PageRouteInfo>? children})
      : super(
          RouteWelcoming.name,
          initialChildren: children,
        );

  static const String name = 'RouteWelcoming';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
