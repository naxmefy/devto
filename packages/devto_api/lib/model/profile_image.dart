part of devto_api.api;

class ProfileImage {
  
  String typeOf = null;
  //enum typeOfEnum {  profile_image,  };{
  /* Discriminates what is the type of the profile image owner (user or organization) */
  String imageOf = null;
  //enum imageOfEnum {  user,  organization,  };{
  /* Profile image (640x640) */
  String profileImage = null;
  /* Profile image (90x90) */
  String profileImage90 = null;
  ProfileImage();

  @override
  String toString() {
    return 'ProfileImage[typeOf=$typeOf, imageOf=$imageOf, profileImage=$profileImage, profileImage90=$profileImage90, ]';
  }

  ProfileImage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typeOf = json['type_of'];
    imageOf = json['image_of'];
    profileImage = json['profile_image'];
    profileImage90 = json['profile_image_90'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (typeOf != null)
      json['type_of'] = typeOf;
    if (imageOf != null)
      json['image_of'] = imageOf;
    if (profileImage != null)
      json['profile_image'] = profileImage;
    if (profileImage90 != null)
      json['profile_image_90'] = profileImage90;
    return json;
  }

  static List<ProfileImage> listFromJson(List<dynamic> json) {
    return json == null ? List<ProfileImage>() : json.map((value) => ProfileImage.fromJson(value)).toList();
  }

  static Map<String, ProfileImage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProfileImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProfileImage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProfileImage-objects as value to a dart map
  static Map<String, List<ProfileImage>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProfileImage>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProfileImage.listFromJson(value);
       });
     }
     return map;
  }
}

