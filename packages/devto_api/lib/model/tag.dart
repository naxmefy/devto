part of devto_api.api;

class Tag {
  
  int id = null;
  
  String name = null;
  /* Background color (hexadecimal) */
  String bgColorHex = null;
  /* Text color (hexadecimal) */
  String textColorHex = null;
  Tag();

  @override
  String toString() {
    return 'Tag[id=$id, name=$name, bgColorHex=$bgColorHex, textColorHex=$textColorHex, ]';
  }

  Tag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    bgColorHex = json['bg_color_hex'];
    textColorHex = json['text_color_hex'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (bgColorHex != null)
      json['bg_color_hex'] = bgColorHex;
    if (textColorHex != null)
      json['text_color_hex'] = textColorHex;
    return json;
  }

  static List<Tag> listFromJson(List<dynamic> json) {
    return json == null ? List<Tag>() : json.map((value) => Tag.fromJson(value)).toList();
  }

  static Map<String, Tag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Tag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Tag.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Tag-objects as value to a dart map
  static Map<String, List<Tag>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Tag>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Tag.listFromJson(value);
       });
     }
     return map;
  }
}

