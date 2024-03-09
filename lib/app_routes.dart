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
      initialLocation: '/',
      routes: $appRoutes,
    );

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PageScreenRoute>(
      path: 'page',
    ),
    TypedGoRoute<ShowDialogRoute>(
      path: 'dialog',
    ),
    TypedGoRoute<ShowDialogPagingRoute>(
      path: 'dialog-paging',
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
        onNavigateToDialog: () {
          const ShowDialogRoute().go(context);
        },
        onNavigateToPagingDialog: () {
          const ShowDialogPagingRoute().go(context);
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

class ShowDialogRoute extends GoRouteData {
  const ShowDialogRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return DialogPage<void>(
      builder: (context) => const ExampleDialog(),
    );
  }
}

class ShowDialogPagingRoute extends GoRouteData {
  const ShowDialogPagingRoute({
    this.number = 0,
  });

  final int number;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return DialogPage<void>(
      key: ValueKey(number),
      builder: (context) => ExampleSectionDialog(
        number: number,
        onNextPage: () {
          ShowDialogPagingRoute(
            number: number + 1,
          ).go(context);
        },
        onPreviousPage: () {
          if (number == 0) {
            context.pop();
            return;
          }

          ShowDialogPagingRoute(
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
