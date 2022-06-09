// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_widget_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoWidgetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)
        $default, {
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoWidgetState value) $default, {
    required TResult Function(VideoWidgetStateLoading value) loading,
    required TResult Function(_VideoWidgetStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoWidgetStateCopyWith<$Res> {
  factory $VideoWidgetStateCopyWith(
          VideoWidgetState value, $Res Function(VideoWidgetState) then) =
      _$VideoWidgetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoWidgetStateCopyWithImpl<$Res>
    implements $VideoWidgetStateCopyWith<$Res> {
  _$VideoWidgetStateCopyWithImpl(this._value, this._then);

  final VideoWidgetState _value;
  // ignore: unused_field
  final $Res Function(VideoWidgetState) _then;
}

/// @nodoc
abstract class _$$_VideoWidgetStateCopyWith<$Res> {
  factory _$$_VideoWidgetStateCopyWith(
          _$_VideoWidgetState value, $Res Function(_$_VideoWidgetState) then) =
      __$$_VideoWidgetStateCopyWithImpl<$Res>;
  $Res call(
      {List<VideoPlayerController> videoPlayerControllerList,
      PageController pageController});
}

/// @nodoc
class __$$_VideoWidgetStateCopyWithImpl<$Res>
    extends _$VideoWidgetStateCopyWithImpl<$Res>
    implements _$$_VideoWidgetStateCopyWith<$Res> {
  __$$_VideoWidgetStateCopyWithImpl(
      _$_VideoWidgetState _value, $Res Function(_$_VideoWidgetState) _then)
      : super(_value, (v) => _then(v as _$_VideoWidgetState));

  @override
  _$_VideoWidgetState get _value => super._value as _$_VideoWidgetState;

  @override
  $Res call({
    Object? videoPlayerControllerList = freezed,
    Object? pageController = freezed,
  }) {
    return _then(_$_VideoWidgetState(
      videoPlayerControllerList: videoPlayerControllerList == freezed
          ? _value._videoPlayerControllerList
          : videoPlayerControllerList // ignore: cast_nullable_to_non_nullable
              as List<VideoPlayerController>,
      pageController: pageController == freezed
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
    ));
  }
}

/// @nodoc

class _$_VideoWidgetState implements _VideoWidgetState {
  _$_VideoWidgetState(
      {required final List<VideoPlayerController> videoPlayerControllerList,
      required this.pageController})
      : _videoPlayerControllerList = videoPlayerControllerList;

  final List<VideoPlayerController> _videoPlayerControllerList;
  @override
  List<VideoPlayerController> get videoPlayerControllerList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoPlayerControllerList);
  }

  @override
  final PageController pageController;

  @override
  String toString() {
    return 'VideoWidgetState(videoPlayerControllerList: $videoPlayerControllerList, pageController: $pageController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoWidgetState &&
            const DeepCollectionEquality().equals(
                other._videoPlayerControllerList, _videoPlayerControllerList) &&
            const DeepCollectionEquality()
                .equals(other.pageController, pageController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videoPlayerControllerList),
      const DeepCollectionEquality().hash(pageController));

  @JsonKey(ignore: true)
  @override
  _$$_VideoWidgetStateCopyWith<_$_VideoWidgetState> get copyWith =>
      __$$_VideoWidgetStateCopyWithImpl<_$_VideoWidgetState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)
        $default, {
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return $default(videoPlayerControllerList, pageController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return $default?.call(videoPlayerControllerList, pageController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(videoPlayerControllerList, pageController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoWidgetState value) $default, {
    required TResult Function(VideoWidgetStateLoading value) loading,
    required TResult Function(_VideoWidgetStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _VideoWidgetState implements VideoWidgetState {
  factory _VideoWidgetState(
      {required final List<VideoPlayerController> videoPlayerControllerList,
      required final PageController pageController}) = _$_VideoWidgetState;

  List<VideoPlayerController> get videoPlayerControllerList =>
      throw _privateConstructorUsedError;
  PageController get pageController => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_VideoWidgetStateCopyWith<_$_VideoWidgetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoWidgetStateLoadingCopyWith<$Res> {
  factory _$$VideoWidgetStateLoadingCopyWith(_$VideoWidgetStateLoading value,
          $Res Function(_$VideoWidgetStateLoading) then) =
      __$$VideoWidgetStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoWidgetStateLoadingCopyWithImpl<$Res>
    extends _$VideoWidgetStateCopyWithImpl<$Res>
    implements _$$VideoWidgetStateLoadingCopyWith<$Res> {
  __$$VideoWidgetStateLoadingCopyWithImpl(_$VideoWidgetStateLoading _value,
      $Res Function(_$VideoWidgetStateLoading) _then)
      : super(_value, (v) => _then(v as _$VideoWidgetStateLoading));

  @override
  _$VideoWidgetStateLoading get _value =>
      super._value as _$VideoWidgetStateLoading;
}

/// @nodoc

class _$VideoWidgetStateLoading implements VideoWidgetStateLoading {
  _$VideoWidgetStateLoading();

  @override
  String toString() {
    return 'VideoWidgetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoWidgetStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)
        $default, {
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoWidgetState value) $default, {
    required TResult Function(VideoWidgetStateLoading value) loading,
    required TResult Function(_VideoWidgetStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VideoWidgetStateLoading implements VideoWidgetState {
  factory VideoWidgetStateLoading() = _$VideoWidgetStateLoading;
}

/// @nodoc
abstract class _$$_VideoWidgetStateErrorCopyWith<$Res> {
  factory _$$_VideoWidgetStateErrorCopyWith(_$_VideoWidgetStateError value,
          $Res Function(_$_VideoWidgetStateError) then) =
      __$$_VideoWidgetStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VideoWidgetStateErrorCopyWithImpl<$Res>
    extends _$VideoWidgetStateCopyWithImpl<$Res>
    implements _$$_VideoWidgetStateErrorCopyWith<$Res> {
  __$$_VideoWidgetStateErrorCopyWithImpl(_$_VideoWidgetStateError _value,
      $Res Function(_$_VideoWidgetStateError) _then)
      : super(_value, (v) => _then(v as _$_VideoWidgetStateError));

  @override
  _$_VideoWidgetStateError get _value =>
      super._value as _$_VideoWidgetStateError;
}

/// @nodoc

class _$_VideoWidgetStateError implements _VideoWidgetStateError {
  _$_VideoWidgetStateError();

  @override
  String toString() {
    return 'VideoWidgetState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VideoWidgetStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)
        $default, {
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VideoPlayerController> videoPlayerControllerList,
            PageController pageController)?
        $default, {
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoWidgetState value) $default, {
    required TResult Function(VideoWidgetStateLoading value) loading,
    required TResult Function(_VideoWidgetStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoWidgetState value)? $default, {
    TResult Function(VideoWidgetStateLoading value)? loading,
    TResult Function(_VideoWidgetStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _VideoWidgetStateError implements VideoWidgetState {
  factory _VideoWidgetStateError() = _$_VideoWidgetStateError;
}
