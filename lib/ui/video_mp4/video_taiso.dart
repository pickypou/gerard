import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

import '../theme.dart';

class VideoMp4View extends StatefulWidget {
  const VideoMp4View({super.key});

  @override
  VideoMp4ViewState createState() => VideoMp4ViewState();
}

class VideoMp4ViewState extends State<VideoMp4View> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  final String videoAssetPath = "assets/video/video_taiso.mp4";

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _videoPlayerController = VideoPlayerController.asset(videoAssetPath);
    await _videoPlayerController.initialize();

    setState(() {
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: _videoPlayerController.value.aspectRatio > 0
            ? _videoPlayerController.value.aspectRatio
            : 16 / 9, // Valeur par défaut en cas d'erreur
        autoPlay: false,
        looping: false,
        allowFullScreen: true,
        allowMuting: true,
        showControls: false,
        placeholder: const Center(child: CircularProgressIndicator()),
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              "Erreur : $errorMessage",
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );
    });
  }


  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: _chewieController != null &&
            _chewieController!.videoPlayerController.value.isInitialized
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Conteneur vidéo
            Container(
              height: 400,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(10),

              child: AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: Chewie(controller: _chewieController!),
              ),
            ),
            // Boutons de contrôle
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.play_arrow,
                        color: theme.colorScheme.onPrimary, size: 30),
                    onPressed: () => _videoPlayerController.play(),
                  ),
                  IconButton(
                    icon: Icon(Icons.pause,
                        color: theme.colorScheme.onPrimary, size: 30),
                    onPressed: () => _videoPlayerController.pause(),
                  ),
                  IconButton(
                    icon: Icon(Icons.replay,
                        color: theme.colorScheme.secondary, size: 30),
                    onPressed: () {
                      _videoPlayerController.seekTo(Duration.zero);
                      _videoPlayerController.pause();
                    },
                  ),
                ],
              ),
            ),
          ],
        )
            : const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text('Chargement de la vidéo...'),
          ],
        ),
    );
  }
}
