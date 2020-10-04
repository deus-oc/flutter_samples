import 'package:flutter/material.dart';

import 'package:tithi/database/tithi_date_time.dart';
import 'package:tithi/widgets/important_tile_header.dart';
import 'package:tithi/widgets/purnima_year_header.dart';

import 'purnima_year_list.dart';

class TithiList extends StatefulWidget {
  TithiList({
    @required this.purnimaInfo,
    @required this.amavasyaInfo,
  })  : assert(purnimaInfo != null),
        assert(amavasyaInfo != null);

  final Map purnimaInfo;
  final Map amavasyaInfo;

  @override
  _TithiListState createState() => _TithiListState();
}

class _TithiListState extends State<TithiList> {
  final List purnimaList2020 = TithiInfo.purnimaList2020;
  final List purnimaList2021 = TithiInfo.purnimaList2021;
  final List purnimaList2022 = TithiInfo.purnimaList2022;

  final List amavasyaList2020 = TithiInfo.amavasyaList2020;
  final List amavasyaList2021 = TithiInfo.amavasyaList2021;
  final List amavasyaList2022 = TithiInfo.amavasyaList2022;

  List<bool> _isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        ImportantTileHeader(
          widget.purnimaInfo,
          widget.amavasyaInfo,
          onSelect: (isSelected) {
            setState(() {
              _isSelected = isSelected;
            });
          },
        ),
        PurnimaYearHeader('2020'),
        PurnimaYearList(
          _isSelected[0] ? purnimaList2020 : amavasyaList2020,
          _isSelected[0] ? ' Purnima' : ' Amavasya',
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        PurnimaYearHeader('2021'),
        PurnimaYearList(
          _isSelected[0] ? purnimaList2021 : amavasyaList2021,
          _isSelected[0] ? ' Purnima' : ' Amavasya',
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        PurnimaYearHeader('2022'),
        PurnimaYearList(
          _isSelected[0] ? purnimaList2022 : amavasyaList2022,
          _isSelected[0] ? ' Purnima' : ' Amavasya',
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
      ],
    );
  }
}
