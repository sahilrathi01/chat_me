class Validation {
  static const String phonePatttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  // static const String countryCodePattrn = r'/^(\+?\d{1,3}|\d{1,4})$/';
  static const String countryCodePattrn = r'/^(\+?\d{1,3}|\d{1,4})$/gm';
  static const String passPatttern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  static const String emailPatttern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static RegExp checkEmailRegExp = RegExp(r'^[a-zA-Z]+$');
  static RegExp nameRegExp = RegExp(r'^[a-z A-Z]+$');
  static RegExp emailRegExp = RegExp(emailPatttern);
  static RegExp phoneRegExp = RegExp(phonePatttern);
  static RegExp passwordRefExp = RegExp(passPatttern);
  static RegExp countryCodeRegex = RegExp(r'^\+\d+$');

  static String? nameValidator(value) {
    if (value.isEmpty) {
      return "Please enter name";
    } else if (value.length < 2) {
      return "Enter min. 2 latters";
    } else if (!nameRegExp.hasMatch(value)) {
      return "Enter Correct Name";
    }
    return null;
  }

  static String? countryCodeValidation(value) {
    if (value!.isEmpty || value.length.toString() == '') {
      return "Enter country code";
    } else if (!countryCodeRegex.hasMatch(value)) {
      return 'invalid country code';
    } else {
      return null;
    }
  }

  static String? landlineValidation({String? value, bool? req}) {
    if (value!.isNotEmpty) {
      RegExp landlineRegex = RegExp(r'^\d+$');
      if (!landlineRegex.hasMatch(value)) {
        return 'Invalid landline number';
      }
    }
    return null;
  }

  static String? phoneNumberValidation(value) {
    if (value!.isEmpty || value.length.toString() == '') {
      return "Enter phone number";
    } else if (!phoneRegExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  static String? passwordValidation(value) {
    if (value!.isEmpty || value.length.toString() == '') {
      return "Enter Password";
    } else if (value.length < 6) {
      return ("Password must be more than 5 characters");
    } else if (!passwordRefExp.hasMatch(value)) {
      return ("Password should contain upper,lower,digit and Special character ");
      // return 'Please enter valid password';
    }
    return null;
  }

  static String? confirmPasswordValidation(value, password) {
    // if (value!.isEmpty || value.length.toString() == '') {
    //   return "Enter Password";
    // } else if (value.length < 6) {
    //   return ("Password must be more than 5 characters");
    // } else if (!passwordRefExp.hasMatch(value)) {
    //   return ("Password should contain upper,lower,digit and Special character ");
    // } else
    if (value != password) {
      return 'Password and confirm passsword not matched';
    } else {
      return null;
    }
  }

  static String? emailValidation(value) {
    if (value!.isEmpty || value.length.toString() == '') {
      return "Enter email";
    } else if (!emailRegExp.hasMatch(value)) {
      return ("Check your email");
      // return 'Please enter valid password';
    }
    return null;
  }

  static List signUpValidation({
    required String email,
    required String phone,
    required String password,
  }) {
    if (email.isEmpty ||
        email.length.toString() == '' && phone.isEmpty ||
        phone.length.toString() == '' && password.isEmpty ||
        password.length.toString() == '') {
      return ["Input feild required", ""];
    } else if (email.isEmpty || email.length.toString() == '') {
      return ["email", "Enter email"];
    } else if (!emailRegExp.hasMatch(email)) {
      return ["email", ("Check your email")];
    } else if (phone.isEmpty || phone.length.toString() == '') {
      return ["phone", "Enter phone number"];
    } else if (!phoneRegExp.hasMatch(phone)) {
      return ["phone", 'Please enter valid mobile number'];
    } else if (password.isEmpty || password.length.toString() == '') {
      return ["password", "Enter Password"];
    } else if (password.length < 6) {
      return ["password", ("Password must be more than 5 characters")];
    } else if (!passwordRefExp.hasMatch(password)) {
      return [
        "password",
        ("Password should contain upper,lower,digit and Special character ")
      ];
    }

    return ['', ''];
  }

  static String loginValidation({
    required String emailAndPhone,
    required String password,
  }) {
    if (checkEmailRegExp.hasMatch(emailAndPhone) ||
        emailRegExp.hasMatch(emailAndPhone)) {
      if (emailAndPhone.isEmpty || emailAndPhone.length.toString() == '') {
        return "Enter email";
      } else if (!emailRegExp.hasMatch(emailAndPhone)) {
        return ("Check your email");
      } else if (password.isEmpty || password.length.toString() == '') {
        return "Enter Password";
      } else if (password.length < 6) {
        return ("Password must be more than 5 characters");
      } else if (!passwordRefExp.hasMatch(password)) {
        return ("Password should contain upper,lower,digit and Special character ");
      }
    } else {
      if (emailAndPhone.isEmpty || emailAndPhone.length.toString() == '') {
        return "Enter phone number";
      } else if (!phoneRegExp.hasMatch(emailAndPhone)) {
        return 'Please enter valid mobile number';
      } else if (password.isEmpty || password.length.toString() == '') {
        return "Enter Password";
      } else if (password.length < 6) {
        return ("Password must be more than 5 characters");
      } else if (!passwordRefExp.hasMatch(password)) {
        return ("Password should contain upper,lower,digit and Special character ");
      }
    }

    return '';
  }

  static String signleInputNumEmailValidation({
    required String emailAndPhone,
  }) {
    if (checkEmailRegExp.hasMatch(emailAndPhone) ||
        emailRegExp.hasMatch(emailAndPhone)) {
      if (emailAndPhone.isEmpty || emailAndPhone.length.toString() == '') {
        return "Enter email";
      } else if (!emailRegExp.hasMatch(emailAndPhone)) {
        return ("Check your email");
      }
    } else {
      if (emailAndPhone.isEmpty || emailAndPhone.length.toString() == '') {
        return "Enter phone number";
      } else if (!phoneRegExp.hasMatch(emailAndPhone)) {
        return 'Please enter valid mobile number';
      }
    }

    return '';
  }

  static String addNewPassword({
    required String password,
    required String conformPassword,
  }) {
    if (password.isEmpty || password.length.toString() == '') {
      return "Enter Password";
    } else if (password.length < 6) {
      return ("Password must be more than 5 characters");
    } else if (!passwordRefExp.hasMatch(password)) {
      return ("Password should contain upper,lower,digit and Special character ");
    } else if (password != conformPassword) {
      return 'Password and conform passsword not matched';
    } else {
      return '';
    }
  }

  static String validateIntOrString({
    required String value,
  }) {
    if (checkEmailRegExp.hasMatch(value) || emailRegExp.hasMatch(value)) {
      return "string";
    } else {
      return 'int';
    }
  }
}
