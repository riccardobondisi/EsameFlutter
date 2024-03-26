import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../hotels_cubit/hotels_cubit.dart';
import 'hotel_item.dart';

class HotelsList extends StatelessWidget {
  const HotelsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.watch<HotelsCubit>().state;
    final hotels = state.sortedHotels;

    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state.hasError) {
      return const Center(
        child: Text('Errore nella richiesta'),
      );
    }

    if (hotels.isEmpty) {
      return const Center(
        child: Text('Nessun hotel trovato'),
      );
    }

    return ListView.separated(
      itemCount: hotels.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: HotelItem(
          hotel: hotels[index],
        ),
      ),
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Divider(
          color: Colors.grey[400],
          thickness: 1.0,
        ),
      ),
    );
  }
}
