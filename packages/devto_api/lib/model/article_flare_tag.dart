part of devto_api.api;

class ArticleFlareTag {
  
  String name = null;
  /* Background color (hexadecimal) */
  String bgColorHex = null;
  /* Text color (hexadecimal) */
  String textColorHex = null;
  ArticleFlareTag();

  @override
  String toString() {
    return 'ArticleFlareTag[name=$name, bgColorHex=$bgColorHex, textColorHex=$textColorHex, ]';
  }

  ArticleFlareTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    bgColorHex = json['bg_color_hex'];
    textColorHex = json['text_color_hex'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (bgColorHex != null)
      json['bg_color_hex'] = bgColorHex;
    if (textColorHex != null)
      json['text_color_hex'] = textColorHex;
    return json;
  }

  static List<ArticleFlareTag> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleFlareTag>() : json.map((value) => ArticleFlareTag.fromJson(value)).toList();
  }

  static Map<String, ArticleFlareTag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleFlareTag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleFlareTag.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleFlareTag-objects as value to a dart map
  static Map<String, List<ArticleFlareTag>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleFlareTag>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleFlareTag.listFromJson(value);
       });
     }
     return map;
  }
}

