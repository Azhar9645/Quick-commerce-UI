import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

class NearByStoresCard extends StatelessWidget {
  const NearByStoresCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/bakery.png',
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Freshly Baker',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      kHeight5,
                      const Text('Sweets, North Indian'),
                      const Text('Site No - 1  |  6.4 kms'),
                    ],
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '4.1',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )
                        ],
                      ),
                      Text(
                        '45 mins',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              kHeight10,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.shade300,
                ),
                width: 50,
                height: 20,
                child: const Center(
                    child: Text(
                  'Top Store',
                  style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                )),
              ),
              kHeight10,
              Container(
                color: Colors.grey.shade400,
                width: 270,
                height: 1,
              ),
              kHeight10,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/off.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Upto 10% OFF',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset('assets/item.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '3400+ items available',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
