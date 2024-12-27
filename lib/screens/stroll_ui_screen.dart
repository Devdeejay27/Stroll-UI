import 'package:flutter/material.dart';
import 'package:stroll/widgets/header_section.dart';
import 'package:stroll/widgets/option_button.dart';
import 'package:stroll/widgets/profile_section.dart';

class StrollUiScreen extends StatelessWidget {
  const StrollUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Header Section
              const HeaderSection(),
              // Profile Section
              const ProfileSection(),
              const SizedBox(height: 10),
              //Option Buttons
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // options in 2 per row
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.3,
                    ),
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 2.5,
                      children: [
                        OptionButton(
                          label: 'The peace in the early mornings',
                          isSelected: false,
                          letter: 'A',
                          onTap: () {},
                        ),
                        OptionButton(
                          label: 'The magical golden hours',
                          isSelected: false,
                          letter: 'B',
                          onTap: () {},
                        ),
                        OptionButton(
                          label: 'Wind-down time after dinners',
                          isSelected: false,
                          letter: 'C',
                          onTap: () {},
                        ),
                        OptionButton(
                          label: 'The serenity past midnight',
                          isSelected: true,
                          letter: 'D',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
