import 'package:admin/lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class {{page.pascalCase()}}Page extends ConsumerWidget {
  const {{page.pascalCase()}}Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch({{page.camelCase()}}Provider).when(
      data: (data) {
        return {{page.pascalCase()}}Data(
          data: data.toString(),
        );
      },
      error: (error, stackTrace) {
        return {{page.pascalCase()}}Error(
          error: error.toString(),
        );
      },
      loading: () {
        return const {{page.pascalCase()}}LoadingPage();
      },
    );
  }
}