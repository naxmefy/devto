part of devto_api.api;



class PodcastEpisodesApi {
  final ApiClient apiClient;

  PodcastEpisodesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Published podcast episodes with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of podcast episodes.  \&quot;Podcast episodes\&quot; are episodes belonging to podcasts.  It will only return active podcast episodes that belong to published podcasts available on the platform, ordered by descending publication date.  It supports pagination, each page will contain &#x60;30&#x60; articles by default. 
  Future<Response> getPodcastEpisodesWithHttpInfo({ int page, int perPage, String username }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/podcast_episodes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(perPage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "per_page", perPage));
    }
    if(username != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "username", username));
    }

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

  /// Published podcast episodes
  ///
  /// This endpoint allows the client to retrieve a list of podcast episodes.  \&quot;Podcast episodes\&quot; are episodes belonging to podcasts.  It will only return active podcast episodes that belong to published podcasts available on the platform, ordered by descending publication date.  It supports pagination, each page will contain &#x60;30&#x60; articles by default. 
  Future<List<PodcastEpisode>> getPodcastEpisodes({ int page, int perPage, String username }) async {
    Response response = await getPodcastEpisodesWithHttpInfo( page: page, perPage: perPage, username: username );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<PodcastEpisode>') as List).map((item) => item as PodcastEpisode).toList();
    } else {
      return null;
    }
  }

}
