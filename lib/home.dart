import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.onNavigateToPage,
    required this.onNavigateToMaterialDialog,
    required this.onNavigateToCupertinoDialog,
    required this.onNavigateToNoTransitionDialog,
    required this.onNavigateToSheet,
  });

  final VoidCallback onNavigateToPage;
  final VoidCallback onNavigateToMaterialDialog;
  final VoidCallback onNavigateToCupertinoDialog;
  final VoidCallback onNavigateToNoTransitionDialog;
  final VoidCallback onNavigateToSheet;

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
              onPressed: onNavigateToSheet,
              child: const Text('Show Sheet'),
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
