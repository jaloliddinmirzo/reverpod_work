import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final familyProviderExample = Provider.family<String, String>((ref, name) {
  return 'Hello, $name!';
});

class FamilyProviderExample extends ConsumerWidget {
  const FamilyProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final message = ref.watch(familyProviderExample('John'));
    return Scaffold(
      appBar: AppBar(title: Text('FamilyProvider Example')),
      body: Center(
        child: Text(message),
      ),
    );
  }
}