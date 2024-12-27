import 'package:flutter/material.dart';
import 'package:stroll/widgets/header_section.dart';
import 'package:stroll/widgets/profile_section.dart';

class StrollUiScreen extends StatelessWidget {
  const StrollUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header Section
              HeaderSection(),
              // Profile Section
              ProfileSection(),
            ],
          ),
        ),
      ),
    );
  }
}
