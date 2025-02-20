import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

final counterChangeNotifierProvider = ChangeNotifierProvider<CounterModel>((ref) => CounterModel());

class ChangeNotifierProviderExample extends ConsumerWidget {
  const ChangeNotifierProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterChangeNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text('ChangeNotifierProvider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counter.count}'),
            ElevatedButton(
              onPressed: () => counter.increment(),
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}