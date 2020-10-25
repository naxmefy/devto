part of devto_api.api;

class ListingUpdateListing {
  
  String title = null;
  /* The body of the listing in Markdown format. */
  String bodyMarkdown = null;
  
  ListingCategory category = null;
  //enum categoryEnum {  cfp,  forhire,  collabs,  education,  jobs,  mentors,  products,  mentees,  forsale,  events,  misc,  };{
  /* Tags related to the listing.  A maximum of 8 tags are allowed and it takes precedence over `tag_list`.  */
  List<String> tags = [];
  /* Comma separated list of tags.  A maximum of 8 tags are allowed.  */
  String tagList = null;
  /* Date and time of expiration. */
  DateTime expiresAt = null;
  /* True if users are allowed to contact the listing's owner via DEV connect, false otherwise.  Defaults to false.  */
  bool contactViaConnect = null;
  /* Geographical area or city for the listing. */
  String location = null;
  /* This param can be provided by itself to invoke some actions:  - `bump` bumps the listing and charge either the   organization or the user - `publish` publishes a draft listing - `unpublish` unpublishes a published listing  It will take priority on any other param in the payload.  */
  String action = null;
  //enum actionEnum {  bump,  publish,  unpublish,  };{
  ListingUpdateListing();

  @override
  String toString() {
    return 'ListingUpdateListing[title=$title, bodyMarkdown=$bodyMarkdown, category=$category, tags=$tags, tagList=$tagList, expiresAt=$expiresAt, contactViaConnect=$contactViaConnect, location=$location, action=$action, ]';
  }

  ListingUpdateListing.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    bodyMarkdown = json['body_markdown'];
    category = (json['category'] == null) ?
      null :
      ListingCategory.fromJson(json['category']);
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    tagList = json['tag_list'];
    expiresAt = (json['expires_at'] == null) ?
      null :
      DateTime.parse(json['expires_at']);
    contactViaConnect = json['contact_via_connect'];
    location = json['location'];
    action = json['action'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (bodyMarkdown != null)
      json['body_markdown'] = bodyMarkdown;
    if (category != null)
      json['category'] = category;
    if (tags != null)
      json['tags'] = tags;
    if (tagList != null)
      json['tag_list'] = tagList;
    if (expiresAt != null)
      json['expires_at'] = expiresAt == null ? null : expiresAt.toUtc().toIso8601String();
    if (contactViaConnect != null)
      json['contact_via_connect'] = contactViaConnect;
    if (location != null)
      json['location'] = location;
    if (action != null)
      json['action'] = action;
    return json;
  }

  static List<ListingUpdateListing> listFromJson(List<dynamic> json) {
    return json == null ? List<ListingUpdateListing>() : json.map((value) => ListingUpdateListing.fromJson(value)).toList();
  }

  static Map<String, ListingUpdateListing> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ListingUpdateListing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ListingUpdateListing.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingUpdateListing-objects as value to a dart map
  static Map<String, List<ListingUpdateListing>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ListingUpdateListing>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ListingUpdateListing.listFromJson(value);
       });
     }
     return map;
  }
}

