import 'package:edukonsel/presentation/consultation_history/components/card_consultation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabHistoryComplete extends StatefulWidget {
  const TabHistoryComplete({super.key});

  @override
  State<TabHistoryComplete> createState() => _TabHistoryCompleteState();
}

class _TabHistoryCompleteState extends State<TabHistoryComplete> {
  final List<String> images = [
    'https://staticg.sportskeeda.com/editor/2022/11/1db9b-16681805105538-1920.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/195/93/desktop-wallpaper-getou-suguru-suguru-geto.jpg',
    'https://staticg.sportskeeda.com/editor/2022/11/1db9b-16681805105538-1920.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/195/93/desktop-wallpaper-getou-suguru-suguru-geto.jpg',
    'https://staticg.sportskeeda.com/editor/2022/11/1db9b-16681805105538-1920.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/195/93/desktop-wallpaper-getou-suguru-suguru-geto.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        children: [
          SizedBox(height: 20.h),
          ListView.builder(
              shrinkWrap: true,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return CardConsultation(
                  type: '3x Sesi - 45 Menit / Sesi',
                  price: 'Rp. 0',
                  counselorName: 'Suguru Getou',
                  imgDentist: images[index],
                  startDate: '13 April 2023',
                  onTap: () {},
                  sipp: 'SIPP : 000000',
                  isSelected: true,
                );
              }),
        ],
      ),
    ));
  }
}
