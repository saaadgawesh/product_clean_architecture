class ProductRequest {
  //   @Query("page") int page,
  // @Query("limit") int limit,
  final int page;
  final int limit;
  ProductRequest({required this.page, required this.limit});

  Map<String, dynamic> toJson() => {"page": page, "limit": limit};
}
