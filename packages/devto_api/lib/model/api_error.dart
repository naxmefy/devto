part of devto_api.api;

class APIError {
  
  String error = null;
  
  int status = null;
  APIError();

  @override
  String toString() {
    return 'APIError[error=$error, status=$status, ]';
  }

  APIError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (error != null)
      json['error'] = error;
    if (status != null)
      json['status'] = status;
    return json;
  }

  static List<APIError> listFromJson(List<dynamic> json) {
    return json == null ? List<APIError>() : json.map((value) => APIError.fromJson(value)).toList();
  }

  static Map<String, APIError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, APIError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = APIError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of APIError-objects as value to a dart map
  static Map<String, List<APIError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<APIError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = APIError.listFromJson(value);
       });
     }
     return map;
  }
}

