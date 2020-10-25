part of devto_api.api;

class WebhookCreate {
  
  WebhookCreateWebhookEndpoint webhookEndpoint = null;
  WebhookCreate();

  @override
  String toString() {
    return 'WebhookCreate[webhookEndpoint=$webhookEndpoint, ]';
  }

  WebhookCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    webhookEndpoint = (json['webhook_endpoint'] == null) ?
      null :
      WebhookCreateWebhookEndpoint.fromJson(json['webhook_endpoint']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (webhookEndpoint != null)
      json['webhook_endpoint'] = webhookEndpoint;
    return json;
  }

  static List<WebhookCreate> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookCreate>() : json.map((value) => WebhookCreate.fromJson(value)).toList();
  }

  static Map<String, WebhookCreate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookCreate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookCreate-objects as value to a dart map
  static Map<String, List<WebhookCreate>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookCreate>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookCreate.listFromJson(value);
       });
     }
     return map;
  }
}

