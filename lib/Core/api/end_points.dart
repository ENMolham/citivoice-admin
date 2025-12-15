class EndPoints {
  static const String baseUrl = "https://e19bc4299474.ngrok-free.app/api";
  static const String imageUrl = "http://10.0.2.2:8000";

  //Auth
  static const String create_account_url = "$baseUrl/";
  static const String login_url = "$baseUrl/";
  static const String enter_email_url = "$baseUrl/";
  static const String enter_code_url = "$baseUrl/";
  static const String reset_password_url = "$baseUrl/";

  //Profile
  static const String profile_details_url = "$baseUrl/";
  static const String change_image_url = "$baseUrl/";
  static const String change_password_url = "$baseUrl/";
  static const String delete_account_url = "$baseUrl/";
  static const String logout_url = "$baseUrl/";

}
