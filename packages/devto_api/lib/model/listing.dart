part of devto_api.api;

class Listing {
  
  String typeOf = null;
  
  int id = null;
  
  String title = null;
  
  String slug = null;
  
  String bodyMarkdown = null;
  
  String tagList = null;
  
  List<String> tags = [];
  
  ListingCategory category = null;
  //enum categoryEnum {  cfp,  forhire,  collabs,  education,  jobs,  mentors,  products,  mentees,  forsale,  events,  misc,  };{
  
  String processedHtml = null;
  
  bool published = null;
  
  SharedUser user = null;
  
  SharedOrganization organization = null;
  Listing();

  @override
  String toString() {
    return 'Listing[typeOf=$typeOf, id=$id, title=$title, slug=$slug, bodyMarkdown=$bodyMarkdown, tagList=$tagList, tags=$tags, category=$category, processedHtml=$processedHtml, published=$published, user=$user, organization=$organization, ]';
  }

  Listing.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    bodyMarkdown = json['body_markdown'];
    tagList = json['tag_list'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    category = (json['category'] == null) ?
      null :
      ListingCategory.fromJson(json['category']);
    processedHtml = json['processed_html'];
    published = json['published'];
    user = (json['user'] == null) ?
      null :
      SharedUser.fromJson(json['user']);
    organization = (json['organization'] == null) ?
      null :
      SharedOrganization.fromJson(json['organization']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (slug != null)
      json['slug'] = slug;
    if (bodyMarkdown != null)
      json['body_markdown'] = bodyMarkdown;
    if (tagList != null)
      json['tag_list'] = tagList;
    if (tags != null)
      json['tags'] = tags;
    if (category != null)
      json['category'] = category;
    if (processedHtml != null)
      json['processed_html'] = processedHtml;
    if (published != null)
      json['published'] = published;
    if (user != null)
      json['user'] = user;
    if (organization != null)
      json['organization'] = organization;
    return json;
  }

  static List<Listing> listFromJson(List<dynamic> json) {
    return json == null ? List<Listing>() : json.map((value) => Listing.fromJson(value)).toList();
  }

  static Map<String, Listing> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Listing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Listing.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Listing-objects as value to a dart map
  static Map<String, List<Listing>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Listing>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Listing.listFromJson(value);
       });
     }
     return map;
  }
}

