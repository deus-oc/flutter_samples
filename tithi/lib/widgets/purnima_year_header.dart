import 'package:flutter/material.dart';
import 'dart:math' as math;

class PurnimaYearHeader extends StatelessWidget {
  final String year;

  PurnimaYearHeader(this.year);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate:
          _SliverYearTileDelegate(maxHeight: 40, minHeight: 40, year: year),
    );
  }
}

class _SliverYearTileDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final String year;
  _SliverYearTileDelegate(
      {@required this.minHeight, @required this.maxHeight, @required this.year})
      : assert(minHeight != null),
        assert(maxHeight != null),
        assert(year != null);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // print(shrinkOffset);
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple[50],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: shrinkOffset > 0
              ? [
                  BoxShadow(
                    color: Colors.purple[200],
                    blurRadius: 3.5,
                    spreadRadius: 1.0,
                    offset: Offset(5.0, 5.0),
                  )
                ]
              : [],
        ),
        child: Center(
          child: Text(
            year,
            style: TextStyle(
              fontFamily: 'Varela Round',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.purple[200],
            ),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
