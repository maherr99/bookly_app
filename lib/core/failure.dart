import 'package:dio/dio.dart';

abstract class Failure {
  final String errmassege;

  Failure(this.errmassege);
}

class ServiceFailure extends Failure {
  ServiceFailure(super.errmassege);

  factory ServiceFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure('Connection Time Out With ApiServer');

      case DioExceptionType.sendTimeout:
        return ServiceFailure('Send Time Out With ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServiceFailure('Receive Time Out With ApiServer');

      case DioExceptionType.cancel:
        return ServiceFailure('Requst to ApiServer With Canceld');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServiceFailure('no internet connection');
        }

        return ServiceFailure('unexpected error, please try later');
      case DioExceptionType.badResponse:
        return ServiceFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.badCertificate:
        return ServiceFailure('Bad sertificate With ApiServer');

      case DioExceptionType.connectionError:
        return ServiceFailure('Connection Error With ApiServer');

      default:
        return ServiceFailure('Oops there with an error , please try later! ');
    }
  }

  factory ServiceFailure.fromBadResponse(int statuscode, dynamic badresponse) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServiceFailure(badresponse['error']['message']);
    } else if (statuscode == 404) {
      return ServiceFailure('Your requst not found , please try later!');
    } else if (statuscode == 500) {
      return ServiceFailure('Internet server error  , please try later!');
    } else {
      return ServiceFailure('Oops there with an error , please try later!');
    }
  }
}
