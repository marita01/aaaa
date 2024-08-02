import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final String label;
  bool isActive;
  CustomSwitch({super.key, required this.label, this.isActive = false,});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Switch(
          value: widget.isActive,
          onChanged: (value) {},
        ),
        const SizedBox(width: 8 ),
        Text(
          widget.label,
          style: Theme.of(context).textTheme.labelLarge,
        )
      ],
    );
  }
}
