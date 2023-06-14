import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color:
                            isInverted ? const Color(0xFF1F2123) : Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: isInverted
                            ? const Color(0xFF1F2123)
                            : Colors.white.withOpacity(0.8),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.3,
              child: Transform.translate(
                offset: const Offset(
                  -2,
                  10,
                ),
                child: Icon(
                  icon,
                  color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
