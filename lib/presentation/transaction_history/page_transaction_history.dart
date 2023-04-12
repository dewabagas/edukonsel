import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';

class PageTransactionHistory extends StatefulWidget {
  const PageTransactionHistory({super.key});

  @override
  State<PageTransactionHistory> createState() => _PageTransactionHistoryState();
}

class _PageTransactionHistoryState extends State<PageTransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
        appBarTitle: 'Riwayat Transaksi', child: Container());
  }
}
