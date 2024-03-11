import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

const _defaultScrollControlDisabledMaxHeightRatio = 9.0 / 16.0;

class MaterialBottomSheetPage<T> extends Page<T> {
  const MaterialBottomSheetPage({
    super.key,
    super.name,
    super.arguments,
    super.restorationId,
    required this.child,
    this.barrierLabel,
    this.barrierOnTapHint,
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.modalBarrierColor,
    this.isDismissible = true,
    this.enableDrag = true,
    this.showDragHandle,
    required this.isScrollControlled,
    this.scrollControlDisabledMaxHeightRatio =
        _defaultScrollControlDisabledMaxHeightRatio,
    this.transitionAnimationController,
    this.anchorPoint,
    this.useSafeArea = false,
  });

  final Widget child;
  final String? barrierLabel;
  final String? barrierOnTapHint;
  final Color? backgroundColor;
  final double? elevation;
  final ShapeBorder? shape;
  final Clip? clipBehavior;
  final BoxConstraints? constraints;
  final Color? modalBarrierColor;
  final bool isDismissible;
  final bool enableDrag;
  final bool? showDragHandle;
  final bool isScrollControlled;
  final double scrollControlDisabledMaxHeightRatio;
  final AnimationController? transitionAnimationController;
  final Offset? anchorPoint;
  final bool useSafeArea;

  @override
  Route<T> createRoute(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return ModalBottomSheetRoute<T>(
      builder: (context) => child,
      barrierLabel: barrierLabel ?? localizations.scrimLabel,
      barrierOnTapHint:
          localizations.scrimOnTapHint(localizations.bottomSheetLabel),
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      modalBarrierColor: modalBarrierColor ??
          Theme.of(context).bottomSheetTheme.modalBarrierColor,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: showDragHandle,
      isScrollControlled: isScrollControlled,
      scrollControlDisabledMaxHeightRatio: scrollControlDisabledMaxHeightRatio,
      settings: this,
      transitionAnimationController: transitionAnimationController,
      anchorPoint: anchorPoint,
      useSafeArea: useSafeArea,
    );
  }
}

class CupertinoBottomModalPage<T> extends Page<T> {
  const CupertinoBottomModalPage({
    super.key,
    required this.child,
    this.filter,
    this.barrierColor = kCupertinoModalBarrierColor,
    this.barrierDismissible = true,
    this.semanticsDismissible = false,
    this.anchorPoint,
  });

  final Widget child;
  final ImageFilter? filter;
  final Color barrierColor;
  final bool barrierDismissible;
  final bool semanticsDismissible;
  final Offset? anchorPoint;

  @override
  Route<T> createRoute(BuildContext context) {
    return CupertinoModalPopupRoute<T>(
      builder: (context) => child,
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      semanticsDismissible: semanticsDismissible,
      filter: filter,
      settings: this,
      anchorPoint: anchorPoint,
    );
  }
}

class MaterialBottomSheet extends StatelessWidget {
  const MaterialBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Modal BottomSheet'),
              const Spacer(),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () {
                  context.pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CupertinoModalPopUpSheet extends StatelessWidget {
  const CupertinoModalPopUpSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoActionSheet(
      title: const Text('Cupertino Modal Popup'),
      message: const Text('This is a Cupertino Modal Popup'),
      actions: [
        CupertinoActionSheetAction(
          onPressed: () {
            context.pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}

class ModalScaffold extends StatelessWidget {
  const ModalScaffold({
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Scaffold'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is a modal scaffold'),
            TextButton(
              onPressed: onPreviousPage,
              child: const Text('Previous'),
            ),
            TextButton(
              onPressed: onNextPage,
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
