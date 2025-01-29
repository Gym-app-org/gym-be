// lib/_middleware.dart
import 'package:dart_frog/dart_frog.dart';
import 'package:gym_backend/authenticator.dart';

Handler middleware(Handler handler) {
  return handler.use(
    provider<Authenticator>(
      (_) => Authenticator(),
    ),
  );
}
