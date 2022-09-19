import 'package:admin/lib.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class {{page.pascalCase()}}LoadingPage extends HookConsumerWidget {
  const {{page.pascalCase()}}LoadingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AppLayout(
      mobile: _Mobile{{page.pascalCase()}}LoadingPage(),
      tablet: _Tablet{{page.pascalCase()}}LoadingPage(),
      desktop: _Desktop{{page.pascalCase()}}LoadingPage(),
    );
  }
}

// loading page for mobile
class _Mobile{{page.pascalCase()}}LoadingPage extends HookConsumerWidget {
  const _Mobile{{page.pascalCase()}}LoadingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// loading page for tablet
class _Tablet{{page.pascalCase()}}LoadingPage extends HookConsumerWidget {
  const _Tablet{{page.pascalCase()}}LoadingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// loading page for desktop
class _Desktop{{page.pascalCase()}}LoadingPage extends HookConsumerWidget {
  const _Desktop{{page.pascalCase()}}LoadingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
