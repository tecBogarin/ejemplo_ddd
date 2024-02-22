class PostApi {
    final int? _postId;
    final int? _id;
    final String? _name;
    final String? _email;
    final String? _body;

    PostApi({
        required int postId,
        required int id,
        required String name,
        required String email,
        required String body,
    }) : _body = body, _email = email, _name = name, _id = id, _postId = postId;

    factory PostApi.fromJson(Map<String, dynamic> json) => PostApi(
        postId: json["postId"]??=0,
        id: json["id"]??=0,
        name: json["name"]??='desconocido',
        email: json["email"]??='desconocido',
        body: json["body"]??='desconocido',
    );

    Map<String, dynamic> toJson() => {
        "postId": _postId,
        "id": _id,
        "name": _name,
        "email": _email,
        "body": _body,
    };


  get  getPostId => _postId;
  get getId => _id;
  get getName => _name;
  get getEmail => _email;
  get getBody => _body;

  
}
