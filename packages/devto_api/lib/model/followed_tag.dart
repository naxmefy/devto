part of devto_api.api;

class FollowedTag {
  /* Tag id */
  int id = null;
  
  String name = null;
  
  double points = null;
  FollowedTag();

  @override
  String toString() {
    return 'FollowedTag[id=$id, name=$name, points=$points, ]';
  }

  FollowedTag.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (points != null)
      json['points'] = points;
    return json;
  }

  static List<FollowedTag> listFromJson(List<dynamic> json) {
    return json == null ? List<FollowedTag>() : json.map((value) => FollowedTag.fromJson(value)).toList();
  }

  static Map<String, FollowedTag> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FollowedTag>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FollowedTag.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FollowedTag-objects as value to a dart map
  static Map<String, List<FollowedTag>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FollowedTag>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FollowedTag.listFromJson(value);
       });
     }
     return map;
  }
}

