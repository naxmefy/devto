part of devto_api.api;

class ReadingList {
  
  String typeOf = null;
  /* Follow id */
  int id = null;
  
  String status = null;
  //enum statusEnum {  valid,  invalid,  confirmed,  archived,  };{
  
  DateTime createdAt = null;
  
  ArticleIndex article = null;
  ReadingList();

  @override
  String toString() {
    return 'ReadingList[typeOf=$typeOf, id=$id, status=$status, createdAt=$createdAt, article=$article, ]';
  }

  ReadingList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    id = json['id'];
    status = json['status'];
    createdAt = (json['created_at'] == null) ?
      null :
      DateTime.parse(json['created_at']);
    article = (json['article'] == null) ?
      null :
      ArticleIndex.fromJson(json['article']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (id != null)
      json['id'] = id;
    if (status != null)
      json['status'] = status;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (article != null)
      json['article'] = article;
    return json;
  }

  static List<ReadingList> listFromJson(List<dynamic> json) {
    return json == null ? List<ReadingList>() : json.map((value) => ReadingList.fromJson(value)).toList();
  }

  static Map<String, ReadingList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReadingList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReadingList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReadingList-objects as value to a dart map
  static Map<String, List<ReadingList>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ReadingList>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ReadingList.listFromJson(value);
       });
     }
     return map;
  }
}

