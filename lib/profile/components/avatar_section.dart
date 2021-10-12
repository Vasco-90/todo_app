import 'package:flutter/material.dart';

class AvatarSection extends StatelessWidget {
  const AvatarSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Colors.amber,
      child: Icon(
        Icons.person,
        size: 50,
      ),
    );
  }
}
