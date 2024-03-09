import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogPage<T> extends Page<T> {
  const DialogPage({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    required this.builder,
    this.barrierColor = Colors.black54,
    this.barrierDismissible = true,
    this.barrierLabel,
    this.useSafeArea = true,
    this.anchorPoint,
    this.traversalEdgeBehavior,
  });

  final WidgetBuilder builder;
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
      builder: builder,
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

class ExampleDialog extends StatelessWidget {
  const ExampleDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Simple Dialog'),
      content: const Text('This is a simple dialog'),
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

class ExampleSectionDialog extends StatelessWidget {
  const ExampleSectionDialog({
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
    return SimpleDialog(
      title: Text('Paging Dialog: Page $number'),
      children: [
        SimpleDialogOption(
          onPressed: onPreviousPage,
          child: const Text('Previous Page'),
        ),
        SimpleDialogOption(
          onPressed: onNextPage,
          child: const Text('Next Page'),
        ),
      ],
    );
  }
}
