class Post {
  final int _postId;
  final String _nombre;
  final String _correo;
  final String _cuerpo;
  Post(
      {required int postId,
      required String nombre,
      required String correo,
      required String cuerpo})
      : _cuerpo = cuerpo,
        _correo = correo,
        _nombre = nombre,
        _postId = postId;

  get getPostId => _postId;
  get getNombre => _nombre;
  get getCorreo => _correo;
  get getCuerpo => _cuerpo;
}
