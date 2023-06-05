import 'package:auto_route/auto_route.dart';
import 'package:edukonsel/domain/consultation/models/chat_message.dart';
import 'package:edukonsel/presentation/core/constants/styles.dart';
import 'package:edukonsel/presentation/core/styles/app_colors.dart';
import 'package:edukonsel/presentation/routes/router.gr.dart';
import 'package:edukonsel/presentation/shared/widgets/images/image_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabConsultation extends StatefulWidget {
  const TabConsultation({super.key});

  @override
  State<TabConsultation> createState() => _TabConsultationState();
}

class _TabConsultationState extends State<TabConsultation> {
  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Assalamualaikum, Kak", messageType: "receiver"),
    ChatMessage(messageContent: "Apa Kabs?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Yo wassap meh, i'm good meh", messageType: "sender"),
    ChatMessage(
        messageContent: "Baiklah, apa ada yang bisa saya bantu konsultasi?",
        messageType: "receiver"),
    ChatMessage(
        messageContent:
            "Iya kak, lately aku ngerasa kalau aku down banget kak?",
        messageType: "sender"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16.w),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                ),
                SizedBox(width: 2.w),
                ImageCircle(
                  image:
                      'https://assets.vogue.com/photos/5891a635b482c0ea0e4d9b49/master/w_2560%2Cc_limit/holding-al-pacino-best-and-worst-film-moments.jpg',
                  height: 40.w,
                  width: 40.w,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Al Pacino",
                        style: TextStyles.titleMedium.copyWith(
                            color: AppColors.charcoal,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Online",
                        style: TextStyles.bodySmall,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 45.w,
                  width: 45.w,
                  margin: EdgeInsets.only(right: 10.w, left: 10.w),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(60.r),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      AutoRouter.of(context)
                          .push(const RouteConsultationVideoConference());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.grey.shade200
                          : AppColors.primary.withOpacity(0.5)),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyles.bodyLarge,
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(left: 10.w, bottom: 15.h, top: 10.h),
              height: 80.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 4,
                        spreadRadius: 0,
                        color: const Color(0xFF3A3A3A).withOpacity(0.25))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey7,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 15.h),
                          hintText: "Ketik pesan kamu disini...",
                          hintStyle: TextStyles.bodyMedium,
                          border: InputBorder.none,
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.camera_alt_outlined,
                                  color: AppColors.grey,
                                ),
                                SizedBox(width: 5.w),
                                const Icon(Icons.mic_none_outlined,
                                    color: AppColors.grey),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 45.w,
                      width: 45.w,
                      margin: EdgeInsets.only(right: 10.w, left: 10.w),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: IconButton(
                          icon: const Icon(
                            Icons.send,
                            color: AppColors.white,
                          ),
                          onPressed: () {})),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
