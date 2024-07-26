class SignupEmailPasswordFailure {
  final String message;

  const SignupEmailPasswordFailure(
      [this.message = "An unknown error occurred"]);
  factory SignupEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return const SignupEmailPasswordFailure(
            'Please enter a stronger password');

      case 'invalid-email':
        return const SignupEmailPasswordFailure(
            'Email is not valid or badly formatted');

      case 'email-already-in-use':
        return const SignupEmailPasswordFailure(
            'An account already exists for that email');
      default:
        return const SignupEmailPasswordFailure();
    }
  }
}
