import 'package:docdoc/core/api/api_error_handler.dart';
import 'package:docdoc/core/api/api_result.dart';
import 'package:docdoc/core/api/api_service.dart';
import 'package:docdoc/features/sign_up/data/models/signup_request_body.dart';
import 'package:docdoc/features/sign_up/data/models/signup_response.dart';

class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failuer(ErrorHandler.handle(error));
    }
  }
}
