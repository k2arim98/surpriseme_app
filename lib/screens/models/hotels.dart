class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/HotelAz.jpg',
    name: "Az Hotel",
    address: "Oran",
    price: 1000,
  ),
  Hotel(
    imageUrl: 'assets/images/HotelMeridien.jpg',
    name: "Le Meridien",
    address: "Oran",
    price: 1000,
  ),
  Hotel(
    imageUrl: 'assets/images/HotelPacha.jpg',
    name: "Hotel Pacha",
    address: "Oran",
    price: 2000,
  ),
  Hotel(
    imageUrl: 'assets/images/HotelRoyal.jpg',
    name: "Hotel Royal",
    address: "Oran",
    price: 1000,
  ),
];
