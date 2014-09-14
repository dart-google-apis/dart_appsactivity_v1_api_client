part of appsactivity_v1_api;

class ActivitiesResource_ {

  final Client _client;

  ActivitiesResource_(Client client) :
      _client = client;

  /**
   * Returns a list of activities visible to the current logged in user. Visible activities are determined by the visiblity settings of the object that was acted on, e.g. Drive files a user can see. An activity is a record of past events. Multiple events may be merged if they are similar. A request is scoped to activities from a given Google service using the source parameter.
   *
   * [drive_ancestorId] - Identifies the Drive folder containing the items for which to return activities.
   *
   * [drive_fileId] - Identifies the Drive item to return activities for.
   *
   * [groupingStrategy] - Indicates the strategy to use when grouping singleEvents items in the associated combinedEvent object.
   *   Default: driveUi
   *   Allowed values:
   *     driveUi - 
   *     none - 
   *
   * [pageSize] - The maximum number of events to return on a page. The response includes a continuation token if there are more events.
   *   Default: 50
   *
   * [pageToken] - A token to retrieve a specific page of results.
   *
   * [source] - The Google service from which to return activities. Possible values of source are: 
- drive.google.com
   *
   * [userId] - Indicates the user to return activity for. Use the special value me to indicate the currently authenticated user.
   *   Default: me
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ListActivitiesResponse> list({core.String drive_ancestorId, core.String drive_fileId, core.String groupingStrategy, core.int pageSize, core.String pageToken, core.String source, core.String userId, core.Map optParams}) {
    var url = "activities";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (drive_ancestorId != null) queryParams["drive.ancestorId"] = drive_ancestorId;
    if (drive_fileId != null) queryParams["drive.fileId"] = drive_fileId;
    if (groupingStrategy != null && !["driveUi", "none"].contains(groupingStrategy)) {
      paramErrors.add("Allowed values for groupingStrategy: driveUi, none");
    }
    if (groupingStrategy != null) queryParams["groupingStrategy"] = groupingStrategy;
    if (pageSize != null) queryParams["pageSize"] = pageSize;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (source != null) queryParams["source"] = source;
    if (userId != null) queryParams["userId"] = userId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ListActivitiesResponse.fromJson(data));
  }
}

