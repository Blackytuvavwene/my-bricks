import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:admin/lib.dart';

// {{page.lowerCase()}} basic provider
final {{page.camelCase()}}Provider = FutureProvider<int>((ref) {
  //TODO: add logic here for your provider
  return 0;
});

// {{page.lowerCase()}} notifier provider
final {{page.camelCase()}}NotifierProvider = StateNotifierProvider<{{page.pascalCase()}}Notifier, int>((ref) {
  return {{page.pascalCase()}}Notifier();
});
