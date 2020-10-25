part of devto_api.api;

class ArticleUpdate {
  
  ArticleUpdateArticle article = null;
  ArticleUpdate();

  @override
  String toString() {
    return 'ArticleUpdate[article=$article, ]';
  }

  ArticleUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    article = (json['article'] == null) ?
      null :
      ArticleUpdateArticle.fromJson(json['article']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (article != null)
      json['article'] = article;
    return json;
  }

  static List<ArticleUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleUpdate>() : json.map((value) => ArticleUpdate.fromJson(value)).toList();
  }

  static Map<String, ArticleUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleUpdate-objects as value to a dart map
  static Map<String, List<ArticleUpdate>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleUpdate>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleUpdate.listFromJson(value);
       });
     }
     return map;
  }
}

