part of devto_api.api;

class PodcastEpisodePodcast {
  
  String title = null;
  
  String slug = null;
  
  String imageUrl = null;
  PodcastEpisodePodcast();

  @override
  String toString() {
    return 'PodcastEpisodePodcast[title=$title, slug=$slug, imageUrl=$imageUrl, ]';
  }

  PodcastEpisodePodcast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    slug = json['slug'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (slug != null)
      json['slug'] = slug;
    if (imageUrl != null)
      json['image_url'] = imageUrl;
    return json;
  }

  static List<PodcastEpisodePodcast> listFromJson(List<dynamic> json) {
    return json == null ? List<PodcastEpisodePodcast>() : json.map((value) => PodcastEpisodePodcast.fromJson(value)).toList();
  }

  static Map<String, PodcastEpisodePodcast> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PodcastEpisodePodcast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PodcastEpisodePodcast.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PodcastEpisodePodcast-objects as value to a dart map
  static Map<String, List<PodcastEpisodePodcast>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PodcastEpisodePodcast>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PodcastEpisodePodcast.listFromJson(value);
       });
     }
     return map;
  }
}

