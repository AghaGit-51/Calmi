class ChildProfile {
  final String id;
  final String name;
  final int age;
  final int weight;
  final int height;
  final String location;
  final String photoUrl;

  ChildProfile({
    required this.id,
    required this.name,
    required this.age,
    required this.weight,
    required this.height,
    required this.location,
    required this.photoUrl,
  });
}


final List<ChildProfile> dummyChildren = [
  ChildProfile(
    id: '1', name: 'Abhinaya Hayuning Gusti', age: 13, weight: 55, height: 160,
    location: 'Mojokerto', photoUrl: 'https://i.pravatar.cc/150?img=12'
  ),
  ChildProfile(
    id: '2', name: 'Zaafarani Hamizan Arfa', age: 12, weight: 52, height: 157,
    location: 'Surabaya', photoUrl: 'https://i.pravatar.cc/150?img=8'
  ),
];