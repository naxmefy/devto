import 'package:devto_api/api.dart';
import 'package:test/test.dart';

// tests for ListingCreateListing
void main() {
    var instance = new ListingCreateListing();

  group('test ListingCreateListing', () {
    // String title (default value: null)
    test('to test the property `title`', () async {
      // TODO
    });

    // The body of the listing in Markdown format.
    // String bodyMarkdown (default value: null)
    test('to test the property `bodyMarkdown`', () async {
      // TODO
    });

    // ListingCategory category (default value: null)
    test('to test the property `category`', () async {
      // TODO
    });

    // Tags related to the listing.  A maximum of 8 tags are allowed and it takes precedence over `tag_list`. 
    // List<String> tags (default value: [])
    test('to test the property `tags`', () async {
      // TODO
    });

    // Comma separated list of tags.  A maximum of 8 tags are allowed. 
    // String tagList (default value: null)
    test('to test the property `tagList`', () async {
      // TODO
    });

    // Date and time of expiration.
    // DateTime expiresAt (default value: null)
    test('to test the property `expiresAt`', () async {
      // TODO
    });

    // True if users are allowed to contact the listing's owner via DEV connect, false otherwise.  Defaults to false. 
    // bool contactViaConnect (default value: null)
    test('to test the property `contactViaConnect`', () async {
      // TODO
    });

    // Geographical area or city for the listing.
    // String location (default value: null)
    test('to test the property `location`', () async {
      // TODO
    });

    // The id of the organization the user is creating the listing for.  Only users belonging to an organization can assign the listing to it. 
    // int organizationId (default value: null)
    test('to test the property `organizationId`', () async {
      // TODO
    });

    // Set it to \"draft\" to create an unpublished listing
    // String action (default value: null)
    test('to test the property `action`', () async {
      // TODO
    });


  });

}
