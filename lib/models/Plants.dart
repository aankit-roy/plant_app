class Plant{
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavourited;
  final String description;
  bool isSelected;

  Plant(
  {
  required this.plantId,
  required this.price,
  required this.size,
  required this.rating,
  required  this.humidity,
  required this.temperature,
  required  this.category,
  required this.plantName,
  required this.imageURL,
  required this.isFavourited,
  required this.description,
    required this.isSelected,
  });
  //List of plant data
static List<Plant> plantList=[
  Plant(
      plantId: 0,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/flowers.png",
      isFavourited: true,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 1,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Indoor",
      plantName: "Philodendron",
      imageURL: "assets/images/flowers.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 2,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 3,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 4,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 5,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 6,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 7,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 8,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),
  Plant(
      plantId: 9,
      price: 10, size: "small",
      rating: 4.7,
      humidity: 56,
      temperature: '19-22',
      category:  "Outdoor",
      plantName: "Philodendron",
      imageURL: "assets/images/seeding.png",
      isFavourited: false,
      description: "This plant is one of the best plant. It grows in most of the regions in the world, "
          "can survive even harshest weather conditions",
    isSelected: false,
  ),


  ];
// get favourite item
static List<Plant> getFavouritedPlants(){
  List<Plant> _travelList=Plant.plantList;
  return _travelList.where((element) => element.isFavourited==true).toList();

}
// get data of cart item
static List<Plant> addToCartPlants(){
  List<Plant> _selectedPlants=Plant.plantList;
  return _selectedPlants.where((element) => element.isSelected==true).toList();

}

}