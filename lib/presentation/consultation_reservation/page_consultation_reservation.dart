import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageConsultationReservation extends StatefulWidget {
  const PageConsultationReservation({super.key});

  @override
  State<PageConsultationReservation> createState() =>
      _PageConsultationReservationState();
}

class _PageConsultationReservationState
    extends State<PageConsultationReservation> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Reservasi Jadwal', child: Container());
  }
}
