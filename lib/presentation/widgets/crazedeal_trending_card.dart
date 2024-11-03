import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

SizedBox crazeDeal() {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        separatorBuilder: (context, index) =>kWidth20,
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            height: 160,
            width: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 32, 32, 32),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Image.asset('assets/veg photo.png'),
                ),
                Positioned(
                    left: 30,
                    top: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Customer favourite\ntop supermarkets',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                            letterSpacing: 0.5,
                          ),
                        ),
                        kHeight10,
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Explore',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                                letterSpacing: 0.5,
                              ),
                            ),
                            kWidth5,
                            const Icon(
                              Icons.arrow_forward,
                              color: Colors.orange,
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }

  Row trending() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Trending',
          style: j20B,
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See all',
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: kGreen),
          ),
        )
      ],
    );
  }