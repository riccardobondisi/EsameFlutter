// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roomDetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoomDetail _$RoomDetailFromJson(Map<String, dynamic> json) {
  return _RoomDetail.fromJson(json);
}

/// @nodoc
mixin _$RoomDetail {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'adults')
  int get adults => throw _privateConstructorUsedError;
  @JsonKey(name: 'mq')
  int get mq => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_for_night')
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDetailCopyWith<RoomDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDetailCopyWith<$Res> {
  factory $RoomDetailCopyWith(
          RoomDetail value, $Res Function(RoomDetail) then) =
      _$RoomDetailCopyWithImpl<$Res, RoomDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'adults') int adults,
      @JsonKey(name: 'mq') int mq,
      @JsonKey(name: 'price_for_night') int price});
}

/// @nodoc
class _$RoomDetailCopyWithImpl<$Res, $Val extends RoomDetail>
    implements $RoomDetailCopyWith<$Res> {
  _$RoomDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = null,
    Object? adults = null,
    Object? mq = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      mq: null == mq
          ? _value.mq
          : mq // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDetailImplCopyWith<$Res>
    implements $RoomDetailCopyWith<$Res> {
  factory _$$RoomDetailImplCopyWith(
          _$RoomDetailImpl value, $Res Function(_$RoomDetailImpl) then) =
      __$$RoomDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'adults') int adults,
      @JsonKey(name: 'mq') int mq,
      @JsonKey(name: 'price_for_night') int price});
}

/// @nodoc
class __$$RoomDetailImplCopyWithImpl<$Res>
    extends _$RoomDetailCopyWithImpl<$Res, _$RoomDetailImpl>
    implements _$$RoomDetailImplCopyWith<$Res> {
  __$$RoomDetailImplCopyWithImpl(
      _$RoomDetailImpl _value, $Res Function(_$RoomDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = null,
    Object? adults = null,
    Object? mq = null,
    Object? price = null,
  }) {
    return _then(_$RoomDetailImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      adults: null == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int,
      mq: null == mq
          ? _value.mq
          : mq // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDetailImpl implements _RoomDetail {
  const _$RoomDetailImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'adults') required this.adults,
      @JsonKey(name: 'mq') required this.mq,
      @JsonKey(name: 'price_for_night') required this.price});

  factory _$RoomDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDetailImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'adults')
  final int adults;
  @override
  @JsonKey(name: 'mq')
  final int mq;
  @override
  @JsonKey(name: 'price_for_night')
  final int price;

  @override
  String toString() {
    return 'RoomDetail(type: $type, image: $image, adults: $adults, mq: $mq, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDetailImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.mq, mq) || other.mq == mq) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, image, adults, mq, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDetailImplCopyWith<_$RoomDetailImpl> get copyWith =>
      __$$RoomDetailImplCopyWithImpl<_$RoomDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDetailImplToJson(
      this,
    );
  }
}

abstract class _RoomDetail implements RoomDetail {
  const factory _RoomDetail(
          {@JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'image') required final String image,
          @JsonKey(name: 'adults') required final int adults,
          @JsonKey(name: 'mq') required final int mq,
          @JsonKey(name: 'price_for_night') required final int price}) =
      _$RoomDetailImpl;

  factory _RoomDetail.fromJson(Map<String, dynamic> json) =
      _$RoomDetailImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'adults')
  int get adults;
  @override
  @JsonKey(name: 'mq')
  int get mq;
  @override
  @JsonKey(name: 'price_for_night')
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$RoomDetailImplCopyWith<_$RoomDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
