import 'package:triple_ddd/domain/entity/post.dart';
import 'package:triple_ddd/infrastructure/model/post_api.dart';

class PostMapper {
  static Post modelToEntity(PostApi model) => Post(
      postId: model.getPostId,
      nombre: model.getName,
      correo: model.getEmail,
      cuerpo: model.getBody);
}
