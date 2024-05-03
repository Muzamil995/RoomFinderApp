class hotelSample{
  int id;
  String name;
  double price;
  String location;
  String tumbnailPath;


  hotelSample({required this.id,
  required this.name,
  required this.price,
  required this.location,
  required this.tumbnailPath});

  List<hotelSample> hotel=[
    hotelSample(id: 1,
        name: 'Sereine Hotel',
        price: 8000,
        location: 'Islamabad',
        tumbnailPath: 'https://cdn.pixabay.com/photo/2019/08/19/13/58/bed-4416515_1280.jpg'),
    hotelSample(id: 2,
        name: "Pearl Continentel",
        price: 5000,
        location: 'Lahore',
        tumbnailPath: 'https://cdn.pixabay.com/photo/2014/07/21/19/20/lobby-398845_640.jpg'),
    hotelSample(id: 3,
        name: 'Humming Bird',
        price: 3000,
        location: 'Karachi',
        tumbnailPath: 'https://cdn.pixabay.com/photo/2022/04/14/13/36/bedroom-7132435_640.jpg')
  ];
}