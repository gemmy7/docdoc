import 'package:docdoc/core/api/api_error_handler.dart';
import 'package:docdoc/core/api/api_result.dart';
import 'package:docdoc/core/api/api_service.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failuer(ErrorHandler.handle(error));
    }
  }
}
