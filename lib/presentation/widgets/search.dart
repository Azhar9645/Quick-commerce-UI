import 'package:bw_assignment1/core/constants.dart';
import 'package:flutter/material.dart';

Row SearchArea(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 260,
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.search,
              color: kGreen,
              size: 30,
            ),
            filled: true,
            hintText: 'Search for products/stores',
            hintStyle: const TextStyle(fontSize: 16, letterSpacing: 0.5),
            fillColor: kGrey,
            enabledBorder: outlineBorder(),
            focusedBorder: outlineBorder(),
            errorBorder: outlineBorder(),
            focusedErrorBorder: outlineBorder(),
            disabledBorder: outlineBorder(),
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notification');
        },
        child: Image.asset(
          'assets/notification.png',
          width: 30,
          height: 30,
        ),
      ),
      GestureDetector(
        onTap: () {},
        child: Image.asset(
          'assets/tags.png', 
          width: 30,
          height: 30,
        ),
      ),
    ],
  );
}

OutlineInputBorder outlineBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
    borderSide: BorderSide(
      color: Colors.transparent,
    ),
  );
}
