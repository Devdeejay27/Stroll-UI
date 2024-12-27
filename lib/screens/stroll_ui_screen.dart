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

                  // Instructional Text and Icons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            'Pick your option.See who has a similar mind.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.left, //text to the left
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Row(
                          children: [
                            //Mic icon with purple border
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 184, 117, 196),
                                  width: 2.0,
                                ),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.mic,
                                  color: Color.fromARGB(255, 184, 117, 196),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8.0,
                            ), //spacing btw
                            // Arrow forward icon with purple fill
                            Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 184, 117, 196),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
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
