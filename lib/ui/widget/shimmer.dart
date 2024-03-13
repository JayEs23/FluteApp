import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffectProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: 3, // Number of shimmer items
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: screen_width * 0.8,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey[300]!,
                  borderRadius: BorderRadius.circular(10)),
            ),
            // title: Text('Loading Product'),
            // subtitle: Text('Product list '),
          );
        },
      ),
    );
  }
}
