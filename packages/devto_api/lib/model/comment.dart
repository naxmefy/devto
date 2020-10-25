part of devto_api.api;

class Comment {
  
  String typeOf = null;
  
  String idCode = null;
  
  DateTime createdAt = null;
  /* HTML formatted comment */
  String bodyHtml = null;
  
  SharedUser user = null;
  
  List<Comment> children = [];
  Comment();

  @override
  String toString() {
    return 'Comment[typeOf=$typeOf, idCode=$idCode, createdAt=$createdAt, bodyHtml=$bodyHtml, user=$user, children=$children, ]';
  }

  Comment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    idCode = json['id_code'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    bodyHtml = json['body_html'];
    user = (json['user'] == null) ?
      null :
      SharedUser.fromJson(json['user']);
    children = (json['children'] == null) ?
      null :
      Comment.listFromJson(json['children']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (idCode != null)
      json['id_code'] = idCode;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (bodyHtml != null)
      json['body_html'] = bodyHtml;
    if (user != null)
      json['user'] = user;
    if (children != null)
      json['children'] = children;
    return json;
  }

  static List<Comment> listFromJson(List<dynamic> json) {
    return json == null ? List<Comment>() : json.map((value) => Comment.fromJson(value)).toList();
  }

  static Map<String, Comment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Comment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Comment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Comment-objects as value to a dart map
  static Map<String, List<Comment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Comment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Comment.listFromJson(value);
       });
     }
     return map;
  }
}

