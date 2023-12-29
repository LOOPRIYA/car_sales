import 'package:flutter/material.dart';

import '../../models/changes_model.dart';

class ChangeList extends StatelessWidget {
  final Change change;

  const ChangeList({
    super.key,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            leading: Image.asset(change.icon),
            title: Text(change.title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffe0e0e0))),
            onTap: () {}),
      ],
    );
  }
}
