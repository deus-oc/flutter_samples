import 'package:flutter/material.dart';
import 'package:tithi/database/tithi_date_time.dart';
import 'package:tithi/widgets/tithi_list.dart';

class HomePage extends StatelessWidget {
  final List purnimaList2020 = TithiInfo.purnimaList2020;
  final List purnimaList2021 = TithiInfo.purnimaList2021;
  final List purnimaList2022 = TithiInfo.purnimaList2022;

  final List amavasyaList2020 = TithiInfo.amavasyaList2020;
  final List amavasyaList2021 = TithiInfo.amavasyaList2021;
  final List amavasyaList2022 = TithiInfo.amavasyaList2022;

  Map _nextPurnimaDate() {
    DateTime currentDateTime = DateTime.now();

    List currentPurnimaList = [];

    switch (currentDateTime.year) {
      case 2020:
        currentPurnimaList = purnimaList2020;
        break;

      case 2021:
        currentPurnimaList = purnimaList2021;
        break;

      case 2022:
        currentPurnimaList = purnimaList2022;
        break;

      default:
        currentPurnimaList = purnimaList2020;
        break;
    }

    for (Map purnimaInfo in currentPurnimaList) {
      DateTime startDateTime = purnimaInfo['begin'];
      Duration difference = startDateTime.difference(currentDateTime);

      if (difference.inHours > 0) {
        print(difference.inDays);
        return purnimaInfo;
      }
      // print(difference.inDays);
    }
    return null;
  }

  Map _nextAmavasyaDate() {
    DateTime currentDateTime = DateTime.now();

    List currentAmavasyaList = [];

    switch (currentDateTime.year) {
      case 2020:
        currentAmavasyaList = amavasyaList2020;
        break;

      case 2021:
        currentAmavasyaList = amavasyaList2021;
        break;

      case 2022:
        currentAmavasyaList = amavasyaList2022;
        break;

      default:
        currentAmavasyaList = amavasyaList2020;
        break;
    }

    for (Map amavasyaInfo in currentAmavasyaList) {
      DateTime startDateTime = amavasyaInfo['begin'];
      Duration difference = startDateTime.difference(currentDateTime);

      if (difference.inHours > 0) {
        print(difference.inDays);
        return amavasyaInfo;
      }
      // print(difference.inDays);
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SafeArea(
        bottom: false,
        child: TithiList(
          purnimaInfo: _nextPurnimaDate(),
          amavasyaInfo: _nextAmavasyaDate(),
        ),
      ),
    );
  }
}
