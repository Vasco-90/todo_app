import 'package:flutter/material.dart';
import 'package:todo_app/common/components/card_container.dart';
import 'package:todo_app/profile/components/app_info_section.dart';
import 'package:todo_app/profile/components/avatar_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: AvatarSection(),
          ),
          Expanded(
            flex: 2,
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.5 / 1,
              children: [
                CardContainer(),
                CardContainer(),
                CardContainer(),
                CardContainer(),
              ],
            ),
          ),
          const AppInfoSection(),
        ],
      ),
    );
  }
}
