import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

Container discountCard({required int index}) {
    Color cardColor = index == 1 ? Colors.blueAccent : kGreen;

    return Container(
      width: 375,
      height: 200,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 30,
            left: 20,
            child: Text('DISCOUNT\n25% ALL\nFRUITS', style: j22W),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: kOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                minimumSize: const Size(100, 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text(
                'CHECK NOW',
                style: TextStyle(
                    color: kWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/discount card.png',
            ),
          ),
        ],
      ),
    );
  }

 