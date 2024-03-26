import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'hotels_cubit/hotels_cubit.dart';
import 'widgets/hotel_list.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hotel App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.read<HotelsCubit>().toggleOrder(),
            icon: const Icon(
              Icons.sort_by_alpha,
              size: 28,
            ),
          ),
        ],
      ),
      body: const HotelsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HotelsCubit>().getHotels(),
        child: const Icon(
          Icons.refresh,
          size: 28,
        ),
      ),
    );
  }
}
