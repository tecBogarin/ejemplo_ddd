import 'package:flutter/material.dart';
import 'package:triple_ddd/application/post_app.dart';
import 'package:triple_ddd/domain/entity/post.dart';
import 'package:triple_ddd/infrastructure/repository/post_repository_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostApp app = PostApp(postRepository: PostRepositoryImpl());
  List<Post> _posts = []; // Lista de publicaciones
  @override
  void initState() {
    super.initState();
    _loadPosts();
  }

  // Función para cargar las publicaciones
  void _loadPosts() async {
    try {
      _posts = await app.getAllPosts();
      setState(() {});
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: _posts.length,
          itemBuilder: (context, index) {
            final post = _posts[index];
            return ListTile(
              title: Text(post.getNombre),
              subtitle: Text(post.getCuerpo),
            );
          },
        ));
  }
}
