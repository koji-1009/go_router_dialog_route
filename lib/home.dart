import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.onNavigateToPage,
    required this.onNavigateToMaterialDialog,
    required this.onNavigateToCupertinoDialog,
    required this.onNavigateToNoTransitionDialog,
    required this.onNavigateMaterialBottomSheet,
    required this.onNavigateCupertinoModalPopup,
    required this.onNavigateModalScaffold,
  });

  final VoidCallback onNavigateToPage;
  final VoidCallback onNavigateToMaterialDialog;
  final VoidCallback onNavigateToCupertinoDialog;
  final VoidCallback onNavigateToNoTransitionDialog;
  final VoidCallback onNavigateMaterialBottomSheet;
  final VoidCallback onNavigateCupertinoModalPopup;
  final VoidCallback onNavigateModalScaffold;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: onNavigateToPage,
              child: const Text('Show Page'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: onNavigateToMaterialDialog,
              child: const Text('Show Material Dialog'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: onNavigateToCupertinoDialog,
              child: const Text('Show Cupertino Dialog'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: onNavigateToNoTransitionDialog,
              child: const Text('No Transition Dialog'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: onNavigateMaterialBottomSheet,
              child: const Text('Show Material Bottom Sheet'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: onNavigateCupertinoModalPopup,
              child: const Text('Show Cupertino Modal Popup'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton(
              onPressed: onNavigateModalScaffold,
              child: const Text('Show Modal Scaffold'),
            ),
          ],
        ),
      ),
    );
  }
}

class PageScreen extends StatelessWidget {
  const PageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page'),
      ),
      body: const Center(
        child: Text('This is the page screen'),
      ),
    );
  }
}
