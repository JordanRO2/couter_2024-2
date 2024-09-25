import 'package:flutter/material.dart';

class CounterAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback resetCounter;

  const CounterAppBar({Key? key, required this.resetCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Counter Screen"),
      leading: IconButton(
        onPressed: resetCounter,
        icon: const Icon(Icons.refresh_rounded),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
