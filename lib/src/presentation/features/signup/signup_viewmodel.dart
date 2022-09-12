import 'package:flutter_template/src/core/config/routes/locator.dart';
import 'package:flutter_template/src/core/config/routes/navigation_service.dart';
import 'package:flutter_template/src/core/config/routes/routes_path.dart';
import 'package:flutter_template/src/core/values/app_strings.dart';
import 'package:flutter_template/src/domain/entities/registered_user.dart';
import 'package:flutter_template/src/domain/use_cases/signup/signup_usecase.dart';
import 'package:flutter_template/src/core/base/base_view_model.dart';

class SignupViewModel extends BaseViewModel {
  final SignupUseCase _signupUseCase;
  SignupViewModel({required SignupUseCase signupUseCase})
      : _signupUseCase = signupUseCase;

  doSignup(email, password, name) async {
    var user = RegisteredUser(email: email, password: password, name: name);
    var response = await _signupUseCase.call(params: user);

    if (response.data != null && response.data!.contains(AppStrings.success)) {
      locator<NavigationService>().navigateTo(AppRoutes.boredPage);
    } else {
      showErrorToast(response.stringError ??
          "Something Went Wrong. Please try again later!");
    }
  }
}
