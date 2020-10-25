part of devto_api.api;



class WebhooksApi {
  final ApiClient apiClient;

  WebhooksApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a new webhook with HTTP info returned
  ///
  /// This endpoint allows the client to create a new webhook.  \&quot;Webhooks\&quot; are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like &#x60;article_created&#x60;, &#x60;article_updated&#x60;. 
  Future<Response> createWebhookWithHttpInfo({ WebhookCreate webhookCreate }) async {
    Object postBody = webhookCreate;

    // verify required params are set

    // create path and map variables
    String path = "/webhooks".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key", "oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create a new webhook
  ///
  /// This endpoint allows the client to create a new webhook.  \&quot;Webhooks\&quot; are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like &#x60;article_created&#x60;, &#x60;article_updated&#x60;. 
  Future<WebhookShow> createWebhook({ WebhookCreate webhookCreate }) async {
    Response response = await createWebhookWithHttpInfo( webhookCreate: webhookCreate );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookShow') as WebhookShow;
    } else {
      return null;
    }
  }

  /// A webhook endpoint with HTTP info returned
  ///
  /// This endpoint allows the client to delete a single webhook given its &#x60;id&#x60;. 
  Future deleteWebhookWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/webhooks/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key", "oauth2"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// A webhook endpoint
  ///
  /// This endpoint allows the client to delete a single webhook given its &#x60;id&#x60;. 
  Future deleteWebhook(int id) async {
    Response response = await deleteWebhookWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// A webhook endpoint with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a single webhook given its &#x60;id&#x60;. 
  Future<Response> getWebhookByIdWithHttpInfo(int id) async {
    Object postBody;

    // verify required params are set
    if(id == null) {
     throw ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/webhooks/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key", "oauth2"];

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

  /// A webhook endpoint
  ///
  /// This endpoint allows the client to retrieve a single webhook given its &#x60;id&#x60;. 
  Future<WebhookShow> getWebhookById(int id) async {
    Response response = await getWebhookByIdWithHttpInfo(id);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookShow') as WebhookShow;
    } else {
      return null;
    }
  }

  /// Webhooks with HTTP info returned
  ///
  /// This endpoint allows the client to retrieve a list of webhooks they have previously registered.  \&quot;Webhooks\&quot; are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like &#x60;article_created&#x60;, &#x60;article_updated&#x60;.  It will return all webhooks, without pagination. 
  Future<Response> getWebhooksWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/webhooks".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["api_key", "oauth2"];

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

  /// Webhooks
  ///
  /// This endpoint allows the client to retrieve a list of webhooks they have previously registered.  \&quot;Webhooks\&quot; are used to register HTTP endpoints that will be called once a relevant event is triggered inside the web application, events like &#x60;article_created&#x60;, &#x60;article_updated&#x60;.  It will return all webhooks, without pagination. 
  Future<List<WebhookIndex>> getWebhooks() async {
    Response response = await getWebhooksWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WebhookIndex>') as List).map((item) => item as WebhookIndex).toList();
    } else {
      return null;
    }
  }

}
