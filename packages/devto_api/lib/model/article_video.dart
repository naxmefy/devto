part of devto_api.api;

class ArticleVideo {
  
  String typeOf = null;
  
  int id = null;
  
  String path = null;
  /* The preview image of the video */
  String cloudinaryVideoUrl = null;
  
  String title = null;
  
  int userId = null;
  /* The duration of the video.  If the video duration is below 1 hour, the format will be `mm:ss`, if it's 1 hour or above the format will be `h:mm:ss`.  */
  String videoDurationInMinutes = null;
  
  ArticleVideoUser user = null;
  ArticleVideo();

  @override
  String toString() {
    return 'ArticleVideo[typeOf=$typeOf, id=$id, path=$path, cloudinaryVideoUrl=$cloudinaryVideoUrl, title=$title, userId=$userId, videoDurationInMinutes=$videoDurationInMinutes, user=$user, ]';
  }

  ArticleVideo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    path = json['path'];
    cloudinaryVideoUrl = json['cloudinary_video_url'];
    title = json['title'];
    userId = json['user_id'];
    videoDurationInMinutes = json['video_duration_in_minutes'];
    user = (json['user'] == null) ?
      null :
      ArticleVideoUser.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (path != null)
      json['path'] = path;
    if (cloudinaryVideoUrl != null)
      json['cloudinary_video_url'] = cloudinaryVideoUrl;
    if (title != null)
      json['title'] = title;
    if (userId != null)
      json['user_id'] = userId;
    if (videoDurationInMinutes != null)
      json['video_duration_in_minutes'] = videoDurationInMinutes;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<ArticleVideo> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleVideo>() : json.map((value) => ArticleVideo.fromJson(value)).toList();
  }

  static Map<String, ArticleVideo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleVideo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleVideo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleVideo-objects as value to a dart map
  static Map<String, List<ArticleVideo>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleVideo>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleVideo.listFromJson(value);
       });
     }
     return map;
  }
}

