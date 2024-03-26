import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/room_image.dart';
import 'hotelDetail_cubit/hotelDetail_cubit.dart';

class RoomDetailPage extends StatelessWidget {
  const RoomDetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HotelDetailCubit>().state;
    final hotelDetail = state.hotelDetail;

    if (state.isLoading) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (state.hasError) {
      return const Scaffold(
        body: Center(
          child: Text('Errore nella richiesta'),
        ),
      );
    }

    if (hotelDetail == null) {
      return const Scaffold(
        body: Center(
          child: Text('Hotel non trovato'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          hotelDetail.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: hotelDetail.rooms.length,
        itemBuilder: (context, index) {
          final room = hotelDetail.rooms[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4),
                    ),
                    child: RoomImage(
                      imageUrl: room.image.toString(),
                      size: 200,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      room.type.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          'Indirizzo: ${hotelDetail.address.toString()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Numero massimo di adulti consentito: ${room.adults.toString()}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Dimensione della camera: ${room.mq.toString()} mq',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Prezzo per notte: ${room.price.toString()} euro',
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
