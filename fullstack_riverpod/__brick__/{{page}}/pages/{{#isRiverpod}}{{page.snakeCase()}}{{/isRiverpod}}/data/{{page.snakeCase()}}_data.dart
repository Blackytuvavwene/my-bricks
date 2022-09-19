import 'package:admin/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';


// {{page.lowerCase()}} data
class {{page.pascalCase()}}Data extends ConsumerWidget {
  const {{page.pascalCase()}}Data({
    Key? key,
    this.data,
  }) : super(key: key);
  final String? data;
  // TODO: change this to your data type
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppLayout(
      mobile: _{{page.pascalCase()}}DataMobile(
        data: data,
      ),
      tablet: _{{page.pascalCase()}}DataTablet(
        data: data,
      ),
      desktop: _{{page.pascalCase()}}DataDesktop(
        data: data,
      ),
    );
  }
}

// {{page.lowerCase()}} data for mobile
class _{{page.pascalCase()}}DataMobile extends ConsumerWidget {
  const _{{page.pascalCase()}}DataMobile({
    Key? key,
    this.data,
  }) : super(key: key);
  final String? data;
   // TODO: change this to your data type
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Column(
            children: [
              DText(
                text: data.toString(),
                textColor: Theme.of(context).colorScheme.onPrimaryContainer,
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

// {{page.lowerCase()}} data for tablet
class _{{page.pascalCase()}}DataTablet extends ConsumerWidget {
  const _{{page.pascalCase()}}DataTablet({
    Key? key,
    this.data,
  }) : super(key: key);
  final String? data;
   // TODO: change this to your data type
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Column(
            children: [
              DText(
                text: data.toString(),
                textColor: Theme.of(context).colorScheme.onPrimaryContainer,
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
class _{{page.pascalCase()}}DataDesktop extends ConsumerWidget {
  const _{{page.pascalCase()}}DataDesktop({
    Key? key,
    this.data,
  }) : super(key: key);
  final String? data;
   // TODO: change this to your data type
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: SizedBox(
        width: 100.w,
        height: 100.h,
        child: Center(
          child: Column(
            children: [
              DText(
                text: data.toString(),
                textColor: Theme.of(context).colorScheme.onPrimaryContainer,
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