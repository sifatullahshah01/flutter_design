// mirroring_view.dart
import 'package:flutter/material.dart';

class MirroringView extends StatefulWidget {
  const MirroringView({super.key});

  @override
  State<MirroringView> createState() => _MirroringViewState();
}

class _MirroringViewState extends State<MirroringView> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Mirroring', style: TextStyle(fontSize: 30)),
    );
  }
}
