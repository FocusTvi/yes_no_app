import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entitites/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;

  const MyMessageBubble({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          // alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // height: 10,
          // width: 10,
          decoration: BoxDecoration(
              color: colors.primary, borderRadius: BorderRadius.circular(15.0)),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(
          height: 2,
        )
      ],
    );
  }
}
