import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../model/hotel.dart';
import 'hotels_state.dart';

class HotelsCubit extends Cubit<HotelsState> {
  HotelsCubit() : super(const HotelsState());

  void getHotels() async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));
    try {
      final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/andrea689/flutter_course/main/exams/hotels/hotels',
      ));

      if (response.statusCode == 200) {
        final hotels = (jsonDecode(response.body) as List)
            .map((e) => Hotel.fromJson(e))
            .toList();

        emit(state.copyWith(
          isLoading: false,
          hotels: hotels,
        ));
      } else {
        throw Exception('Failed to load hotels');
      }
    } catch (e, s) {
      emit(state.copyWith(
        isLoading: false,
        hasError: true,
      ));

      print(e);

      print(s);
    }
  }

  void toggleOrder() {
    emit(state.copyWith(isAscending: !state.isAscending));
  }
}
