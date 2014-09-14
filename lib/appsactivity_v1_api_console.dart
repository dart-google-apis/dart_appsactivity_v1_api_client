library appsactivity_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_appsactivity_v1_api/src/console_client.dart';

import "package:google_appsactivity_v1_api/appsactivity_v1_api_client.dart";

/** Provides a historical view of activity. */
@deprecated
class Appsactivity extends Client with ConsoleClient {

  /** OAuth Scope2: View historical activity for Google services */
  static const String ACTIVITY_SCOPE = "https://www.googleapis.com/auth/activity";

  /** OAuth Scope2: View and manage the files and documents in your Google Drive */
  static const String DRIVE_SCOPE = "https://www.googleapis.com/auth/drive";

  /** OAuth Scope2: View metadata for files and documents in your Google Drive */
  static const String DRIVE_METADATA_READONLY_SCOPE = "https://www.googleapis.com/auth/drive.metadata.readonly";

  /** OAuth Scope2: View the files and documents in your Google Drive */
  static const String DRIVE_READONLY_SCOPE = "https://www.googleapis.com/auth/drive.readonly";

  final oauth2.OAuth2Console auth;

  Appsactivity([oauth2.OAuth2Console this.auth]);
}
