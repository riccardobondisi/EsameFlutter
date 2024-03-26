import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../model/hotel.dart';
import '../../../widgets/hotel_image.dart';

class HotelItem extends StatelessWidget {
  final Hotel hotel;
  const HotelItem({
    super.key,
    required this.hotel,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/details/${hotel.id}'),
      child: Card(
        elevation: 2,
        child: ListTile(
          leading: HotelImage(
            imageUrl: hotel.mainPhoto,
            size: 50,
          ),
          title: Text(
            hotel.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    hotel.voteAverage.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                hotel.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
