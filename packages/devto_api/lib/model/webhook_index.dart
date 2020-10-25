part of devto_api.api;

class WebhookIndex {
  
  String typeOf = null;
  
  int id = null;
  /* The name of the requester, eg. \"DEV\" */
  String source_ = null;
  
  String targetUrl = null;
  /* An array of events identifiers */
  List<String> events = [];
  
  DateTime createdAt = null;
  WebhookIndex();

  @override
  String toString() {
    return 'WebhookIndex[typeOf=$typeOf, id=$id, source_=$source_, targetUrl=$targetUrl, events=$events, createdAt=$createdAt, ]';
  }

  WebhookIndex.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    source_ = json['source'];
    targetUrl = json['target_url'];
    events = (json['events'] == null) ?
      null :
      (json['events'] as List).cast<String>();
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (source_ != null)
      json['source'] = source_;
    if (targetUrl != null)
      json['target_url'] = targetUrl;
    if (events != null)
      json['events'] = events;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    return json;
  }

  static List<WebhookIndex> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookIndex>() : json.map((value) => WebhookIndex.fromJson(value)).toList();
  }

  static Map<String, WebhookIndex> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookIndex>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookIndex.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookIndex-objects as value to a dart map
  static Map<String, List<WebhookIndex>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookIndex>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookIndex.listFromJson(value);
       });
     }
     return map;
  }
}

