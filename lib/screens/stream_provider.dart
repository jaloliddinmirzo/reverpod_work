import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final streamProviderExample = StreamProvider<int>((ref) async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
});

class StreamProviderExample extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(streamProviderExample);
    return Scaffold(
      appBar: AppBar(title: Text('StreamProvider Example')),
      body: Center(
        child: asyncValue.when(
          loading: () => CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
          data: (data) => Text('Value: $data'),
        ),
      ),
    );
  }
}