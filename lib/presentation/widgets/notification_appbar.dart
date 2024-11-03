import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

Container appBar(BuildContext context) {
    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.9),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, -6),
          ),
        ],
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 95,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kGreen,
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: kWhite,
                ),
              ),
            ),
            kWidth10,
            Text(
              'Notifications',
              style: j20B,
            ),
          ],
        ),
      ),
    );
  }