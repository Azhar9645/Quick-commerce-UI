import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    toolbarHeight: 95,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.location_on, color: kGreen),
        const SizedBox(width: 5.0),
        Text(
          'ABCD, New Delhi',
          style: j17B,
        ),
        const SizedBox(width: 5.0),
        const Icon(Icons.keyboard_arrow_down, color: kGreen),
      ],
    ),
  );
}
