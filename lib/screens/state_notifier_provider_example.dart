import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() => state++;
  void decrement() => state--;
}

final counterNotifierProvider = StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class StateNotifierProviderExample extends ConsumerWidget {
  const StateNotifierProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text('StateNotifierProvider Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: $counter'),
            ElevatedButton(
              onPressed: () => ref.read(counterNotifierProvider.notifier).increment(),
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () => ref.read(counterNotifierProvider.notifier).decrement(),
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}