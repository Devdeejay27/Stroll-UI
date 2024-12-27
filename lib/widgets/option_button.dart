import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  const OptionButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.letter,
    required this.onTap,
  });
  final String label;
  final String letter;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 12.0,
        ),
        decoration: BoxDecoration(
          color:
              isSelected ? Colors.transparent : Colors.white.withOpacity(0.1),
          border: Border.all(
            color: isSelected
                ? const Color.fromARGB(255, 184, 117, 196)
                : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            // Letters with circle
            Container(
              height: 18.0,
              width: 18.0,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color.fromARGB(255, 184, 117, 196)
                    : Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected
                      ? const Color.fromARGB(255, 184, 117, 196)
                      : Colors.white,
                  width: 1.0,
                ),
              ),
              child: Center(
                child: Text(
                  letter,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8.0),

            // Option Text
            Expanded(
              child: Text(
                label,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
