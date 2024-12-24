class SignUpEmailPasswordFailure {
  final String message;

  SignUpEmailPasswordFailure([this.message = " An Unknown error Occured"]);

  factory SignUpEmailPasswordFailure.code(String code) {
    switch (code) {
      case 'Weak-password':
        return SignUpEmailPasswordFailure("please Enter a Strong Password");
      case 'Invalid-email':
        return SignUpEmailPasswordFailure(
            "please Enter a Strong Correct Email, Foremt");
      case 'Already-Exist-E-mail':
        return SignUpEmailPasswordFailure("Account Already Exist");
      case 'operation-not-allowed':
        return SignUpEmailPasswordFailure(
            "Operation Not Allowed, Contact Support");
      case 'User-disabled':
        return SignUpEmailPasswordFailure(
            "User Disabled please Contact support team");
      default:
        return SignUpEmailPasswordFailure();
    }
  }
}
