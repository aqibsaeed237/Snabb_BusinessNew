import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/views/homeScreen/dash_board.dart';

class MyDashboardAppBar extends StatelessWidget {
  const MyDashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 261.0,
            floating: false,
            pinned: true,
            flexibleSpace: MyFlexibleSpace(),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: whiteColor,
                ),
                onPressed: () {
                  // Handle notification icon press
                },
              ),
            ],
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                color: whiteColor,
              ),
              onPressed: () {
                // Handle drawer icon press
              },
            ),
          ),
        ];
      },
      body: DashBoard(),
    );
  }
}

class MyFlexibleSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Title',
            style: TextStyle(fontSize: 24.0),
          ),
          const Text(
            'Subtitle',
            style: TextStyle(fontSize: 16.0),
          ),
          Container(
            width: 290.0,
            height: 45.0,
            margin: const EdgeInsets.only(top: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.blue,
            ),
            child: const Center(
              child: Text(
                'Amount Balance',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      background: Image.network(
        'https://example.com/your-image-url.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
