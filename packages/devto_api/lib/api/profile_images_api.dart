part of devto_api.api;



class ProfileImagesApi {
  final ApiClient apiClient;

  ProfileImagesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// User or organization profile picture with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a user or organization profile image information by its corresponding username 
  Future<Response> getProfileImageWithHttpInfo(String username) async {
    Object postBody;

    // verify required params are set
    if(username == null) {
     throw ApiException(400, "Missing required param: username");
    }

    // create path and map variables
    String path = "/profile_images/{username}".replaceAll("{format}","json").replaceAll("{" + "username" + "}", username.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// User or organization profile picture
  ///
  /// This endpoint allows the client to retrieve a user or organization profile image information by its corresponding username 
  Future<ProfileImage> getProfileImage(String username) async {
    Response response = await getProfileImageWithHttpInfo(username);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ProfileImage') as ProfileImage;
    } else {
      return null;
    }
  }

}
