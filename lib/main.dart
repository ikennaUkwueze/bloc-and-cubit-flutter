import 'package:bloc_and_cubit/post_view.dart';
import 'package:bloc_and_cubit/posts_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<PostsBloc>(
        create: (_) => PostsBloc()..add(LoadPostsEvent()),
        child: PostView(),
      ),
    );
  }
}
