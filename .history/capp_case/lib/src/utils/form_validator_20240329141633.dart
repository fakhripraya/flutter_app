abstract class Validator<T> {
  String? validate(T value);
}

class EmailValidator implements Validator<String> {
  @override
  String? validate(String value) {
    if (value.isEmpty) {
      return 'Please enter your email';
    }
    // Tambahkan logika validasi email lainnya di sini
    return null;
  }
}

class PasswordValidator implements Validator<String> {
  @override
  String? validate(String value) {
    if (value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    // Tambahkan logika validasi password lainnya di sini
    return null;
  }
}
