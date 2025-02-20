import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeProviderExample = Provider.autoDispose<int>((ref) {
  ref.onDispose(() {
    print('Provider disposed!');
  });
  return 42;
});

class AutoDisposeProviderExample extends ConsumerWidget {
  const AutoDisposeProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(autoDisposeProviderExample);
    return Scaffold(
      appBar: AppBar(title: Text('AutoDisposeProvider Example')),
      body: Center(
        child: Text('Value: $value'),
      ),
    );
  }
}