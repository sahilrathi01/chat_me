import 'package:dio/dio.dart';

class MakeMultipart {
  static FormData profileEditMultipart(
      {String? type, fName, lName, email, file}) {
    var data = FormData.fromMap({
      "type": type,
      "file": MultipartFile.fromFile(file ?? ""),
      "firstName": fName,
      "lastName": lName,
      "email": email,
    });
    return data;
  }

  static FormData phoneEditMultipart({String? type, personal, business}) {
    var data = FormData.fromMap({
      "type": type,
      "personal": personal,
      "business": business,
    });
    return data;
  }

  static FormData addressEidtMultipart(
      {String? type, personalAddress, businessAddress}) {
    var data = FormData.fromMap({
      "type": type,
      "personalAddress": personalAddress,
      "businessAddress": businessAddress,
    });
    return data;
  }

  static FormData contactPrefEidtMultipart({
    String? type,
    contactPreference,
  }) {
    var data = FormData.fromMap({
      "type": type,
      "contactPreference": contactPreference,
    });
    return data;
  }
}
