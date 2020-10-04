import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PurnimaYearList extends StatelessWidget {
  final List purnimaList;
  final String type;

  PurnimaYearList(this.purnimaList, this.type);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          DateTime dateTimeBegin = purnimaList[index]['begin'] as DateTime;
          DateTime dateTimeEnd = purnimaList[index]['end'] as DateTime;

          final DateFormat formatter =
              DateFormat.MMMd().addPattern(',', '').add_jm();

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.purple[0],
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      purnimaList[index]['name'] + type,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        letterSpacing: 1.5,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple[600],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          'BEGIN: ',
                          style: TextStyle(
                            fontFamily: 'Varela Round',
                            fontSize: 16,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[600],
                          ),
                        ),
                        Text(
                          formatter.format(dateTimeBegin),
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
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          'END: ',
                          style: TextStyle(
                            fontFamily: 'Varela Round',
                            fontSize: 16,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey[600],
                          ),
                        ),
                        Text(
                          formatter.format(dateTimeEnd),
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
            ),
          );
        },
        childCount: purnimaList.length,
      ),
    );
  }
}
