part of devto_api.api;

class ArticleCreate {
  
  ArticleCreateArticle article = null;
  ArticleCreate();

  @override
  String toString() {
    return 'ArticleCreate[article=$article, ]';
  }

  ArticleCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    article = (json['article'] == null) ?
      null :
      ArticleCreateArticle.fromJson(json['article']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (article != null)
      json['article'] = article;
    return json;
  }

  static List<ArticleCreate> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleCreate>() : json.map((value) => ArticleCreate.fromJson(value)).toList();
  }

  static Map<String, ArticleCreate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleCreate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleCreate-objects as value to a dart map
  static Map<String, List<ArticleCreate>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleCreate>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleCreate.listFromJson(value);
       });
     }
     return map;
  }
}

