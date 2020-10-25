part of devto_api.api;

class ArticleShow {
  
  String typeOf = null;
  
  int id = null;
  
  String title = null;
  
  String description = null;
  
  String coverImage = null;
  
  String readablePublishDate = null;
  
  String socialImage = null;
  
  String tagList = null;
  
  List<String> tags = [];
  
  String slug = null;
  
  String path = null;
  
  String url = null;
  
  String canonicalUrl = null;
  
  int commentsCount = null;
  
  int publicReactionsCount = null;
  
  DateTime createdAt = null;
  
  DateTime editedAt = null;
  
  DateTime crosspostedAt = null;
  
  DateTime publishedAt = null;
  
  DateTime lastCommentAt = null;
  /* Crossposting or published date time */
  DateTime publishedTimestamp = null;
  
  String bodyHtml = null;
  
  String bodyMarkdown = null;
  
  SharedUser user = null;
  
  SharedOrganization organization = null;
  
  ArticleFlareTag flareTag = null;
  ArticleShow();

  @override
  String toString() {
    return 'ArticleShow[typeOf=$typeOf, id=$id, title=$title, description=$description, coverImage=$coverImage, readablePublishDate=$readablePublishDate, socialImage=$socialImage, tagList=$tagList, tags=$tags, slug=$slug, path=$path, url=$url, canonicalUrl=$canonicalUrl, commentsCount=$commentsCount, publicReactionsCount=$publicReactionsCount, createdAt=$createdAt, editedAt=$editedAt, crosspostedAt=$crosspostedAt, publishedAt=$publishedAt, lastCommentAt=$lastCommentAt, publishedTimestamp=$publishedTimestamp, bodyHtml=$bodyHtml, bodyMarkdown=$bodyMarkdown, user=$user, organization=$organization, flareTag=$flareTag, ]';
  }

  ArticleShow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    title = json['title'];
    description = json['description'];
    coverImage = json['cover_image'];
    readablePublishDate = json['readable_publish_date'];
    socialImage = json['social_image'];
    tagList = json['tag_list'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    slug = json['slug'];
    path = json['path'];
    url = json['url'];
    canonicalUrl = json['canonical_url'];
    commentsCount = json['comments_count'];
    publicReactionsCount = json['public_reactions_count'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    editedAt = (json['edited_at'] == null) ?
      null :
      DateTime.parse(json['edited_at']);
    crosspostedAt = (json['crossposted_at'] == null) ?
      null :
      DateTime.parse(json['crossposted_at']);
    publishedAt = (json['published_at'] == null) ?
      null :
      DateTime.parse(json['published_at']);
    lastCommentAt = (json['last_comment_at'] == null) ?
      null :
      DateTime.parse(json['last_comment_at']);
    publishedTimestamp = (json['published_timestamp'] == null) ?
      null :
      DateTime.parse(json['published_timestamp']);
    bodyHtml = json['body_html'];
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
    if (readablePublishDate != null)
      json['readable_publish_date'] = readablePublishDate;
    if (socialImage != null)
      json['social_image'] = socialImage;
    if (tagList != null)
      json['tag_list'] = tagList;
    if (tags != null)
      json['tags'] = tags;
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
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
      json['edited_at'] = editedAt == null ? null : editedAt.toUtc().toIso8601String();
      json['crossposted_at'] = crosspostedAt == null ? null : crosspostedAt.toUtc().toIso8601String();
    if (publishedAt != null)
      json['published_at'] = publishedAt == null ? null : publishedAt.toUtc().toIso8601String();
    if (lastCommentAt != null)
      json['last_comment_at'] = lastCommentAt == null ? null : lastCommentAt.toUtc().toIso8601String();
    if (publishedTimestamp != null)
      json['published_timestamp'] = publishedTimestamp == null ? null : publishedTimestamp.toUtc().toIso8601String();
    if (bodyHtml != null)
      json['body_html'] = bodyHtml;
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

  static List<ArticleShow> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleShow>() : json.map((value) => ArticleShow.fromJson(value)).toList();
  }

  static Map<String, ArticleShow> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleShow>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleShow.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleShow-objects as value to a dart map
  static Map<String, List<ArticleShow>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleShow>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleShow.listFromJson(value);
       });
     }
     return map;
  }
}

