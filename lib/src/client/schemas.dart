part of appsactivity_v1_api;

/** An Activity resource is a combined view of multiple events. An activity has a list of individual events and a combined view of the common fields among all events. */
class Activity {

  /** The fields common to all of the singleEvents that make up the Activity. */
  Event combinedEvent;

  /** A list of all the Events that make up the Activity. */
  core.List<Event> singleEvents;

  /** Create new Activity from JSON data */
  Activity.fromJson(core.Map json) {
    if (json.containsKey("combinedEvent")) {
      combinedEvent = new Event.fromJson(json["combinedEvent"]);
    }
    if (json.containsKey("singleEvents")) {
      singleEvents = json["singleEvents"].map((singleEventsItem) => new Event.fromJson(singleEventsItem)).toList();
    }
  }

  /** Create JSON Object for Activity */
  core.Map toJson() {
    var output = new core.Map();

    if (combinedEvent != null) {
      output["combinedEvent"] = combinedEvent.toJson();
    }
    if (singleEvents != null) {
      output["singleEvents"] = singleEvents.map((singleEventsItem) => singleEventsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Activity */
  core.String toString() => JSON.encode(this.toJson());

}

/** Represents the changes associated with an action taken by a user. */
class Event {

  /** Additional event types. Some events may have multiple types when multiple actions are part of a single event. For example, creating a document, renaming it, and sharing it may be part of a single file-creation event. */
  core.List<core.String> additionalEventTypes;

  /** The time at which the event occurred formatted as Unix time in milliseconds. */
  core.String eventTimeMillis;

  /** Whether this event is caused by a user being deleted. */
  core.bool fromUserDeletion;

  /** Extra information for move type events, such as changes in an object's parents. */
  Move move;

  /** Extra information for permissionChange type events, such as the user or group the new permission applies to. */
  core.List<PermissionChange> permissionChanges;

  /** The main type of event that occurred. */
  core.String primaryEventType;

  /** Extra information for rename type events, such as the old and new names. */
  Rename rename;

  /** Information specific to the Target object modified by the event. */
  Target target;

  /** Represents the user responsible for the event. */
  User user;

  /** Create new Event from JSON data */
  Event.fromJson(core.Map json) {
    if (json.containsKey("additionalEventTypes")) {
      additionalEventTypes = json["additionalEventTypes"].toList();
    }
    if (json.containsKey("eventTimeMillis")) {
      eventTimeMillis = json["eventTimeMillis"];
    }
    if (json.containsKey("fromUserDeletion")) {
      fromUserDeletion = json["fromUserDeletion"];
    }
    if (json.containsKey("move")) {
      move = new Move.fromJson(json["move"]);
    }
    if (json.containsKey("permissionChanges")) {
      permissionChanges = json["permissionChanges"].map((permissionChangesItem) => new PermissionChange.fromJson(permissionChangesItem)).toList();
    }
    if (json.containsKey("primaryEventType")) {
      primaryEventType = json["primaryEventType"];
    }
    if (json.containsKey("rename")) {
      rename = new Rename.fromJson(json["rename"]);
    }
    if (json.containsKey("target")) {
      target = new Target.fromJson(json["target"]);
    }
    if (json.containsKey("user")) {
      user = new User.fromJson(json["user"]);
    }
  }

  /** Create JSON Object for Event */
  core.Map toJson() {
    var output = new core.Map();

    if (additionalEventTypes != null) {
      output["additionalEventTypes"] = additionalEventTypes.toList();
    }
    if (eventTimeMillis != null) {
      output["eventTimeMillis"] = eventTimeMillis;
    }
    if (fromUserDeletion != null) {
      output["fromUserDeletion"] = fromUserDeletion;
    }
    if (move != null) {
      output["move"] = move.toJson();
    }
    if (permissionChanges != null) {
      output["permissionChanges"] = permissionChanges.map((permissionChangesItem) => permissionChangesItem.toJson()).toList();
    }
    if (primaryEventType != null) {
      output["primaryEventType"] = primaryEventType;
    }
    if (rename != null) {
      output["rename"] = rename.toJson();
    }
    if (target != null) {
      output["target"] = target.toJson();
    }
    if (user != null) {
      output["user"] = user.toJson();
    }

    return output;
  }

  /** Return String representation of Event */
  core.String toString() => JSON.encode(this.toJson());

}

/** The response from the list request. Contains a list of activities and a token to retrieve the next page of results. */
class ListActivitiesResponse {

  /** List of activities. */
  core.List<Activity> activities;

  /** Token for the next page of results. */
  core.String nextPageToken;

  /** Create new ListActivitiesResponse from JSON data */
  ListActivitiesResponse.fromJson(core.Map json) {
    if (json.containsKey("activities")) {
      activities = json["activities"].map((activitiesItem) => new Activity.fromJson(activitiesItem)).toList();
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ListActivitiesResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (activities != null) {
      output["activities"] = activities.map((activitiesItem) => activitiesItem.toJson()).toList();
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ListActivitiesResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains information about changes in an object's parents as a result of a move type event. */
class Move {

  /** The added parent(s). */
  core.List<Parent> addedParents;

  /** The removed parent(s). */
  core.List<Parent> removedParents;

  /** Create new Move from JSON data */
  Move.fromJson(core.Map json) {
    if (json.containsKey("addedParents")) {
      addedParents = json["addedParents"].map((addedParentsItem) => new Parent.fromJson(addedParentsItem)).toList();
    }
    if (json.containsKey("removedParents")) {
      removedParents = json["removedParents"].map((removedParentsItem) => new Parent.fromJson(removedParentsItem)).toList();
    }
  }

  /** Create JSON Object for Move */
  core.Map toJson() {
    var output = new core.Map();

    if (addedParents != null) {
      output["addedParents"] = addedParents.map((addedParentsItem) => addedParentsItem.toJson()).toList();
    }
    if (removedParents != null) {
      output["removedParents"] = removedParents.map((removedParentsItem) => removedParentsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of Move */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains information about a parent object. For example, a folder in Drive is a parent for all files within it. */
class Parent {

  /** The parent's ID. */
  core.String id;

  /** Whether this is the root folder. */
  core.bool isRoot;

  /** The parent's title. */
  core.String title;

  /** Create new Parent from JSON data */
  Parent.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isRoot")) {
      isRoot = json["isRoot"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for Parent */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (isRoot != null) {
      output["isRoot"] = isRoot;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of Parent */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains information about the permissions and type of access allowed with regards to a Google Drive object. This is a subset of the fields contained in a corresponding Drive Permissions object. */
class Permission {

  /** The name of the user or group the permission applies to. */
  core.String name;

  /** The ID for this permission. Corresponds to the Drive API's permission ID returned as part of the Drive Permissions resource. */
  core.String permissionId;

  /** Indicates the Google Drive permissions role. The role determines a user's ability to read, write, or comment on the file. */
  core.String role;

  /** Indicates how widely permissions are granted. */
  core.String type;

  /** The user's information if the type is USER. */
  User user;

  /** Whether the permission requires a link to the file. */
  core.bool withLink;

  /** Create new Permission from JSON data */
  Permission.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("permissionId")) {
      permissionId = json["permissionId"];
    }
    if (json.containsKey("role")) {
      role = json["role"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("user")) {
      user = new User.fromJson(json["user"]);
    }
    if (json.containsKey("withLink")) {
      withLink = json["withLink"];
    }
  }

  /** Create JSON Object for Permission */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (permissionId != null) {
      output["permissionId"] = permissionId;
    }
    if (role != null) {
      output["role"] = role;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (user != null) {
      output["user"] = user.toJson();
    }
    if (withLink != null) {
      output["withLink"] = withLink;
    }

    return output;
  }

  /** Return String representation of Permission */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains information about a Drive object's permissions that changed as a result of a permissionChange type event. */
class PermissionChange {

  /** Lists all Permission objects added. */
  core.List<Permission> addedPermissions;

  /** Lists all Permission objects removed. */
  core.List<Permission> removedPermissions;

  /** Create new PermissionChange from JSON data */
  PermissionChange.fromJson(core.Map json) {
    if (json.containsKey("addedPermissions")) {
      addedPermissions = json["addedPermissions"].map((addedPermissionsItem) => new Permission.fromJson(addedPermissionsItem)).toList();
    }
    if (json.containsKey("removedPermissions")) {
      removedPermissions = json["removedPermissions"].map((removedPermissionsItem) => new Permission.fromJson(removedPermissionsItem)).toList();
    }
  }

  /** Create JSON Object for PermissionChange */
  core.Map toJson() {
    var output = new core.Map();

    if (addedPermissions != null) {
      output["addedPermissions"] = addedPermissions.map((addedPermissionsItem) => addedPermissionsItem.toJson()).toList();
    }
    if (removedPermissions != null) {
      output["removedPermissions"] = removedPermissions.map((removedPermissionsItem) => removedPermissionsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PermissionChange */
  core.String toString() => JSON.encode(this.toJson());

}

/** Photo information for a user. */
class Photo {

  /** The URL of the photo. */
  core.String url;

  /** Create new Photo from JSON data */
  Photo.fromJson(core.Map json) {
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for Photo */
  core.Map toJson() {
    var output = new core.Map();

    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of Photo */
  core.String toString() => JSON.encode(this.toJson());

}

/** Contains information about a renametype event. */
class Rename {

  /** The new title. */
  core.String newTitle;

  /** The old title. */
  core.String oldTitle;

  /** Create new Rename from JSON data */
  Rename.fromJson(core.Map json) {
    if (json.containsKey("newTitle")) {
      newTitle = json["newTitle"];
    }
    if (json.containsKey("oldTitle")) {
      oldTitle = json["oldTitle"];
    }
  }

  /** Create JSON Object for Rename */
  core.Map toJson() {
    var output = new core.Map();

    if (newTitle != null) {
      output["newTitle"] = newTitle;
    }
    if (oldTitle != null) {
      output["oldTitle"] = oldTitle;
    }

    return output;
  }

  /** Return String representation of Rename */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about the object modified by the event. */
class Target {

  /** The ID of the target. For example, in Google Drive, this is the file or folder ID. */
  core.String id;

  /** The MIME type of the target. */
  core.String mimeType;

  /** The name of the target. For example, in Google Drive, this is the title of the file. */
  core.String name;

  /** Create new Target from JSON data */
  Target.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("mimeType")) {
      mimeType = json["mimeType"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Target */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (mimeType != null) {
      output["mimeType"] = mimeType;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Target */
  core.String toString() => JSON.encode(this.toJson());

}

/** A representation of a user. */
class User {

  /** The displayable name of the user. */
  core.String name;

  /** The profile photo of the user. */
  Photo photo;

  /** Create new User from JSON data */
  User.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("photo")) {
      photo = new Photo.fromJson(json["photo"]);
    }
  }

  /** Create JSON Object for User */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (photo != null) {
      output["photo"] = photo.toJson();
    }

    return output;
  }

  /** Return String representation of User */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
