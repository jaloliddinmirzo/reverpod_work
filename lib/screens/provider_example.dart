import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final helloWorldProvider = Provider<String>((ref) => 'Hello, World!');

class ProviderExample extends ConsumerWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(helloWorldProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Provider Example')),
      body: Center(
        child: Text(message),
      ),
    );
  }
}