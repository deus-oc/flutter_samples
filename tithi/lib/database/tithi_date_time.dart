import 'package:flutter/material.dart';

class TithiInfo {
  static const String _name = 'name';
  static const String _begin = 'begin';
  static const String _end = 'end';

  static List<Map<String, dynamic>> purnimaList2020 = [
    {
      _name: 'Paush',
      _begin: _createDateTime('Jan 10, 2:34 am', 2020),
      _end: _createDateTime('Jan 11, 12:51 am', 2020),
    },
    {
      _name: 'Magha',
      _begin: _createDateTime('Feb 08, 4:02 pm', 2020),
      _end: _createDateTime('Feb 09, 1:03 pm', 2020),
    },
    {
      _name: 'Hutasani',
      _begin: _createDateTime('Mar 09, 3:04 am', 2020),
      _end: _createDateTime('Mar 09, 11:17 pm', 2020),
    },
    {
      _name: '',
      _begin: _createDateTime('Apr 07, 12:01 pm', 2020),
      _end: _createDateTime('Apr 08, 8:04 am', 2020),
    },
    {
      _name: 'Buddha',
      _begin: _createDateTime('May 06, 7:45 pm', 2020),
      _end: _createDateTime('May 07, 4:15 pm', 2020),
    },
    {
      _name: 'Deva Snana',
      _begin: _createDateTime('Jun 05, 3:16 am', 2020),
      _end: _createDateTime('Jun 06, 12:42 am', 2020),
    },
    {
      _name: 'Guru',
      _begin: _createDateTime('Jul 04, 11:34 am', 2020),
      _end: _createDateTime('Jul 05, 10:14 am', 2020),
    },
    {
      _name: 'Narali',
      _begin: _createDateTime('Aug 02, 9:29 pm', 2020),
      _end: _createDateTime('Aug 03, 9:28 pm', 2020),
    },
    {
      _name: 'Bhadrapada',
      _begin: _createDateTime('Sep 01, 9:39 am', 2020),
      _end: _createDateTime('Sep 02, 10:52 am', 2020),
    },
    {
      _name: '',
      _begin: _createDateTime('Oct 01, 12:26 am', 2020),
      _end: _createDateTime('Oct 02, 2:35 am', 2020),
    },
    {
      _name: 'Sharad',
      _begin: _createDateTime('Oct 30, 5:46 pm', 2020),
      _end: _createDateTime('Oct 31, 8:19 pm', 2020),
    },
    {
      _name: 'Kartik',
      _begin: _createDateTime('Nov 29, 12:48 pm', 2020),
      _end: _createDateTime('Nov 30, 2:59 pm', 2020),
    },
    {
      _name: 'Margashirsha',
      _begin: _createDateTime('Dec 29, 7:54 am', 2020),
      _end: _createDateTime('Dec 30, 8:58 am', 2020),
    },
  ];

  static List<Map<String, dynamic>> purnimaList2021 = [
    {
      _name: 'Paush',
      _begin: _createDateTime('Jan 28, 1:17 am', 2021),
      _end: _createDateTime('Jan 29, 12:46 am', 2021),
    },
    {
      _name: 'Magha',
      _begin: _createDateTime('Feb 26, 3:50 pm', 2021),
      _end: _createDateTime('Feb 27, 1:47 pm', 2021),
    },
    {
      _name: 'Hutasani',
      _begin: _createDateTime('Mar 28, 3:27 am', 2021),
      _end: _createDateTime('Mar 29, 12:18 am', 2021),
    },
    {
      _name: '',
      _begin: _createDateTime('Apr 26, 12:44 pm', 2021),
      _end: _createDateTime('Apr 27, 9:01 am', 2021),
    },
    {
      _name: 'Buddha',
      _begin: _createDateTime('May 25, 8:30 pm', 2021),
      _end: _createDateTime('May 26, 4:43 pm', 2021),
    },
    {
      _name: 'Deva Snana',
      _begin: _createDateTime('Jun 24, 3:32 am', 2021),
      _end: _createDateTime('Jun 25, 12:09 am', 2021),
    },
    {
      _name: 'Guru',
      _begin: _createDateTime('Jul 23, 10:43 am', 2021),
      _end: _createDateTime('Jul 24, 8:06 am', 2021),
    },
    {
      _name: 'Narali',
      _begin: _createDateTime('Aug 21, 7:00 pm', 2021),
      _end: _createDateTime('Aug 22, 5:31 pm', 2021),
    },
    {
      _name: 'Bhadrapada',
      _begin: _createDateTime('Sep 20, 5:28 am', 2021),
      _end: _createDateTime('Sep 21, 5:24 am', 2021),
    },
    {
      _name: 'Sharad',
      _begin: _createDateTime('Oct 19, 7:03 pm', 2021),
      _end: _createDateTime('Oct 20, 8:26 pm', 2021),
    },
    {
      _name: 'Kartik',
      _begin: _createDateTime('Nov 18, 12:00 pm', 2021),
      _end: _createDateTime('Nov 19, 2:27 pm', 2021),
    },
    {
      _name: 'Margashirsha',
      _begin: _createDateTime('Dec 18, 7:24 am', 2021),
      _end: _createDateTime('Dec 19, 10:05 am', 2021),
    },
  ];

  static List<Map<String, dynamic>> purnimaList2022 = [
    {
      _name: 'Paush',
      _begin: _createDateTime('Jan 17, 3:18 am', 2022),
      _end: _createDateTime('Jan 18, 5:18 am', 2022),
    },
    {
      _name: 'Magha',
      _begin: _createDateTime('Feb 15, 9:43 pm', 2022),
      _end: _createDateTime('Feb 16, 10:26 pm', 2022),
    },
    {
      _name: 'Hutasani',
      _begin: _createDateTime('Mar 17, 1:30 pm', 2022),
      _end: _createDateTime('Mar 18, 12:47 pm', 2022),
    },
    {
      _name: '',
      _begin: _createDateTime('Apr 16, 2:25 am', 2022),
      _end: _createDateTime('Apr 17, 12:24 am', 2022),
    },
    {
      _name: 'Buddha',
      _begin: _createDateTime('May 15, 12:46 pm', 2022),
      _end: _createDateTime('May 16, 9:44 am', 2022),
    },
    {
      _name: 'Deva Snana',
      _begin: _createDateTime('Jun 13, 9:03 pm', 2022),
      _end: _createDateTime('Jun 14, 5:21 pm', 2022),
    },
    {
      _name: 'Guru',
      _begin: _createDateTime('Jul 13, 4:01 am', 2022),
      _end: _createDateTime('Jul 14, 12:07 am', 2022),
    },
    {
      _name: 'Narali',
      _begin: _createDateTime('Aug 11, 10:38 am', 2022),
      _end: _createDateTime('Aug 12, 7:05 am', 2022),
    },
    {
      _name: 'Bhadrapada',
      _begin: _createDateTime('Sep 09, 6:08 pm', 2022),
      _end: _createDateTime('Sep 10, 3:28 pm', 2022),
    },
    {
      _name: 'Sharad',
      _begin: _createDateTime('Oct 09, 3:42 am', 2022),
      _end: _createDateTime('Oct 10, 2:24 am', 2022),
    },
    {
      _name: 'Kartik',
      _begin: _createDateTime('Nov 07, 4:16 pm', 2022),
      _end: _createDateTime('Nov 08, 4:32 pm', 2022),
    },
    {
      _name: 'Margashirsha',
      _begin: _createDateTime('Dec 07, 8:01 am', 2022),
      _end: _createDateTime('Dec 08, 9:38 am', 2022),
    },
  ];

  static List<Map<String, dynamic>> amavasyaList2020 = [
    {
      _name: 'Magha',
      _begin: _createDateTime('Jan 24, 2:17 am', 2020),
      _end: _createDateTime('Jan 25, 3:11 am', 2020),
    },
    {
      _name: 'Phalguna',
      _begin: _createDateTime('Feb 22, 7:02 pm', 2020),
      _end: _createDateTime('Feb 23, 9:01 pm', 2020),
    },
    {
      _name: 'Chaitra',
      _begin: _createDateTime('Mar 23, 12:30 pm', 2020),
      _end: _createDateTime('Mar 24, 2:57 pm', 2020),
    },
    {
      _name: 'Vaishakha',
      _begin: _createDateTime('Apr 22, 5:37 am', 2020),
      _end: _createDateTime('Apr 23, 7:55 am', 2020),
    },
    {
      _name: 'Jyeshtha',
      _begin: _createDateTime('May 21, 9:35 pm', 2020),
      _end: _createDateTime('May 22, 11:08 pm', 2020),
    },
    {
      _name: 'Ashadha',
      _begin: _createDateTime('Jun 20, 11:52 am', 2020),
      _end: _createDateTime('Jun 21, 12:10 pm', 2020),
    },
    {
      _name: 'Shravana',
      _begin: _createDateTime('Jul 20, 12:10 am', 2020),
      _end: _createDateTime('Jul 20, 11:02 pm', 2020),
    },
    {
      _name: 'Bhadrapada',
      _begin: _createDateTime('Aug 18, 10:39 am', 2020),
      _end: _createDateTime('Aug 19, 8:11 am', 2020),
    },
    {
      _name: 'Ashwina',
      _begin: _createDateTime('Sep 16, 7:56 pm', 2020),
      _end: _createDateTime('Sep 17, 4:29 pm', 2020),
    },
    {
      _name: 'Ashwina',
      _begin: _createDateTime('Oct 16, 4:52 am', 2020),
      _end: _createDateTime('Oct 17, 1:00 am', 2020),
    },
    {
      _name: 'Kartika',
      _begin: _createDateTime('Nov 14, 2:17 pm', 2020),
      _end: _createDateTime('Nov 15, 10:36 am', 2020),
    },
    {
      _name: 'Margashirsha',
      _begin: _createDateTime('Dec 14, 12:44 am', 2020),
      _end: _createDateTime('Dec 14, 9:46 pm', 2020),
    },
  ];

  static List<Map<String, dynamic>> amavasyaList2021 = [
    {
      _name: 'Pausha',
      _begin: _createDateTime('Jan 12, 12:22 pm', 2021),
      _end: _createDateTime('Jan 12, 10:29 am', 2021),
    },
    {
      _name: 'Magha',
      _begin: _createDateTime('Feb 11, 1:08 am', 2021),
      _end: _createDateTime('Feb 12, 12:35 am', 2021),
    },
    {
      _name: 'Phalguna',
      _begin: _createDateTime('Mar 12, 3:02 pm', 2021),
      _end: _createDateTime('Mar 13, 3:50 pm', 2021),
    },
    {
      _name: 'Chaitra',
      _begin: _createDateTime('Apr 11, 6:03 am', 2021),
      _end: _createDateTime('Apr 12, 8:00 am', 2021),
    },
    {
      _name: 'Vaishakha',
      _begin: _createDateTime('May 10, 9:55 pm', 2021),
      _end: _createDateTime('May 12, 12:29 am', 2021),
    },
    {
      _name: 'Jyeshtha',
      _begin: _createDateTime('Jun 9, 1:57 pm', 2021),
      _end: _createDateTime('Jun 10, 4:22 pm', 2021),
    },
    {
      _name: 'Ashadha',
      _begin: _createDateTime('Jul 9, 5:16 am', 2021),
      _end: _createDateTime('Jul 10, 6:46 am', 2021),
    },
    {
      _name: 'Shravana',
      _begin: _createDateTime('Aug 7, 7:11 pm', 2021),
      _end: _createDateTime('Aug 8, 7:19 pm', 2021),
    },
    {
      _name: 'Bhadrapada',
      _begin: _createDateTime('Sep 6, 7:38 am', 2021),
      _end: _createDateTime('Sep 7, 6:21 am', 2021),
    },
    {
      _name: 'Ashwina',
      _begin: _createDateTime('Oct 5, 7:04 pm', 2021),
      _end: _createDateTime('Oct 6, 4:34 pm', 2021),
    },
    {
      _name: 'Kartika',
      _begin: _createDateTime('Nov 4, 6:03 am', 2021),
      _end: _createDateTime('Nov 5, 2:44 am', 2021),
    },
    {
      _name: 'Margashirsha',
      _begin: _createDateTime('Dec 3, 4:55 pm', 2021),
      _end: _createDateTime('Dec 4, 1:12 pm', 2021),
    },
  ];

  static List<Map<String, dynamic>> amavasyaList2022 = [
    {
      _name: 'Pausha',
      _begin: _createDateTime('Jan 2, 3:41 am', 2022),
      _end: _createDateTime('Jan 3, 12:02 am', 2022),
    },
    {
      _name: 'Magha',
      _begin: _createDateTime('Jan 31, 2:18 pm', 2022),
      _end: _createDateTime('Feb 1, 11:15 am', 2022),
    },
    {
      _name: 'Phalguna',
      _begin: _createDateTime('Mar 2, 1:00 am', 2022),
      _end: _createDateTime('Mar 2, 11:04 pm', 2022),
    },
    {
      _name: 'Chaitra',
      _begin: _createDateTime('Mar 31, 12:22 pm', 2022),
      _end: _createDateTime('Apr 1, 11:53 am', 2022),
    },
    {
      _name: 'Vaishakha',
      _begin: _createDateTime('Apr 30, 12:57 am', 2022),
      _end: _createDateTime('May 1, 1:57 am', 2022),
    },
    {
      _name: 'Jyeshtha',
      _begin: _createDateTime('May 29, 2:54 pm', 2022),
      _end: _createDateTime('May 30, 4:59 pm', 2022),
    },
    {
      _name: 'Ashadha',
      _begin: _createDateTime('Jun 28, 5:52 am', 2022),
      _end: _createDateTime('Jun 29, 8:21 am', 2022),
    },
    {
      _name: 'Shravana',
      _begin: _createDateTime('Jul 27, 9:11 pm', 2022),
      _end: _createDateTime('Jul 28, 11:24 pm', 2022),
    },
    {
      _name: 'Bhadrapada',
      _begin: _createDateTime('Aug 26, 12:23 pm', 2022),
      _end: _createDateTime('Aug 27, 1:46 pm', 2022),
    },
    {
      _name: 'Ashwina',
      _begin: _createDateTime('Sep 25, 3:12 am', 2022),
      _end: _createDateTime('Sep 26, 3:23 am', 2022),
    },
    {
      _name: 'Kartika',
      _begin: _createDateTime('Oct 24, 5:27 pm', 2022),
      _end: _createDateTime('Oct 25, 4:18 pm', 2022),
    },
    {
      _name: 'Margashirsha',
      _begin: _createDateTime('Nov 23, 6:53 am', 2022),
      _end: _createDateTime('Nov 24, 4:26 am', 2022),
    },
    {
      _name: 'Pausha',
      _begin: _createDateTime('Dec 22, 7:13 pm', 2022),
      _end: _createDateTime('Dec 23, 3:46 pm', 2022),
    },
  ];

  static DateTime _createDateTime(String str, int year) {
    Map<String, int> months = {
      'Jan': 1,
      'Feb': 2,
      'Mar': 3,
      'Apr': 4,
      'May': 5,
      'Jun': 6,
      'Jul': 7,
      'Aug': 8,
      'Sep': 9,
      'Oct': 10,
      'Nov': 11,
      'Dec': 12,
    };

    // eg: Jan 10, 2:34 am
    List<String> dateTime = str.split(', ');
    String dateString = dateTime[0]; // Jan 10
    String timeString = dateTime[1]; // 2:34 am

    String hourMin = timeString.split(' ')[0]; // 2:34

    String amPM = timeString.split(' ')[1]; // am

    // Time formatting
    int hour = int.parse(hourMin.split(':')[0]);

    int min = int.parse(hourMin.split(':')[1]);

    if (amPM == 'pm' && hour != 0 && hour != 12) {
      hour += 12;
    }
    if (amPM == 'am' && hour == 12) {
      hour = 0;
    }

    // Date formatting
    String monthString = dateString.split(' ')[0];

    int month = months[monthString];
    int date = int.parse(dateString.split(' ')[1]);
    // int year = 2020;

    return DateTime(year, month, date, hour, min);
  }
}
