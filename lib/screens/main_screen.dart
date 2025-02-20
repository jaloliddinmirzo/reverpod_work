
import 'package:flutter/material.dart';
import 'package:reverpod_work/screens/auto_dispose_provider.dart';
import 'package:reverpod_work/screens/change_notifier_provider.dart';
import 'package:reverpod_work/screens/family_provider.dart';
import 'package:reverpod_work/screens/future_provider.dart';
import 'package:reverpod_work/screens/provider_example.dart';
import 'package:reverpod_work/screens/state_notifier_provider_example.dart';
import 'package:reverpod_work/screens/state_provider.dart';
import 'package:reverpod_work/screens/stream_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Examples')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _buildNavButton(context, 'Provider Example', ProviderExample()),
          _buildNavButton(context, 'StateProvider Example', StateProviderExample()),
          _buildNavButton(context, 'StateNotifierProvider Example', StateNotifierProviderExample()),
          _buildNavButton(context, 'ChangeNotifierProvider Example', ChangeNotifierProviderExample()),
          _buildNavButton(context, 'FutureProvider Example', FutureProviderExample()),
          _buildNavButton(context, 'StreamProvider Example', StreamProviderExample()),
          _buildNavButton(context, 'AutoDisposeProvider Example', AutoDisposeProviderExample()),
          _buildNavButton(context, 'FamilyProvider Example', FamilyProviderExample()),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title, Widget screen) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        ),
        child: Text(title),
      ),
    );
  }
}
