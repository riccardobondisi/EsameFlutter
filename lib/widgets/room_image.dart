import 'package:flutter/material.dart';

class RoomImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const RoomImage({
    super.key,
    required this.imageUrl,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        gradient: RadialGradient(
          colors: [
            Colors.grey[800]!,
            Colors.grey[700]!,
            Colors.grey[600]!,
          ],
        ),
      ),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
