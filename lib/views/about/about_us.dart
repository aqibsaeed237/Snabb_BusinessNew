import 'package:flutter/material.dart';
import 'package:snabb_business/widgets/custom_appbar.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomExpandedAppBar(
        title: "About Us",
      ),
      body: Padding(
        padding: EdgeInsets.all(size.height * 0.02),
        child: ListView(
          children: [
            const ListTile(
              title: ReusableTextLabel(text: 'Privacy Policy'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ListTile(
              title: ReusableTextLabel(text: "FAQ's"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ListTile(
              title: ReusableTextLabel(text: 'Terms and Conditions'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ListTile(
              title: ReusableTextLabel(text: 'Payment Method'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ListTile(
              title: ReusableTextLabel(text: 'Tutorial Video'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
