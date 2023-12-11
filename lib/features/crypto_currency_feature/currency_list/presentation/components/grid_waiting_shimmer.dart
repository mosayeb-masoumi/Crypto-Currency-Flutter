import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GridWaitingShimmer extends StatelessWidget {
  final int crossAxisCount;

  const GridWaitingShimmer({super.key, required this.crossAxisCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: (1 / 1),
        ),
        itemBuilder: (context, index) {
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
