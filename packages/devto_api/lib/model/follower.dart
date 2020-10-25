part of devto_api.api;

class Follower {
  
  String typeOf = null;
  /* Follow id */
  int id = null;
  
  String name = null;
  
  String path = null;
  
  String username = null;
  /* Profile image (60x60) */
  String profileImage = null;
  Follower();

  @override
  String toString() {
    return 'Follower[typeOf=$typeOf, id=$id, name=$name, path=$path, username=$username, profileImage=$profileImage, ]';
  }

  Follower.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    name = json['name'];
    path = json['path'];
    username = json['username'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (path != null)
      json['path'] = path;
    if (username != null)
      json['username'] = username;
    if (profileImage != null)
      json['profile_image'] = profileImage;
    return json;
  }

  static List<Follower> listFromJson(List<dynamic> json) {
    return json == null ? List<Follower>() : json.map((value) => Follower.fromJson(value)).toList();
  }

  static Map<String, Follower> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Follower>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Follower.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Follower-objects as value to a dart map
  static Map<String, List<Follower>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Follower>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Follower.listFromJson(value);
       });
     }
     return map;
  }
}

