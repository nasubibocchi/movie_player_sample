import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_widget_controller.freezed.dart';

final videoWidgetControllerProvider =
    StateNotifierProvider.autoDispose<VideoWidgetController, VideoWidgetState>(
        (ref) => VideoWidgetController());

@freezed
class VideoWidgetState with _$VideoWidgetState {
  factory VideoWidgetState(
      {required List<VideoPlayerController> videoPlayerControllerList,
      required PageController pageController}) = _VideoWidgetState;

  factory VideoWidgetState.loading() = VideoWidgetStateLoading;

  factory VideoWidgetState.error() = _VideoWidgetStateError;
}

class VideoWidgetController extends StateNotifier<VideoWidgetState> {
  VideoWidgetController() : super(VideoWidgetState.loading()) {
    initVideoController();
  }

  final firestore = FirebaseFirestore.instance;

  Future<void> initVideoController() async {
    final ref = firestore.collection('movies');
    final videos = await ref.get();

    if (videos.docs.isNotEmpty) {
      final videoPlayerControllerList = videos.docs
          .map((e) =>
              VideoPlayerController.network(e.data()['movie'])..initialize())
          .toList();

      state = VideoWidgetState(
          videoPlayerControllerList: videoPlayerControllerList,
          pageController: PageController(initialPage: 0));
    }
  }

  Future<void> playFirstMovie() async {
    if (state is _VideoWidgetState) {
      final currentState = state as _VideoWidgetState;

      await currentState.videoPlayerControllerList.first.play();
    }
  }

  Future<void> onPageChanged(int index) async {
    if (state is _VideoWidgetState) {
      final currentState = state as _VideoWidgetState;

      await currentState.videoPlayerControllerList[index].play();
      if (index > 1) {
        await currentState.videoPlayerControllerList[index - 1].pause();
      }
    }
  }
}
