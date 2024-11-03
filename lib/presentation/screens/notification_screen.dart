import 'package:bw_assignment1/core/constants.dart';
import 'package:bw_assignment1/presentation/bloc/notification_bloc/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final List<String> images = [
    'assets/noti/noti 1.png',
    'assets/noti/noti 2.png',
    'assets/noti/noti 3.png',
    'assets/noti/noti 4.png',
    'assets/noti/noti 5.png',
    'assets/noti/noti 6.png',
    'assets/noti/noti 7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 95,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: const Offset(0, -6),
                ),
              ],
            ),
            child: AppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 95,
              automaticallyImplyLeading: false,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: kGreen,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: kWhite,
                      ),
                    ),
                  ),
                  kWidth10,
                  Text(
                    'Notifications',
                    style: j20B,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: BlocProvider(
              create: (context) =>
                  NotificationBloc()..add(FetchAllNotification()),
              child: BlocConsumer<NotificationBloc, NotificationState>(
                listener: (context, state) {},
                builder: (context, state) {
                  if (state is NotificationLoadingState) {
                    const Center(child: CircularProgressIndicator());
                  } else if (state is NotificationSuccessState) {
                    return ListView.separated(
                        itemBuilder: (context, index) {
                          final data = state.data[index];
                          return Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    images[index],
                                    height: 50,
                                  ),
                                  kWidth10,
                                  Expanded(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                        Text(data.title,
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold)),
                                        kHeight5,
                                        Text(data.subtitle,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            style:
                                                const TextStyle(fontSize: 15)),
                                        kHeight5,
                                        Text(
                                          timeago.format(
                                            DateTime.parse(data.time),
                                          ),
                                          style: const TextStyle(fontSize: 14),
                                        )
                                      ]))
                                ]),
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: images.length);
                  } else if (state is NotificationErrorState) {
                    return const Center(child: Text('Failed to load'));
                  }
                  return const Center(
                      child: CircularProgressIndicator(
                    color: kGreen,
                  ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
