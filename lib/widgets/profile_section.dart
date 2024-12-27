import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Profile Picture
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
          ],
        )
      ],
    );
  }
}
