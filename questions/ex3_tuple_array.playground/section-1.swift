
import Foundation

let errorCodes = [
  (428, "Precondition Required (RFC 6585)"),
  (402, "Payment Required"),
  (403, "Forbidden"),
  (404, "Not Found"),
  (400, "Bad Request"),
  (407, "Proxy Authentication Required"),
  (408, "Request Timeout"),
  (418, "I'm a teapot (RFC 2324)"),
  (410, "Gone"),
  (451, "Redirect (Microsoft)"),
  (411, "Length Required"),
  (412, "Precondition Failed"),
  (409, "Conflict"),
  (413, "Request Entity Too Large"),
  (414, "Request-URI Too Long"),
  (415, "Unsupported Media Type"),
  (416, "Requested Range Not Satisfiable"),
  (406, "Not Acceptable"),
  (417, "Expectation Failed"),
  (405, "Method Not Allowed"),
  (419, "Authentication Timeout (not in RFC 2616)"),
  (420, "Method Failure (Spring Framework)"),
  (420, "Enhance Your Calm (Twitter)"),
  (444, "No Response (Nginx)"),
  (423, "Locked (WebDAV; RFC 4918)"),
  (424, "Failed Dependency (WebDAV; RFC 4918)"),
  (426, "Upgrade Required"),
  (422, "Unprocessable Entity (WebDAV; RFC 4918)"),
  (429, "Too Many Requests (RFC 6585)"),
  (431, "Request Header Fields Too Large (RFC 6585)"),
  (449, "Retry With (Microsoft)"),
  (497, "HTTP to HTTPS (Nginx)"),
  (494, "Request Header Too Large (Nginx)"),
  (495, "Cert Error (Nginx)"),
  (496, "No Cert (Nginx)"),
  (401, "Unauthorized"),
  (498, "Token expired/invalid (Esri)"),
  (499, "Client Closed Request (Nginx)"),
  (440, "Login Timeout (Microsoft)"),
  (499, "Token required (Esri)")]

// How many error codes are there?  How many ways can you do this?

// Sort the error codes by the code and print the error messages

// What is the error message with the lowest code?

// Sort the error messages by the longest message

// What is the error code with the shortest error message?

// Sort the error messages in alphabetical order
// HINT: You need to bridge to NSString using (x as NSString)
// and then use localizedCaseInsensitiveCompare() and 
// NSComparisionResult.


// Create an array of only odd error codes




