import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:movie_sample/movie_page.dart';
import 'package:video_player/video_player.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Movie sample page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;
  final _picker = ImagePicker();

  late Reference storageRef;
  late VideoPlayerController videoController;

  XFile pickedFile = XFile('');

  @override
  void initState() {
    super.initState();
    storageRef = _storage.ref().child('movies');
  }

  Future<XFile?> _pickMovies() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    return pickedFile;
  }

  Future<void> storeMovieToFirestore(
      {required String moviePath, required String fileName}) async {
    String movieUrl = '';
    await _putMovieFileToStorage(moviePath: moviePath, fileName: fileName)
        .then((_) async {
      movieUrl = await _downloadMovieUrl(fileName: fileName);
    });

    final firestoreRef = _firestore.collection('movies');
    await firestoreRef.add(<String, dynamic>{
      'movie': movieUrl,
    });
  }

  Future<void> _putMovieFileToStorage(
      {required String moviePath, required String fileName}) async {
    await storageRef.child('$fileName.MOV').putFile(File(moviePath));
  }

  Future<String> _downloadMovieUrl({required String fileName}) async {
    final url = await storageRef.child('$fileName.MOV').getDownloadURL();
    return url;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Center(
            child: pickedFile.path != ''
                ? Stack(
                    children: [
                      SizedBox(
                          height: 480,
                          width: 300,
                          child: VideoPlayer(videoController)),
                      videoController.value.isPlaying
                          ? IconButton(
                              onPressed: () {
                                setState(() {
                                  videoController.pause();
                                });
                              },
                              icon: const Icon(Icons.stop_circle_rounded))
                          : IconButton(
                              onPressed: () {
                                setState(() {
                                  videoController.play();
                                });
                              },
                              icon: const Icon(Icons.play_circle_fill_rounded)),
                    ],
                  )
                : const SizedBox(),
          ),
          ElevatedButton(
              onPressed: () async {
                if (pickedFile.path != '') {
                  await storeMovieToFirestore(
                      moviePath: pickedFile.path, fileName: pickedFile.path);
                }
              },
              child: const Text('add to firestore')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MoviePage()));
              },
              child: const Text('go to movie page')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final xFile = await _pickMovies();
          setState(() {
            if (xFile != null) {
              pickedFile = xFile;
              videoController =
                  VideoPlayerController.file(File(pickedFile.path))
                    ..initialize();
            }
          });
        },
        tooltip: 'add_movie',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
