import 'package:devto_api/api.dart';
import 'package:test/test.dart';


/// tests for ListingsApi
void main() {
  var instance = ListingsApi();

  group('tests for ListingsApi', () {
    // Create a new listing
    //
    // This endpoint allows the client to create a new listing.  \"Listings\" are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  The user creating the listing or the organization on which behalf the user is creating for need to have enough creadits for this operation to be successful. The server will prioritize the organization's credits over the user's credits.  ### Additional resources  - [Rails tests for Listings API](https://github.com/forem/forem/blob/master/spec/requests/api/v0/listings_spec.rb) 
    //
    //Future<Listing> createListing({ ListingCreate listingCreate }) async 
    test('test createListing', () async {
      // TODO
    });

    // A listing
    //
    // This endpoint allows the client to retrieve a single listing given its `id`.  An unpublished listing is only accessible if authentication is supplied and it belongs to the authenticated user. 
    //
    //Future<Listing> getListingById(int id) async 
    test('test getListingById', () async {
      // TODO
    });

    // Published listings
    //
    // This endpoint allows the client to retrieve a list of listings.  \"Listings\" are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain `30` articles by default. 
    //
    //Future<List<Listing>> getListings({ int page, int perPage, String category }) async 
    test('test getListings', () async {
      // TODO
    });

    // Published listings by category
    //
    // This endpoint allows the client to retrieve a list of listings belonging to the specified category.  \"Listings\" are classified ads that users create on DEV. They can be related to conference announcements, job offers, mentorships, upcoming events and more.  By default it will return published listings ordered by descending freshness.  It supports pagination, each page will contain `30` articles by default. 
    //
    //Future<List<Listing>> getListingsByCategory(ListingCategory category, { int page, int perPage }) async 
    test('test getListingsByCategory', () async {
      // TODO
    });

    // Update a listing
    //
    // This endpoint allows the client to update an existing listing. 
    //
    //Future<ArticleShow> updateListing(int id, { ListingUpdate listingUpdate }) async 
    test('test updateListing', () async {
      // TODO
    });

  });
}
