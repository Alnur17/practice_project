import 'package:flutter/material.dart';
import 'package:practice_project/components/sidebar_row.dart';
import 'package:practice_project/constants.dart';
import 'package:practice_project/model/sidebar.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width * 0.80,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(34),
          ),
          color: kSidebarBackgroundColor),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 25,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sultan Md. Alnur',
                      style: kHeadlineLabelStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Hi there how are you doing today!',
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            SidebarRow(
              item: sidebarItem[0],
            ),
            const SizedBox(height: 32),
            SidebarRow(
              item: sidebarItem[1],
            ),
            const SizedBox(height: 32),
            SidebarRow(
              item: sidebarItem[2],
            ),
            const SizedBox(height: 32),
            SidebarRow(
              item: sidebarItem[3],
            ),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17,
                ),
                const SizedBox(width: 8),
                Text(
                  'Logout',
                  style: kSecondaryCalloutLabelStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
