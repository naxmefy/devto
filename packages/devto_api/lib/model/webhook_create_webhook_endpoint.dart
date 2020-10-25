part of devto_api.api;

class WebhookCreateWebhookEndpoint {
  /* The name of the requester, eg. \"DEV\" */
  String source_ = null;
  
  String targetUrl = null;
  /* An array of events identifiers */
  List<String> events = [];
  WebhookCreateWebhookEndpoint();

  @override
  String toString() {
    return 'WebhookCreateWebhookEndpoint[source_=$source_, targetUrl=$targetUrl, events=$events, ]';
  }

  WebhookCreateWebhookEndpoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    source_ = json['source'];
    targetUrl = json['target_url'];
    events = (json['events'] == null) ?
      null :
      (json['events'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (source_ != null)
      json['source'] = source_;
    if (targetUrl != null)
      json['target_url'] = targetUrl;
    if (events != null)
      json['events'] = events;
    return json;
  }

  static List<WebhookCreateWebhookEndpoint> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookCreateWebhookEndpoint>() : json.map((value) => WebhookCreateWebhookEndpoint.fromJson(value)).toList();
  }

  static Map<String, WebhookCreateWebhookEndpoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookCreateWebhookEndpoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookCreateWebhookEndpoint.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookCreateWebhookEndpoint-objects as value to a dart map
  static Map<String, List<WebhookCreateWebhookEndpoint>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookCreateWebhookEndpoint>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookCreateWebhookEndpoint.listFromJson(value);
       });
     }
     return map;
  }
}

