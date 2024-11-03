import 'package:bw_assignment1/core/constants.dart';
import 'package:bw_assignment1/presentation/widgets/appbar.dart';
import 'package:bw_assignment1/presentation/widgets/crazedeal_trending_card.dart';
import 'package:bw_assignment1/presentation/widgets/discount_card.dart';
import 'package:bw_assignment1/presentation/widgets/gridview.dart';
import 'package:bw_assignment1/presentation/widgets/nearbystore_card.dart';
import 'package:bw_assignment1/presentation/widgets/nearstore_refercard.dart';
import 'package:bw_assignment1/presentation/widgets/search.dart';
import 'package:bw_assignment1/presentation/widgets/trending_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildMainContent(context),
            buildTopPicksSection(),
            referEarn(),
            kHeight10,
            nearStores(),
            kHeight5,
            buildNearByStores(),
            kHeight20,
            buildViewAllStoresButton(),
            kHeight20,
          ],
        ),
      ),
    );
  }

  Widget buildMainContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchArea(context),
          kHeight32,
          Text('What would you like to do today?', style: j22B),
          kHeight10,
          gridScreen(),
          kHeight10,
        ],
      ),
    );
  }

  Widget buildTopPicksSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Top picks for you', style: j20B),
          kHeight10,
          buildDiscountArea(),
          kHeight20,
          trending(),
          trendingCard(),
          kHeight10,
          Text('Craze deals', style: j20B),
          kHeight5,
          crazeDeal(),
          kHeight20,
        ],
      ),
    );
  }

  Widget buildDiscountArea() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 10),
          child: discountCard(index: index),
        ),
      ),
    );
  }

  Widget buildNearByStores() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 320,
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => const NearByStoresCard(),
          separatorBuilder: (context, index) => kHeight20,
          itemCount: 2,
        ),
      ),
    );
  }

  Widget buildViewAllStoresButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shadowColor: Colors.transparent,
          backgroundColor: kGreen,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          minimumSize: const Size(100, 10),
          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
        ),
        child: Text('View all stores', style: j16W),
      ),
    );
  }
}
