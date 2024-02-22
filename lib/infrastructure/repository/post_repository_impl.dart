import 'package:dio/dio.dart';
import 'package:triple_ddd/domain/entity/post.dart';
import 'package:triple_ddd/domain/repository/post_repository.dart';
import 'package:triple_ddd/infrastructure/mapper/postmapper.dart';
import 'package:triple_ddd/infrastructure/model/post_api.dart';

class PostRepositoryImpl implements PostRepository {
  final String baseUrl =
      'https://jsonplaceholder.typicode.com/posts/1/comments'; // Corrección: Eliminar el espacio antes de la URL

  @override
  Future<List<Post>> getAllPosts() async {
    final dio = Dio();
    final response =
        await dio.get(baseUrl); // No es necesario usar interpolación
    if (response.statusCode == 200) {
      List<dynamic> responseData = response.data;
      List<PostApi> postsApi =
          responseData.map((json) => PostApi.fromJson(json)).toList();
      return postsApi.map((post) => PostMapper.modelToEntity(post)).toList();
    } else {
      throw Exception(
          'Failed to load posts'); // Corrección: Cambiar 'products' a 'posts'
    }
  }
}
