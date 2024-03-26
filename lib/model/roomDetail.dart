import 'package:freezed_annotation/freezed_annotation.dart';

part 'roomDetail.freezed.dart';
part 'roomDetail.g.dart';

@freezed
class RoomDetail with _$RoomDetail {
  const factory RoomDetail({
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'adults') required int adults,
    @JsonKey(name: 'mq') required int mq,
    @JsonKey(name: 'price_for_night') required int price,
  }) = _RoomDetail;

  factory RoomDetail.fromJson(Map<String, dynamic> json) =>
      _$RoomDetailFromJson(json);
}
