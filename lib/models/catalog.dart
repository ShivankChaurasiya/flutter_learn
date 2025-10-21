class Item {
  final String id;
  final String name;
  final String desc;
  final String image;
  final num price;
  final String color;

  Item({
    required this.id, 
    required this.name, 
    required this.desc, 
    required this.image, 
    required this.price, 
    required this.color
    });
}
final Products = [Item(
      id: 'Shivank001',
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12 generation",
      image: "https://images.unsplash.com/photo-1611791485440-24e8239a0377?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjBwcm98ZW58MHx8MHx8fDA%3D&fm=jpg&q=60&w=3000",
      price: 999,
      color: "#33505a"
      ),
];
