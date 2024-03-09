import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.onNavigateToPage,
    required this.onNavigateToDialog,
    required this.onNavigateToPagingDialog,
    required this.onNavigateToSheet,
  });

  final VoidCallback onNavigateToPage;
  final VoidCallback onNavigateToDialog;
  final VoidCallback onNavigateToPagingDialog;
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
              onPressed: onNavigateToDialog,
              child: const Text('Show Dialog'),
            ),
            const SizedBox(
              height: 16,
            ),
            FilledButton.tonal(
              onPressed: onNavigateToPagingDialog,
              child: const Text('Paging Dialog'),
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
