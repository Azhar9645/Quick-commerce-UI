 import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

SizedBox trendingCard() {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 280),
        itemBuilder: (context, index) {
          return Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/ice cream.png',
                  )),
              kWidth5,
               Column(
                children: [
                  const Text(
                    'Mithas Bhandar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text('Sweets, North Indian'),
                  const Text('(store location)  |  6.4 kms'),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 15,
                      ),
                      kWidth5,
                      const Text('4.1  |  45 mins'),
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }