import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MaterialDialogPage<T> extends Page<T> {
  const MaterialDialogPage({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    required this.child,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.anchorPoint,
    this.traversalEdgeBehavior,
  });

  final Widget child;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final bool useSafeArea;
  final Offset? anchorPoint;
  final TraversalEdgeBehavior? traversalEdgeBehavior;

  @override
  Route<T> createRoute(BuildContext context) {
    return DialogRoute<T>(
      context: context,
      builder: (context) => child,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      barrierLabel: barrierLabel,
      useSafeArea: useSafeArea,
      settings: this,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior:
          traversalEdgeBehavior ?? TraversalEdgeBehavior.closedLoop,
    );
  }
}

class CupertinoDialogPage<T> extends Page<T> {
  const CupertinoDialogPage({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    required this.child,
    this.barrierDismissible = false,
    this.barrierColor,
    this.barrierLabel,
    this.anchorPoint,
  });

  final Widget child;
  final bool barrierDismissible;
  final Color? barrierColor;
  final String? barrierLabel;
  final Offset? anchorPoint;

  @override
  Route<T> createRoute(BuildContext context) {
    return CupertinoDialogRoute<T>(
      context: context,
      builder: (context) => child,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      settings: this,
      anchorPoint: anchorPoint,
    );
  }
}

class NoTransitionDialogPage<T> extends Page<T> {
  const NoTransitionDialogPage({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    required this.child,
    this.barrierColor = const Color(0x80000000),
    this.barrierDismissible = true,
    this.barrierLabel,
    this.anchorPoint,
    this.traversalEdgeBehavior,
  });

  final Widget child;
  final Color? barrierColor;
  final bool barrierDismissible;
  final String? barrierLabel;
  final Offset? anchorPoint;
  final TraversalEdgeBehavior? traversalEdgeBehavior;

  @override
  Route<T> createRoute(BuildContext context) {
    return RawDialogRoute<T>(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      transitionDuration: Duration.zero,
      transitionBuilder: null,
      settings: this,
      anchorPoint: anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior,
    );
  }
}

class MaterialDialog extends StatelessWidget {
  const MaterialDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Material Dialog'),
      content: const Text('This is a material dialog'),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class CupertinoDialog extends StatelessWidget {
  const CupertinoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Cupertino Dialog'),
      content: const Text('This is a cupertino dialog'),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            context.pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

class NoTransitionDialog extends StatelessWidget {
  const NoTransitionDialog({
    super.key,
    required this.number,
    required this.onNextPage,
    required this.onPreviousPage,
  });

  final int number;
  final void Function() onNextPage;
  final void Function() onPreviousPage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('No transition dialog: $number'),
      actions: [
        TextButton(
          onPressed: onPreviousPage,
          child: const Text('Previous'),
        ),
        TextButton(
          onPressed: onNextPage,
          child: const Text('Next'),
        ),
      ],
    );
  }
}
