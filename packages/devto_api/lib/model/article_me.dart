part of devto_api.api;

class ArticleMe {
  
  String typeOf = null;
  
  int id = null;
  
  String title = null;
  
  String description = null;
  
  String coverImage = null;
  
  bool published = null;
  
  DateTime publishedAt = null;
  
  List<String> tagList = [];
  
  String slug = null;
  
  String path = null;
  
  String url = null;
  
  String canonicalUrl = null;
  
  int commentsCount = null;
  
  int publicReactionsCount = null;
  
  int pageViewsCount = null;
  /* Crossposting or published date time */
  DateTime publishedTimestamp = null;
  /* The body of the article in Markdown format */
  String bodyMarkdown = null;
  
  SharedUser user = null;
  
  SharedOrganization organization = null;
  
  ArticleFlareTag flareTag = null;
  ArticleMe();

  @override
  String toString() {
    return 'ArticleMe[typeOf=$typeOf, id=$id, title=$title, description=$description, coverImage=$coverImage, published=$published, publishedAt=$publishedAt, tagList=$tagList, slug=$slug, path=$path, url=$url, canonicalUrl=$canonicalUrl, commentsCount=$commentsCount, publicReactionsCount=$publicReactionsCount, pageViewsCount=$pageViewsCount, publishedTimestamp=$publishedTimestamp, bodyMarkdown=$bodyMarkdown, user=$user, organization=$organization, flareTag=$flareTag, ]';
  }

  ArticleMe.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    title = json['title'];
    description = json['description'];
    coverImage = json['cover_image'];
    published = json['published'];
    publishedAt = (json['published_at'] == null) ?
      null :
      DateTime.parse(json['published_at']);
    tagList = (json['tag_list'] == null) ?
      null :
      (json['tag_list'] as List).cast<String>();
    slug = json['slug'];
    path = json['path'];
    url = json['url'];
    canonicalUrl = json['canonical_url'];
    commentsCount = json['comments_count'];
    publicReactionsCount = json['public_reactions_count'];
    pageViewsCount = json['page_views_count'];
    publishedTimestamp = (json['published_timestamp'] == null) ?
      null :
      DateTime.parse(json['published_timestamp']);
    bodyMarkdown = json['body_markdown'];
    user = (json['user'] == null) ?
      null :
      SharedUser.fromJson(json['user']);
    organization = (json['organization'] == null) ?
      null :
      SharedOrganization.fromJson(json['organization']);
    flareTag = (json['flare_tag'] == null) ?
      null :
      ArticleFlareTag.fromJson(json['flare_tag']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (description != null)
      json['description'] = description;
      json['cover_image'] = coverImage;
    if (published != null)
      json['published'] = published;
    if (publishedAt != null)
      json['published_at'] = publishedAt == null ? null : publishedAt.toUtc().toIso8601String();
    if (tagList != null)
      json['tag_list'] = tagList;
    if (slug != null)
      json['slug'] = slug;
    if (path != null)
      json['path'] = path;
    if (url != null)
      json['url'] = url;
    if (canonicalUrl != null)
      json['canonical_url'] = canonicalUrl;
    if (commentsCount != null)
      json['comments_count'] = commentsCount;
    if (publicReactionsCount != null)
      json['public_reactions_count'] = publicReactionsCount;
    if (pageViewsCount != null)
      json['page_views_count'] = pageViewsCount;
    if (publishedTimestamp != null)
      json['published_timestamp'] = publishedTimestamp == null ? null : publishedTimestamp.toUtc().toIso8601String();
    if (bodyMarkdown != null)
      json['body_markdown'] = bodyMarkdown;
    if (user != null)
      json['user'] = user;
    if (organization != null)
      json['organization'] = organization;
    if (flareTag != null)
      json['flare_tag'] = flareTag;
    return json;
  }

  static List<ArticleMe> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleMe>() : json.map((value) => ArticleMe.fromJson(value)).toList();
  }

  static Map<String, ArticleMe> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleMe>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleMe.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleMe-objects as value to a dart map
  static Map<String, List<ArticleMe>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleMe>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleMe.listFromJson(value);
       });
     }
     return map;
  }
}

