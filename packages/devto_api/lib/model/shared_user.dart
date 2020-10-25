part of devto_api.api;

class SharedUser {
  
  String name = null;
  
  String username = null;
  
  String twitterUsername = null;
  
  String githubUsername = null;
  
  String websiteUrl = null;
  /* Profile image (640x640) */
  String profileImage = null;
  /* Profile image (90x90) */
  String profileImage90 = null;
  SharedUser();

  @override
  String toString() {
    return 'SharedUser[name=$name, username=$username, twitterUsername=$twitterUsername, githubUsername=$githubUsername, websiteUrl=$websiteUrl, profileImage=$profileImage, profileImage90=$profileImage90, ]';
  }

  SharedUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    username = json['username'];
    twitterUsername = json['twitter_username'];
    githubUsername = json['github_username'];
    websiteUrl = json['website_url'];
    profileImage = json['profile_image'];
    profileImage90 = json['profile_image_90'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (username != null)
      json['username'] = username;
      json['twitter_username'] = twitterUsername;
      json['github_username'] = githubUsername;
      json['website_url'] = websiteUrl;
    if (profileImage != null)
      json['profile_image'] = profileImage;
    if (profileImage90 != null)
      json['profile_image_90'] = profileImage90;
    return json;
  }

  static List<SharedUser> listFromJson(List<dynamic> json) {
    return json == null ? List<SharedUser>() : json.map((value) => SharedUser.fromJson(value)).toList();
  }

  static Map<String, SharedUser> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SharedUser>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SharedUser.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SharedUser-objects as value to a dart map
  static Map<String, List<SharedUser>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SharedUser>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SharedUser.listFromJson(value);
       });
     }
     return map;
  }
}

