import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'pages/hotel_detail_page/hotelDetail_cubit/hotelDetail_cubit.dart';
import 'pages/hotel_detail_page/hotel_detail_page.dart';
import 'pages/hotels_page/hotels_cubit/hotels_cubit.dart';
import 'pages/hotels_page/hotels_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => BlocProvider(
              create: (context) => HotelsCubit()..getHotels(),
              child: const HotelsPage(),
            ),
            routes: [
              GoRoute(
                path: 'details/:hotelId',
                builder: (context, state) {
                  final hotelId = int.tryParse(
                    '${state.pathParameters['hotelId']}',
                  );

                  if (hotelId == null) {
                    return const Scaffold(
                      body: Center(
                        child: Text('HotelId non valido'),
                      ),
                    );
                  }

                  return BlocProvider(
                    create: (context) => HotelDetailCubit()..getRoom(hotelId),
                    child: const RoomDetailPage(),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
