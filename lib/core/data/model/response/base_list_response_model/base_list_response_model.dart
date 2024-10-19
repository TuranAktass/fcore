class BaseListResponseModel<T> {
  DateTime? timeStamp;
  bool? success;
  List<T>? dataSet;
  String? message;
  String? errorCode;

  BaseListResponseModel.fromJson(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
    timeStamp = json["timestamp"];
    message = json["message"];
    errorCode = json["errorCode"];
    success = json["success"];
    if (json["dataSet"] != null) {
      dataSet = [];
      json["dataSet"].forEach((element) => {dataSet!.add(fromJsonT(element))});
    }
  }
}