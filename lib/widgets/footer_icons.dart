import 'package:flutter/material.dart';

class FooterIcons extends StatelessWidget {
  const FooterIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(Icons.layers_outlined, color: Colors.grey),
        Stack(
          children: [
            const Icon(
              Icons.local_fire_department_outlined,
              color: Colors.grey,
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                width: 8,
                height: 8,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 184, 117, 196),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            const Icon(
              Icons.chat_bubble_outline,
              color: Colors.grey,
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 184, 117, 196),
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '10',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            )
          ],
        ),
        const Icon(Icons.person_outline, color: Colors.grey),
      ],
    );
  }
}
