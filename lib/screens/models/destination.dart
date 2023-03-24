import 'activities.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/camping_vandri.jpg',
    name: 'Camping',
    type: 'Camping',
    startTimes: ['9:00 am', '1:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/cycling_vandri.jpg',
    name: 'Cycling tour',
    type: 'Sightseeing',
    startTimes: ['1:00 pm', '6:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/picnicspot_vandri.jpg',
    name: 'Picnic Spot',
    type: 'Stay for 2 days',
    startTimes: ['8:30 am', '8:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/Anadolu-Oran-4.png',
    city: 'Anadolu',
    country: 'Oran',
    description: 'Turkish Restaurant',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Bistrot-Lenas-Oran.png',
    city: 'Bistro',
    country: 'Oran',
    description: 'Vandri lake good for camping and cycling.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Le-Royaume-du-Couscous-Oran-.png',
    city: 'Royaume',
    country: 'Oran',
    description: 'Pelhar Dam great tourist destination',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Saiko-Sushi-Oran.png',
    city: 'Saiko Sushi',
    country: 'Oran',
    description: '2500 year old buddha stupa',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/Le-cintra-702x336.jpg',
    city: 'Le Cintra',
    country: 'Oran',
    description: 'Visit temple for devotion and peace',
    activities: activities,
  ),
];
