part of devto_api.api;

class SharedOrganization {
  
  String name = null;
  
  String username = null;
  
  String slug = null;
  /* Profile image (640x640) */
  String profileImage = null;
  /* Profile image (90x90) */
  String profileImage90 = null;
  SharedOrganization();

  @override
  String toString() {
    return 'SharedOrganization[name=$name, username=$username, slug=$slug, profileImage=$profileImage, profileImage90=$profileImage90, ]';
  }

  SharedOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    username = json['username'];
    slug = json['slug'];
    profileImage = json['profile_image'];
    profileImage90 = json['profile_image_90'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (username != null)
      json['username'] = username;
    if (slug != null)
      json['slug'] = slug;
    if (profileImage != null)
      json['profile_image'] = profileImage;
    if (profileImage90 != null)
      json['profile_image_90'] = profileImage90;
    return json;
  }

  static List<SharedOrganization> listFromJson(List<dynamic> json) {
    return json == null ? List<SharedOrganization>() : json.map((value) => SharedOrganization.fromJson(value)).toList();
  }

  static Map<String, SharedOrganization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SharedOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SharedOrganization.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SharedOrganization-objects as value to a dart map
  static Map<String, List<SharedOrganization>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SharedOrganization>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SharedOrganization.listFromJson(value);
       });
     }
     return map;
  }
}

