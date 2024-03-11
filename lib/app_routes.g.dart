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
          path: 'material-dialog',
          factory: $ShowMaterialDialogRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'cupertino-dialog',
          factory: $ShowCupertinoDialogRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'no-transition-dialog',
          factory: $ShowNoTransitionDialogRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'material-bottom-sheet',
          factory: $ShowMaterialBottomSheetExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'cupertino-modal-popup',
          factory: $ShowCupertinoModalPopupRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'modal-scaffold',
          factory: $ShowModalScaffoldRouteExtension._fromState,
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

extension $ShowMaterialDialogRouteExtension on ShowMaterialDialogRoute {
  static ShowMaterialDialogRoute _fromState(GoRouterState state) =>
      const ShowMaterialDialogRoute();

  String get location => GoRouteData.$location(
        '/material-dialog',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowCupertinoDialogRouteExtension on ShowCupertinoDialogRoute {
  static ShowCupertinoDialogRoute _fromState(GoRouterState state) =>
      const ShowCupertinoDialogRoute();

  String get location => GoRouteData.$location(
        '/cupertino-dialog',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowNoTransitionDialogRouteExtension on ShowNoTransitionDialogRoute {
  static ShowNoTransitionDialogRoute _fromState(GoRouterState state) =>
      ShowNoTransitionDialogRoute(
        number:
            _$convertMapValue('number', state.uri.queryParameters, int.parse) ??
                1,
      );

  String get location => GoRouteData.$location(
        '/no-transition-dialog',
        queryParams: {
          if (number != 1) 'number': number.toString(),
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowMaterialBottomSheetExtension on ShowMaterialBottomSheet {
  static ShowMaterialBottomSheet _fromState(GoRouterState state) =>
      const ShowMaterialBottomSheet();

  String get location => GoRouteData.$location(
        '/material-bottom-sheet',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowCupertinoModalPopupRouteExtension
    on ShowCupertinoModalPopupRoute {
  static ShowCupertinoModalPopupRoute _fromState(GoRouterState state) =>
      const ShowCupertinoModalPopupRoute();

  String get location => GoRouteData.$location(
        '/cupertino-modal-popup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowModalScaffoldRouteExtension on ShowModalScaffoldRoute {
  static ShowModalScaffoldRoute _fromState(GoRouterState state) =>
      ShowModalScaffoldRoute(
        number:
            _$convertMapValue('number', state.uri.queryParameters, int.parse) ??
                1,
      );

  String get location => GoRouteData.$location(
        '/modal-scaffold',
        queryParams: {
          if (number != 1) 'number': number.toString(),
        },
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

String _$appRouterHash() => r'9d932378aeb6ffc8c01b2daf09b748f278c8a8ed';

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
