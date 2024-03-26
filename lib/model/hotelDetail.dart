import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tentativo_2/model/roomDetail.dart';

part 'hotelDetail.freezed.dart';
part 'hotelDetail.g.dart';

@freezed
class HotelDetail with _$HotelDetail {
  const factory HotelDetail({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'address') required String address,
    @JsonKey(name: 'rooms') required List<RoomDetail> rooms,
  }) = _HotelDetail;

  factory HotelDetail.fromJson(Map<String, dynamic> json) =>
      _$HotelDetailFromJson(json);
}
