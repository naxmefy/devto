part of devto_api.api;

class ArticleUpdateArticle {
  
  String title = null;
  /* The body of the article.  It can contain an optional front matter. For example  ```markdown --- title: Hello, World! published: true tags: discuss, help date: 20190701T10:00Z series: Hello series canonical_url: https://example.com/blog/hello cover_image: article_published_cover_image --- ```  `date`, `series` and `canonical_url` are optional. `date` is the publication date-time `series` is the name of the series the article belongs to `canonical_url` is the canonical URL of the article `cover_image` is the main image of the article  *If the markdown contains a front matter, it will take precedence on the equivalent params given in the payload.*  */
  String bodyMarkdown = null;
  /* True to create a published article, false otherwise. Defaults to false  */
  bool published = null;
  /* Article series name.  All articles belonging to the same series need to have the same name in this parameter.  To remove an article from a series, the `null` value can be used.  */
  String series = null;
  
  String mainImage = null;
  
  String canonicalUrl = null;
  
  String description = null;
  
  List<String> tags = [];
  /* Only users belonging to an organization can assign the article to it  */
  int organizationId = null;
  ArticleUpdateArticle();

  @override
  String toString() {
    return 'ArticleUpdateArticle[title=$title, bodyMarkdown=$bodyMarkdown, published=$published, series=$series, mainImage=$mainImage, canonicalUrl=$canonicalUrl, description=$description, tags=$tags, organizationId=$organizationId, ]';
  }

  ArticleUpdateArticle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    bodyMarkdown = json['body_markdown'];
    published = json['published'];
    series = json['series'];
    mainImage = json['main_image'];
    canonicalUrl = json['canonical_url'];
    description = json['description'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    organizationId = json['organization_id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (bodyMarkdown != null)
      json['body_markdown'] = bodyMarkdown;
    if (published != null)
      json['published'] = published;
    if (series != null)
      json['series'] = series;
    if (mainImage != null)
      json['main_image'] = mainImage;
    if (canonicalUrl != null)
      json['canonical_url'] = canonicalUrl;
    if (description != null)
      json['description'] = description;
    if (tags != null)
      json['tags'] = tags;
    if (organizationId != null)
      json['organization_id'] = organizationId;
    return json;
  }

  static List<ArticleUpdateArticle> listFromJson(List<dynamic> json) {
    return json == null ? List<ArticleUpdateArticle>() : json.map((value) => ArticleUpdateArticle.fromJson(value)).toList();
  }

  static Map<String, ArticleUpdateArticle> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleUpdateArticle>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ArticleUpdateArticle.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ArticleUpdateArticle-objects as value to a dart map
  static Map<String, List<ArticleUpdateArticle>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ArticleUpdateArticle>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ArticleUpdateArticle.listFromJson(value);
       });
     }
     return map;
  }
}

