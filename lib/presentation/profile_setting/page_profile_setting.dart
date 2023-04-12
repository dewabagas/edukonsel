import 'package:edukonsel/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter/material.dart';

class PageProfileSetting extends StatefulWidget {
  const PageProfileSetting({super.key});

  @override
  State<PageProfileSetting> createState() => _PageProfileSettingState();
}

class _PageProfileSettingState extends State<PageProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(appBarTitle: 'Pengaturan', child: Container());
  }
}
