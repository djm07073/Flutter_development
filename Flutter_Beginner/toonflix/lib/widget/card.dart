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
    Container(
      clipBehavior: Clip.hardEdge, //짤라내기
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : const Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(amount,
                        style: TextStyle(
                          color: isInverted
                              ? const Color(0xFF1F2123)
                              : Colors.white,
                          fontSize: 20,
                        )),
                    Text(
                      code,
                      style: TextStyle(
                        color:
                            isInverted ? const Color(0xFF1F2123) : Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2, //scale로 카드의 크기를 조절하지 않고 icon 크기를 조절 가능합니다.
              child: Transform.translate(
                // translate:아이콘의 x,y좌표 위치를 바꿈.
                offset: const Offset(-3, 12),
                child: Icon(
                  icon,
                  color: isInverted ? const Color(0xFF1F2123) : Colors.white,
                  size: 98,
                ),
              ),
            )
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
