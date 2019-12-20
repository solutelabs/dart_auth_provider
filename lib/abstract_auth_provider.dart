abstract class AuthProvider {
  //Return [true] if session is Active, false otherwise.
  Future<bool> isSessionActive();

  ///Base sign-in method that will be used to sign in via id and password or even sending a verification code.
  ///The [id] can be used as a pre validated Mobile number, userId or email depending on a use case.
  ///Both [id] and [password] are option arguments, and depending on implementation it should be asserted.
  Future<Map<String, dynamic>> signIn({
    String id,
    String password,
  });

  ///Base method to verify the password, this will be used when id and password are captured separately
  /// and requires a separate API to verify password / OTP
  /// The [password] can be used as OTP as well.
  /// If authentication can be completed via [signIn] then, this method can be left unimplemented.
  Future<Map<String, dynamic>> verifyPassword({String password});

  ///Cache the session related data which can be retrieved later
  Future<bool> cacheSessionData(Map<String, dynamic> sessionData);

  ///Retrieve session
  Future<Map<String, dynamic>> retrieveSessionData();

  ///Fetch additional data from Server in case of lost or separate API
  Future<Map<String, dynamic>> fetchAdditionalData({
    Map<String, dynamic> authToken,
  });

  ///Logout the session
  Future<bool> logout();
}
