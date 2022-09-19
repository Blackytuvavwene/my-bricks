import 'package:admin/lib.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';

// {{page.lowerCase()}} error
class {{page.pascalCase()}}Error extends HookConsumerWidget {
  const {{page.pascalCase()}}Error({
    Key? key,
    this.error,
  }) : super(key: key);
  final String? error;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppLayout(
      mobile: _{{page.pascalCase()}}ErrorMobile(
        error: error,
      ),
      tablet: _{{page.pascalCase()}}ErrorTablet(
        error: error,
      ),
      desktop: _{{page.pascalCase()}}ErrorDesktop(
        error: error,
      ),
    );
  }
}

// {{page.lowerCase()}} error for mobile
class _{{page.pascalCase()}}ErrorMobile extends HookConsumerWidget {
  const _{{page.pascalCase()}}ErrorMobile({
    Key? key,
    this.error,
  }) : super(key: key);
  final String? error;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.errorContainer,
      child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Column(
            children: [
              DText(
                text: error.toString(),
                textColor: Theme.of(context).colorScheme.onErrorContainer,
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomElevatedButton(
                text: 'Refresh',
                onPressed: () {
                  //TODO: refresh activities
                  // ref.read(activitiesProvider.notifier).getActivities();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// {{page.lowerCase()}} error for tablet
class _{{page.pascalCase()}}ErrorTablet extends HookConsumerWidget {
  const _{{page.pascalCase()}}ErrorTablet({
    Key? key,
    this.error,
  }) : super(key: key);
  final String? error;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.errorContainer,
      child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Column(
            children: [
              DText(
                text: error.toString(),
                textColor: Theme.of(context).colorScheme.onErrorContainer,
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomElevatedButton(
                text: 'Refresh',
                onPressed: () {
                  //TODO: refresh activities
                  // ref.read(activitiesProvider.notifier).getActivities();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// {{page.lowerCase()}} for desktop
class _{{page.pascalCase()}}ErrorDesktop extends HookConsumerWidget {
  const _{{page.pascalCase()}}ErrorDesktop({
    Key? key,
    this.error,
  }) : super(key: key);
  final String? error;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.errorContainer,
      child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Column(
            children: [
              DText(
                text: error.toString(),
                textColor: Theme.of(context).colorScheme.onErrorContainer,
              ),
              SizedBox(
                height: 6.h,
              ),
              CustomElevatedButton(
                text: 'Refresh',
                onPressed: () {
                  //TODO: refresh activities
                  // ref.read(activitiesProvider.notifier).getActivities();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}