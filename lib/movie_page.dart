import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_sample/movie_widget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firestore = FirebaseFirestore.instance;

    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
          future: firestore.collection('movies').get(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              final movies =
                  snapshot.data!.docs.map((e) => e.data()['movie']).toList();
              return movies.isNotEmpty
                  ? PageView.builder(
                      itemCount: movies.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, int index) {
                        return MovieWidget(moviePath: movies[index]);
                      })
                  : const Center(
                      child: Text('動画がありません'),
                    );
            } else {
              return const Center(
                child: Text('エラー'),
              );
            }
          }),
    );
  }
}
