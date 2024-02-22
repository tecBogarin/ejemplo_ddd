import 'package:triple_ddd/domain/entity/post.dart';
import 'package:triple_ddd/domain/repository/post_repository.dart';

class PostApp implements PostRepository {
  final PostRepository _postRepository;

  PostApp({required PostRepository postRepository})
      : _postRepository = postRepository;

  @override
  Future<List<Post>> getAllPosts() async => _postRepository.getAllPosts();
}
