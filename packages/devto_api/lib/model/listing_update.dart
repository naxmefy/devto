part of devto_api.api;

class ListingUpdate {
  
  ListingUpdateListing listing = null;
  ListingUpdate();

  @override
  String toString() {
    return 'ListingUpdate[listing=$listing, ]';
  }

  ListingUpdate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    listing = (json['listing'] == null) ?
      null :
      ListingUpdateListing.fromJson(json['listing']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (listing != null)
      json['listing'] = listing;
    return json;
  }

  static List<ListingUpdate> listFromJson(List<dynamic> json) {
    return json == null ? List<ListingUpdate>() : json.map((value) => ListingUpdate.fromJson(value)).toList();
  }

  static Map<String, ListingUpdate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ListingUpdate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ListingUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingUpdate-objects as value to a dart map
  static Map<String, List<ListingUpdate>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ListingUpdate>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ListingUpdate.listFromJson(value);
       });
     }
     return map;
  }
}

