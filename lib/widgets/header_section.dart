import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      // Background Image
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/sunset.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          // Header Content
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Title and Dropdown arrow
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      style: TextStyle(
                        color: Color.fromARGB(255, 184, 117, 196),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(width: 8), // space btw text & dropdown
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Color.fromARGB(255, 184, 117, 196),
                      size: 24,
                    ),
                  ],
                ),
                SizedBox(height: 5), // space btw rows
                // Time and People count
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Time
                    Icon(Icons.access_time, color: Colors.white),
                    Text(
                      '22h 00m',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 15),
                    Row(
                      children: [
                        Icon(Icons.person_outlined, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          '103',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
