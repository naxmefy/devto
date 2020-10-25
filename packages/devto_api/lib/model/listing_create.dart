part of devto_api.api;

class ListingCreate {
  
  ListingCreateListing listing = null;
  ListingCreate();

  @override
  String toString() {
    return 'ListingCreate[listing=$listing, ]';
  }

  ListingCreate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    listing = (json['listing'] == null) ?
      null :
      ListingCreateListing.fromJson(json['listing']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (listing != null)
      json['listing'] = listing;
    return json;
  }

  static List<ListingCreate> listFromJson(List<dynamic> json) {
    return json == null ? List<ListingCreate>() : json.map((value) => ListingCreate.fromJson(value)).toList();
  }

  static Map<String, ListingCreate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ListingCreate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ListingCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ListingCreate-objects as value to a dart map
  static Map<String, List<ListingCreate>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ListingCreate>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ListingCreate.listFromJson(value);
       });
     }
     return map;
  }
}

