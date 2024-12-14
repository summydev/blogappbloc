import 'package:blogapp/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String pasword,
  });
  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String pasword,
  });
}
