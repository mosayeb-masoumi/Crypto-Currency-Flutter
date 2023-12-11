import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ListWaitingShimmer extends StatelessWidget {
  const ListWaitingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 5, itemBuilder: (context, index) {
      return shimmerItem();
    });
  }

  Widget shimmerItem() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[400]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: double.infinity,
        height: 120,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
      ),
    );
  }
}
