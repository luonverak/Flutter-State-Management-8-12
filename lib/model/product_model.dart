import 'package:state_management/model/category_model.dart';

class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String fid;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.fid,
  });
}

final List<ProductModel> listProduct = [
  ProductModel(
    id: 1,
    name: "Audi A7",
    description:
        'Few supercars actually get driven daily, but the 2023 Audi R8 seems designed for such a task. It offers a reasonably easy-going ride along with its breakneck acceleration. The R8 shares its underpinnings and its powertrain—a mighty V-10 and seven-speed automatic—with the wild Lamborghini Huracán. The Audi is less hardcore than the Lambo, though, less intense on a twisty road or racetrack. What the R8 offers instead is a level of refinement that’s more in line with the rest of the Audi lineup. ',
    price: 30000,
    image: 'asset/image/2021-audi-r8-mmp-1-1603746624.jpg',
    fid: '${listCategory[0]}',
  ),
  ProductModel(
    id: 2,
    name: "Lamborghini Huracan",
    description:
        'Few supercars actually get driven daily, but the 2023 Audi R8 seems designed for such a task. It offers a reasonably easy-going ride along with its breakneck acceleration. The R8 shares its underpinnings and its powertrain—a mighty V-10 and seven-speed automatic—with the wild Lamborghini Huracán. The Audi is less hardcore than the Lambo, though, less intense on a twisty road or racetrack. What the R8 offers instead is a level of refinement that’s more in line with the rest of the Audi lineup. ',
    price: 3000000,
    image: 'asset/image/lamborghini_huracan_evo_street_2.webp',
    fid: '${listCategory[1]}',
  ),
  ProductModel(
    id: 3,
    name: "Toyota Hilux",
    description:
        'Few supercars actually get driven daily, but the 2023 Audi R8 seems designed for such a task. It offers a reasonably easy-going ride along with its breakneck acceleration. The R8 shares its underpinnings and its powertrain—a mighty V-10 and seven-speed automatic—with the wild Lamborghini Huracán. The Audi is less hardcore than the Lambo, though, less intense on a twisty road or racetrack. What the R8 offers instead is a level of refinement that’s more in line with the rest of the Audi lineup. ',
    price: 32000,
    image: 'asset/image/toyota-hilux-revo.jpg',
    fid: '${listCategory[2]}',
  ),
  ProductModel(
    id: 4,
    name: "Land Cruiser",
    description:
        'Few supercars actually get driven daily, but the 2023 Audi R8 seems designed for such a task. It offers a reasonably easy-going ride along with its breakneck acceleration. The R8 shares its underpinnings and its powertrain—a mighty V-10 and seven-speed automatic—with the wild Lamborghini Huracán. The Audi is less hardcore than the Lambo, though, less intense on a twisty road or racetrack. What the R8 offers instead is a level of refinement that’s more in line with the rest of the Audi lineup. ',
    price: 20000,
    image: 'asset/image/land-cruiser-exterior-right-front-three-quarter-2.webp',
    fid: '${listCategory[2]}',
  ),
  ProductModel(
    id: 5,
    name: "Audi R8",
    description:
        'Few supercars actually get driven daily, but the 2023 Audi R8 seems designed for such a task. It offers a reasonably easy-going ride along with its breakneck acceleration. The R8 shares its underpinnings and its powertrain—a mighty V-10 and seven-speed automatic—with the wild Lamborghini Huracán. The Audi is less hardcore than the Lambo, though, less intense on a twisty road or racetrack. What the R8 offers instead is a level of refinement that’s more in line with the rest of the Audi lineup. ',
    price: 30000,
    image:
        'asset/image/2023-audi-r8-gt-front-three-quarters-motion-3-1664827965.jpg',
    fid: '${listCategory[0]}',
  )
];
