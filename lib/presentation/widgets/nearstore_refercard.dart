import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

Padding NearStores() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby stores',
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
          )
        ],
      ),
    );
  }

  Padding ReferEarn() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: kGreen, borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Refer & Earn',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kWhite)),
                  Row(
                    children: [
                      const Text('Invite your friends & earn 15% off',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset('assets/right arrow.png')
                    ],
                  )
                ],
              ),
              Image.asset('assets/gift box.png')
            ],
          ),
        ),
      ),
    );
  }