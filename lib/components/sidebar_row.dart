import 'package:flutter/material.dart';
import 'package:practice_project/constants.dart';
import 'package:practice_project/model/sidebar.dart';

class SidebarRow extends StatelessWidget {
  const SidebarRow({
    super.key,
    required this.item,
  });

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          //padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            gradient: item.background,
          ),
          child: item.icon,
        ),
        const SizedBox(width: 8),
        Container(
          child: Text(
            item.title,
            style: kCalloutLabelStyle,
          ),
        ),
      ],
    );
  }
}
