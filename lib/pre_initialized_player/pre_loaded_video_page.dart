import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_sample/pre_initialized_player/video_widget_controller.dart';
import 'package:video_player/video_player.dart';

class PreLoadedVideoPage extends HookConsumerWidget {
  const PreLoadedVideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final state = ref.watch(videoWidgetControllerProvider);

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await ref.read(videoWidgetControllerProvider.notifier).playFirstMovie();
    });

    return state.when(
      (videoPlayerControllerList, pageController) {
        return Scaffold(
          appBar: AppBar(),
          body: videoPlayerControllerList.isNotEmpty
              ? PageView.builder(
                  controller: pageController,
                  itemCount: videoPlayerControllerList.length,
                  scrollDirection: Axis.vertical,
                  onPageChanged: ref
                      .read(videoWidgetControllerProvider.notifier)
                      .onPageChanged,
                  itemBuilder: (context, int index) {
                    return SizedBox(
                      height: height,
                      width: width,
                      child: VideoPlayer(videoPlayerControllerList[index]),
                    );
                  })
              : const Center(
                  child: Text('動画がありません'),
                ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
