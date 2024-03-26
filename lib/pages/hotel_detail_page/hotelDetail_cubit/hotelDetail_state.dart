import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tentativo_2/model/hotelDetail.dart';

part 'hotelDetail_state.freezed.dart';

@freezed
class HotelDetailState with _$HotelDetailState {
  const factory HotelDetailState({
    HotelDetail? hotelDetail,
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
  }) = _HotelDetailState;
}
