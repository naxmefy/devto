part of devto_api.api;

class User {
  
  String typeOf = null;
  
  int id = null;
  
  String username = null;
  
  String name = null;
  
  String summary = null;
  
  String twitterUsername = null;
  
  String githubUsername = null;
  
  String websiteUrl = null;
  
  String location = null;
  /* Date of joining (formatted with strftime `\"%b %e, %Y\"`) */
  String joinedAt = null;
  /* Profile image (320x320) */
  String profileImage = null;
  User();

  @override
  String toString() {
    return 'User[typeOf=$typeOf, id=$id, username=$username, name=$name, summary=$summary, twitterUsername=$twitterUsername, githubUsername=$githubUsername, websiteUrl=$websiteUrl, location=$location, joinedAt=$joinedAt, profileImage=$profileImage, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    username = json['username'];
    name = json['name'];
    summary = json['summary'];
    twitterUsername = json['twitter_username'];
    githubUsername = json['github_username'];
    websiteUrl = json['website_url'];
    location = json['location'];
    joinedAt = json['joined_at'];
    profileImage = json['profile_image'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (username != null)
      json['username'] = username;
    if (name != null)
      json['name'] = name;
      json['summary'] = summary;
      json['twitter_username'] = twitterUsername;
      json['github_username'] = githubUsername;
      json['website_url'] = websiteUrl;
      json['location'] = location;
    if (joinedAt != null)
      json['joined_at'] = joinedAt;
    if (profileImage != null)
      json['profile_image'] = profileImage;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

