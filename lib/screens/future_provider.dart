import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final futureProviderExample = FutureProvider<String>((ref) async {
  await Future.delayed(Duration(seconds: 2));
  return 'Data loaded!';
});

class FutureProviderExample extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(futureProviderExample);
    return Scaffold(
      appBar: AppBar(title: Text('FutureProvider Example')),
      body: Center(
        child: asyncValue.when(
          loading: () => CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
          data: (data) => Text(data),
        ),
      ),
    );
  }
}