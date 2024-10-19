class PageableRequestModel {
  const PageableRequestModel({
    this.page = 0,
    this.size = 0,
    this.sort = const [],
  });

  final int page;
  final int size;
  final List<String> sort;

  String toUrlSuffix() =>
      "?page=${page.toString()}&size=${size.toString()}&sort=${sort.toString()}";
}
