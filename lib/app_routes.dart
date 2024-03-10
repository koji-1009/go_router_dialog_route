import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_dialog_route/dialog.dart';
import 'package:go_router_dialog_route/home.dart';
import 'package:go_router_dialog_route/sheet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';

@riverpod
GoRouter appRouter(
  AppRouterRef ref,
) =>
    GoRouter(
      debugLogDiagnostics: true,
      initialLocation: '/',
      routes: $appRoutes,
    );

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PageScreenRoute>(
      path: 'page',
    ),
    TypedGoRoute<ShowMaterialDialogRoute>(
      path: 'material-dialog',
    ),
    TypedGoRoute<ShowCupertinoDialogRoute>(
      path: 'cupertino-dialog',
    ),
    TypedGoRoute<ShowNoTransitionDialogRoute>(
      path: 'no-transition-dialog',
    ),
    TypedGoRoute<ShowSheetRoute>(
      path: 'sheet',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => HomeScreen(
        onNavigateToPage: () {
          const PageScreenRoute().go(context);
        },
        onNavigateToMaterialDialog: () {
          const ShowMaterialDialogRoute().go(context);
        },
        onNavigateToCupertinoDialog: () {
          const ShowCupertinoDialogRoute().go(context);
        },
        onNavigateToNoTransitionDialog: () {
          const ShowNoTransitionDialogRoute().go(context);
        },
        onNavigateToSheet: () {
          const ShowSheetRoute().go(context);
        },
      );
}

class PageScreenRoute extends GoRouteData {
  const PageScreenRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialPage<void>(
      child: PageScreen(),
    );
  }
}

class ShowMaterialDialogRoute extends GoRouteData {
  const ShowMaterialDialogRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const MaterialDialogPage<void>(
      child: MaterialDialog(),
    );
  }
}

class ShowCupertinoDialogRoute extends GoRouteData {
  const ShowCupertinoDialogRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const CupertinoDialogPage<void>(
      child: CupertinoDialog(),
    );
  }
}

class ShowNoTransitionDialogRoute extends GoRouteData {
  const ShowNoTransitionDialogRoute({
    this.number = 1,
  });

  final int number;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionDialogPage<void>(
      key: ValueKey(number),
      barrierColor: Colors.black54,
      child: NoTransitionDialog(
        number: number,
        onNextPage: () {
          ShowNoTransitionDialogRoute(
            number: number + 1,
          ).go(context);
        },
        onPreviousPage: () {
          if (number <= 1) {
            context.pop();
            return;
          }

          ShowNoTransitionDialogRoute(
            number: number - 1,
          ).go(context);
        },
      ),
    );
  }
}

class ShowSheetRoute extends GoRouteData {
  const ShowSheetRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return SheetPage(
      builder: (context) => const ExampleSheet(),
      isScrollControlled: true,
    );
  }
}
