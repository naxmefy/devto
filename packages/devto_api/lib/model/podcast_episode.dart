part of devto_api.api;

class PodcastEpisode {
  
  String typeOf = null;
  
  int id = null;
  
  String path = null;
  
  String imageUrl = null;
  
  String title = null;
  
  PodcastEpisodePodcast podcast = null;
  PodcastEpisode();

  @override
  String toString() {
    return 'PodcastEpisode[typeOf=$typeOf, id=$id, path=$path, imageUrl=$imageUrl, title=$title, podcast=$podcast, ]';
  }

  PodcastEpisode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    path = json['path'];
    imageUrl = json['image_url'];
    title = json['title'];
    podcast = (json['podcast'] == null) ?
      null :
      PodcastEpisodePodcast.fromJson(json['podcast']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (path != null)
      json['path'] = path;
    if (imageUrl != null)
      json['image_url'] = imageUrl;
    if (title != null)
      json['title'] = title;
    if (podcast != null)
      json['podcast'] = podcast;
    return json;
  }

  static List<PodcastEpisode> listFromJson(List<dynamic> json) {
    return json == null ? List<PodcastEpisode>() : json.map((value) => PodcastEpisode.fromJson(value)).toList();
  }

  static Map<String, PodcastEpisode> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PodcastEpisode>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PodcastEpisode.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PodcastEpisode-objects as value to a dart map
  static Map<String, List<PodcastEpisode>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PodcastEpisode>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PodcastEpisode.listFromJson(value);
       });
     }
     return map;
  }
}

