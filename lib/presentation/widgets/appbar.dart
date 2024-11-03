import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

AppBar appbar() {
  return AppBar(
    toolbarHeight: 95,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.location_on, color: kGreen),
        kWidth5,
        Text(
          'ABCD, New Delhi', 
          style: j17B,
        ),
        kWidth5,
        const Icon(Icons.keyboard_arrow_down, color: kGreen),
      ],
    ),
  );
}
