part of devto_api.api;

class ArticleVideoUser {
  /* The user's name */
  String name = null;
  ArticleVideoUser();

  @override
  String toString() {
    return 'ArticleVideoUser[name=$name, ]';
  }

  ArticleVideoUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ArticleVideoUser> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleVideoUser>() : json.map((value) => ArticleVideoUser.fromJson(value)).toList();
  }

  static Map<String, ArticleVideoUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleVideoUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleVideoUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleVideoUser-objects as value to a dart map
  static Map<String, List<ArticleVideoUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleVideoUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleVideoUser.listFromJson(value);
       });
     }
     return map;
  }
}

