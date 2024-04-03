abstract class Validator<T> {
  String? validate(T? value);
}

class EmailValidator implements Validator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    }

    final RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }

    return null;
  }
}

class PasswordValidator implements Validator<String> {
  @override
  String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    // Memeriksa panjang minimal 8 karakter
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    // Memeriksa keberadaan setidaknya satu huruf besar
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }

    // Memeriksa keberadaan setidaknya satu huruf kecil
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }

    // Memeriksa keberadaan setidaknya satu angka
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one digit';
    }

    // Memeriksa keberadaan setidaknya satu karakter khusus
    if (!value.contains(RegExp(r'[@$!%*?&]'))) {
      return 'Password must contain at least one special character';
    }

    // Password memenuhi semua syarat validasi
    return null;
  }
}
