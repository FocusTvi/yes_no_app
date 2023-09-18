import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entitites/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;

  const HerMessageBubble({required this.message, super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // alignment: Alignment.topLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // height: 10,
          // width: 10,
          decoration: BoxDecoration(
              color: colors.secondary,
              borderRadius: BorderRadius.circular(15.0)),
          child: Text(
            message.text,
            style: const TextStyle(color: Colors.white70),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        _ImageBuble(
          url: message.imageUrl!,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class _ImageBuble extends StatelessWidget {
  final String url;

  const _ImageBuble({required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          url,
          height: 150,
          width: size.width * 0.7,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: size.width * 0.7,
              height: 150,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("Rominita is sending and image."),
            );
          },
        ));
  }
}
