class BaseListResponseModel<T> {
  DateTime? timeStamp;
  String? success;
  List<T>? dataSet;
  String? message;
  String? errorCode;

  BaseListResponseModel.fromJson(
      Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
    timeStamp = json["timestamp"];
    message = json["message"].toString();
    errorCode = json["errorCode"].toString();
    success = json["success"].toString();
    if (json["data"] != null) {
      dataSet = [];
      json["data"].forEach((element) => {dataSet!.add(fromJsonT(element))});
    }
  }
}
