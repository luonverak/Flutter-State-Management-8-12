class CategoryModel {
  final int id;
  final String image;

  CategoryModel({required this.id, required this.image});
}

final List<CategoryModel> listCategory = [
  CategoryModel(id: 1, image: 'asset/icon/Audi_logo_detail.svg.png'),
  CategoryModel(id: 2, image: 'asset/icon/Lamborghini_Logo.svg.png'),
  CategoryModel(id: 3, image: 'asset/icon/logo-toyota.png'),
  CategoryModel(id: 4, image: 'asset/icon/Mazda-Logo-1992.png'),
];
