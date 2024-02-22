import 'package:triple_ddd/domain/entity/post.dart';

abstract class PostRepository {
  Future<List<Post>> getAllPosts();
  
}
