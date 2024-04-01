abstract class Validator<T> {
  String? validate(T? value);
}

class EmailValidator implements Validator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    // Regular expression untuk validasi email
    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    // Memeriksa apakah email sesuai dengan pola regex
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    // Tambahkan logika validasi email lainnya di sini
    return null;
  }
}

class PasswordValidator implements Validator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    // Tambahkan logika validasi password lainnya di sini
    return null;
  }
}
