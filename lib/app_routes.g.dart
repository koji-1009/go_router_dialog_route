// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'page',
          factory: $PageScreenRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'dialog',
          factory: $ShowDialogRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'dialog-paging',
          factory: $ShowDialogPagingRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sheet',
          factory: $ShowSheetRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PageScreenRouteExtension on PageScreenRoute {
  static PageScreenRoute _fromState(GoRouterState state) =>
      const PageScreenRoute();

  String get location => GoRouteData.$location(
        '/page',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowDialogRouteExtension on ShowDialogRoute {
  static ShowDialogRoute _fromState(GoRouterState state) =>
      const ShowDialogRoute();

  String get location => GoRouteData.$location(
        '/dialog',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowDialogPagingRouteExtension on ShowDialogPagingRoute {
  static ShowDialogPagingRoute _fromState(GoRouterState state) =>
      ShowDialogPagingRoute(
        number:
            _$convertMapValue('number', state.uri.queryParameters, int.parse) ??
                0,
      );

  String get location => GoRouteData.$location(
        '/dialog-paging',
        queryParams: {
          if (number != 0) 'number': number.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowSheetRouteExtension on ShowSheetRoute {
  static ShowSheetRoute _fromState(GoRouterState state) =>
      const ShowSheetRoute();

  String get location => GoRouteData.$location(
        '/sheet',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appRouterHash() => r'081748e09aa31cb410637e79e7f83ada1ef5fb56';

/// See also [appRouter].
@ProviderFor(appRouter)
final appRouterProvider = AutoDisposeProvider<GoRouter>.internal(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppRouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
