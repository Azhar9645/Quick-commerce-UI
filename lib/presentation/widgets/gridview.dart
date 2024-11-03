import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/food delivery.png',
    'assets/medicine.png',
    'assets/pet supplies.png',
    'assets/gifts.png',
    'assets/meat.png',
    'assets/cosmetic.png',
    'assets/stationery.png',
    'assets/stores.png',
  ];

  final List<String> titles = [
    'Food Delivery',
    'Medicines',
    'Pet Supplies',
    'Gifts',
    'Meat',
    'Cosmetic',
    'Stationery',
    'Stores',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 120,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
            ),
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  // Container for image with shadow
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(imagePaths[index]),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    titles[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'More',
              style: TextStyle(
                color: kGreen,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 20,
              color: kGreen,
            ),
          ],
        ),
      ],
    );
  }
}
