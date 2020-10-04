import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math' as math;

class ImportantTileHeader extends StatefulWidget {
  final Map purnimaInfo;
  final Map amavasyaInfo;
  final Function(List<bool> isSelected) onSelect;
  ImportantTileHeader(
    this.purnimaInfo,
    this.amavasyaInfo, {
    this.onSelect,
  });

  @override
  _ImportantTileHeaderState createState() => _ImportantTileHeaderState();
}

class _ImportantTileHeaderState extends State<ImportantTileHeader> {
  List<bool> _isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverImportantTilesDelegate(
        maxHeight: 360,
        minHeight: 180,
        nextPurnimaInfo: widget.purnimaInfo,
        nextAmavasyaInfo: widget.amavasyaInfo,
        isSelected: _isSelected,
        onSelect: (isSelected) {
          widget.onSelect(isSelected);
          setState(() {
            _isSelected = isSelected;
          });
        },
      ),
    );
  }
}

class _SliverImportantTilesDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Map nextPurnimaInfo;
  final Map nextAmavasyaInfo;
  final List<bool> isSelected;
  final Function(List<bool> isSelected) onSelect;
  _SliverImportantTilesDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.nextPurnimaInfo,
    @required this.nextAmavasyaInfo,
    this.isSelected = const [false, false],
    this.onSelect,
  })  : assert(minHeight != null),
        assert(maxHeight != null),
        assert(nextPurnimaInfo != null);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    String purnimaName = nextPurnimaInfo['name'];
    String amavasyaName = nextAmavasyaInfo['name'];

    final DateFormat formatter = DateFormat.MMMd().addPattern(',', '').add_jm();

    DateTime currentDateTime = DateTime.now();

    DateTime purnimaBegin = nextPurnimaInfo['begin'];
    DateTime purnimaEnd = nextPurnimaInfo['end'];

    DateTime amavasyaBegin = nextAmavasyaInfo['begin'];
    DateTime amavasyaEnd = nextAmavasyaInfo['end'];

    int purnimaDifferenceInDays =
        purnimaBegin.difference(currentDateTime).inDays;
    int amavasyaDifferenceInDays =
        amavasyaBegin.difference(currentDateTime).inDays;

    int purnimaDifferenceInHours =
        purnimaBegin.difference(currentDateTime).inHours;
    int amavasyaDifferenceInHours =
        amavasyaBegin.difference(currentDateTime).inHours;

    return Container(
      color: Colors.purple[50],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print(isSelected);
                if (!isSelected[0]) {
                  onSelect([true, false]);
                }
              },
              child: Card(
                color: Colors.purple[100],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  side: isSelected[0]
                      ? BorderSide(color: Colors.purple[400], width: 3.0)
                      : BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  child: shrinkOffset > 90
                      ? Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  purnimaName + ' Purnima',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple[600],
                                  ),
                                ),
                              ),
                              Hero(
                                tag: 'circle_1',
                                child: CircleAvatar(
                                  radius: 20,
                                  child: Text(
                                    purnimaDifferenceInDays < 1
                                        ? purnimaDifferenceInHours.toString()
                                        : purnimaDifferenceInDays.toString(),
                                    style: TextStyle(
                                      fontFamily: 'Varela Round',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.purple[100],
                                    ),
                                  ),
                                  backgroundColor: Colors.purple[400],
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '${purnimaDifferenceInDays == 1 ? 'day' : purnimaDifferenceInDays < 1 ? 'hours' : 'days'} left',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.purple[400],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                'PURNIMA',
                                style: TextStyle(
                                  fontFamily: 'Varela Round',
                                  letterSpacing: 3,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple[300],
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          purnimaName + ' Purnima',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 1.5,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.deepPurple[600],
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Text(
                                              'BEGIN: ',
                                              style: TextStyle(
                                                fontFamily: 'Varela Round',
                                                fontSize: 15,
                                                letterSpacing: 1.2,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueGrey[600],
                                              ),
                                            ),
                                            Text(
                                              formatter.format(purnimaBegin),
                                              style: TextStyle(
                                                fontFamily: 'Varela Round',
                                                fontSize: 14,
                                                letterSpacing: 1.1,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 3),
                                        Row(
                                          children: [
                                            Text(
                                              'END: ',
                                              style: TextStyle(
                                                fontFamily: 'Varela Round',
                                                fontSize: 15,
                                                letterSpacing: 1.2,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blueGrey[600],
                                              ),
                                            ),
                                            Text(
                                              formatter.format(purnimaEnd),
                                              style: TextStyle(
                                                fontFamily: 'Varela Round',
                                                fontSize: 14,
                                                letterSpacing: 1.1,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Hero(
                                        tag: 'circle_1',
                                        child: CircleAvatar(
                                          radius: 26,
                                          child: Text(
                                            purnimaDifferenceInDays < 1
                                                ? purnimaDifferenceInHours
                                                    .toString()
                                                : purnimaDifferenceInDays
                                                    .toString(),
                                            style: TextStyle(
                                              fontFamily: 'Varela Round',
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.purple[100],
                                            ),
                                          ),
                                          backgroundColor: Colors.purple[400],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '${purnimaDifferenceInDays == 1 ? 'day' : purnimaDifferenceInDays < 1 ? 'hours' : 'days'} left',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 1.1,
                                          fontSize: 14,
                                          color: Colors.purple[400],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                print(isSelected);
                if (!isSelected[1]) {
                  onSelect([false, true]);
                }
              },
              child: Card(
                color: Colors.purple[100],
                elevation: 5,
                shape: RoundedRectangleBorder(
                  side: isSelected[1]
                      ? BorderSide(color: Colors.purple[400], width: 3.0)
                      : BorderSide(color: Colors.transparent, width: 0.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: shrinkOffset > 10
                    ? Padding(
                        padding:
                            const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                '$amavasyaName Amavasya',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple[600],
                                ),
                              ),
                            ),
                            Hero(
                              tag: 'circle_2',
                              child: CircleAvatar(
                                radius: 20,
                                child: Text(
                                  amavasyaDifferenceInDays < 1
                                      ? amavasyaDifferenceInHours.toString()
                                      : amavasyaDifferenceInDays.toString(),
                                  style: TextStyle(
                                    fontFamily: 'Varela Round',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.purple[100],
                                  ),
                                ),
                                backgroundColor: Colors.purple[400],
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              '${amavasyaDifferenceInDays == 1 ? 'day' : amavasyaDifferenceInDays < 1 ? 'hours' : 'days'} left',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Colors.purple[400],
                              ),
                            ),
                          ],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              'AMAVASYA',
                              style: TextStyle(
                                fontFamily: 'Varela Round',
                                letterSpacing: 3,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple[300],
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '$amavasyaName Amavasya',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 1.5,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple[600],
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text(
                                            'BEGIN: ',
                                            style: TextStyle(
                                              fontFamily: 'Varela Round',
                                              fontSize: 15,
                                              letterSpacing: 1.2,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey[600],
                                            ),
                                          ),
                                          Text(
                                            formatter.format(amavasyaBegin),
                                            style: TextStyle(
                                              fontFamily: 'Varela Round',
                                              fontSize: 14,
                                              letterSpacing: 1.1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 3),
                                      Row(
                                        children: [
                                          Text(
                                            'END: ',
                                            style: TextStyle(
                                              fontFamily: 'Varela Round',
                                              fontSize: 15,
                                              letterSpacing: 1.2,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueGrey[600],
                                            ),
                                          ),
                                          Text(
                                            formatter.format(amavasyaEnd),
                                            style: TextStyle(
                                              fontFamily: 'Varela Round',
                                              fontSize: 14,
                                              letterSpacing: 1.1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Hero(
                                      tag: 'circle_2',
                                      child: CircleAvatar(
                                        radius: 26,
                                        child: Text(
                                          amavasyaDifferenceInDays < 1
                                              ? amavasyaDifferenceInHours
                                                  .toString()
                                              : amavasyaDifferenceInDays
                                                  .toString(),
                                          style: TextStyle(
                                            fontFamily: 'Varela Round',
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.purple[100],
                                          ),
                                        ),
                                        backgroundColor: Colors.purple[400],
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      '${amavasyaDifferenceInDays == 1 ? 'day' : amavasyaDifferenceInDays < 1 ? 'hours' : 'days'} left',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 1.1,
                                        fontSize: 14,
                                        color: Colors.purple[400],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
              ),
            ),
          ],
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
