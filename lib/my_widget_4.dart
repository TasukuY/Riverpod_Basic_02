import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basic_02/s4.dart';

class MyWidget4 extends ConsumerWidget {
  const MyWidget4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s4 = ref.watch(s4NotifierProvider);

    final widget = s4.when(
      data: (data) => Text('Data: $data'),
      error: (error, stackTrace) => Text('Error: $error'),
      loading: () => const Text('Loading...'),
    );

    final button = ElevatedButton(
      onPressed: () {
        final notifier = ref.read(s4NotifierProvider.notifier);
        notifier.updateState();
      },
      child: const Text('ボタン'),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        widget,
        const SizedBox(height: 60),
        button,
      ],
    );
  }
}
