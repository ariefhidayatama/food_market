part of 'service.dart';

class UserServices {
  static Future<ApiReturnValue<User>> signIn(String email, String password) async {
    await Future.delayed(Duration(milliseconds: 500));
    return ApiReturnValue(value: mockUser);
  }
}