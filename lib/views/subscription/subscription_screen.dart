import 'package:flutter/material.dart';
import 'package:snabb_business/views/subscription/free_subscription.dart';
import 'package:snabb_business/views/subscription/paid_subscription.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: 'Subscription',
      ),
      body: Padding(
        padding: EdgeInsets.all(
            size.height * 0.02), // Add padding between ListView items
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2, // Number of plans
          itemBuilder: (context, index) {
            return Container(
              width: size.width - 80, // Adjust width based on padding
              margin: const EdgeInsets.symmetric(
                  horizontal: 5.0), // Add margin between items
              child: index == 0
                  ? FreePlan(
                      currency: 'PKR',
                      selected: true,
                      buyFun: () {},
                    )
                  : PaidPlan(
                      selected: false,
                      buyFun: () {},
                      currency: '',
                      price: '30,000',
                    ),
            );
          },
        ),
      ),
    );
  }
}
