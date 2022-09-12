// import 'package:flutter_template/src/core/network/dio_provider.dart';
// import 'package:flutter_template/src/data/datasources/remote/api_repo.dart';


// class LoginReposiotyImpl extends ApiRepository implements LoginReposioty {
//   @override
//   forgetPassword() {}

//   @override
//   loginUser() {
//     var endPoint =
//         "${DioProvider.baseUrl}/movie/popular?api_key=4fccc5c11e3b4a2ba163b94dab4b4181&language=en-US&page=1";

//     var dioCall = getApi(endPoint);

//     try {
//       return callApiWithErrorParser(dioCall)
//           .then((response) => print("success"));
//     } catch (e) {
//       rethrow;
//     }
//   }
// }
