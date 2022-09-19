import 'package:flutter_riverpod/flutter_riverpod.dart';

class {{page.pascalCase()}}Notifier extends StateNotifier<int> {
  {{page.pascalCase()}}Notifier(): super(0);
  
  //TODO: add logic here to control page state
  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}