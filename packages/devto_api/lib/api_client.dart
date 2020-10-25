part of devto_api.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://dev.to/api"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['api_key'] = ApiKeyAuth("header", "api-key");
    _authentications['oauth2'] = OAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'APIError':
          return APIError.fromJson(value);
        case 'ArticleCreate':
          return ArticleCreate.fromJson(value);
        case 'ArticleCreateArticle':
          return ArticleCreateArticle.fromJson(value);
        case 'ArticleFlareTag':
          return ArticleFlareTag.fromJson(value);
        case 'ArticleIndex':
          return ArticleIndex.fromJson(value);
        case 'ArticleMe':
          return ArticleMe.fromJson(value);
        case 'ArticleShow':
          return ArticleShow.fromJson(value);
        case 'ArticleUpdate':
          return ArticleUpdate.fromJson(value);
        case 'ArticleUpdateArticle':
          return ArticleUpdateArticle.fromJson(value);
        case 'ArticleVideo':
          return ArticleVideo.fromJson(value);
        case 'ArticleVideoUser':
          return ArticleVideoUser.fromJson(value);
        case 'Comment':
          return Comment.fromJson(value);
        case 'FollowedTag':
          return FollowedTag.fromJson(value);
        case 'Follower':
          return Follower.fromJson(value);
        case 'Listing':
          return Listing.fromJson(value);
        case 'ListingCategory':
          return new ListingCategoryTypeTransformer().decode(value);
        case 'ListingCreate':
          return ListingCreate.fromJson(value);
        case 'ListingCreateListing':
          return ListingCreateListing.fromJson(value);
        case 'ListingUpdate':
          return ListingUpdate.fromJson(value);
        case 'ListingUpdateListing':
          return ListingUpdateListing.fromJson(value);
        case 'PodcastEpisode':
          return PodcastEpisode.fromJson(value);
        case 'PodcastEpisodePodcast':
          return PodcastEpisodePodcast.fromJson(value);
        case 'ProfileImage':
          return ProfileImage.fromJson(value);
        case 'ReadingList':
          return ReadingList.fromJson(value);
        case 'SharedOrganization':
          return SharedOrganization.fromJson(value);
        case 'SharedUser':
          return SharedUser.fromJson(value);
        case 'Tag':
          return Tag.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'WebhookCreate':
          return WebhookCreate.fromJson(value);
        case 'WebhookCreateWebhookEndpoint':
          return WebhookCreateWebhookEndpoint.fromJson(value);
        case 'WebhookIndex':
          return WebhookIndex.fromJson(value);
        case 'WebhookShow':
          return WebhookShow.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String nullableContentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    if (nullableContentType != null) {
      final contentType = nullableContentType;
      headerParams['Content-Type'] = contentType;
    }

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = nullableContentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      final nullableHeaderParams = (headerParams.isEmpty)? null: headerParams;
      switch(method) {
        case "POST":
          return client.post(url, headers: nullableHeaderParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: nullableHeaderParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: nullableHeaderParams);
        case "PATCH":
          return client.patch(url, headers: nullableHeaderParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: nullableHeaderParams);
        default:
          return client.get(url, headers: nullableHeaderParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
