 import 'dart:ffi';
import 'dart:io';
import 'dart:math';
void main() {
  
//  Map<String , dynamic> laptop1={ 'size ': '512', 'ram':512, 'procesor': '22', 'camera':'12'};
//   Map<String , dynamic> laptop2={ 'size ': '333', 'ram':512, 'procesor': '23', 'camera':'12'};
//    Map<String , dynamic> laptop3={ 'size ': '444', 'ram':512, 'procesor': '24', 'camera':'12'};
List<Laptop> laptops = [
    Map Laptop1{
      "name": "Laptop A",
      "price":1500,
      "Size": 512,
      "ram": 8,
      "processor": "Intel Core i5",
      "camera": "720p",
},
    Map laptop2{
      "name": "Laptop B",
       "price":1300,
      'Size': 256,
      "ram": 16,
      "processor": "AMD Ryzen 7",
      "camera": "1080p",
    },
   Map Laptop3{
      "name": "Laptop C",
       "price":1800,
      "Size": 1000,
      "ram": 12,
      "processor": "Intel Core i7",
      "camera": "1080p",
   },
  ];

  print("Welcome to the Laptop Store!");
  print("Here are the available laptops:\n");

  laptops.forEach((laptop) {
    print(
        "${laptop.name}: HDD ${laptop.Size}GB, RAM ${laptop.ram}GB, ${laptop.processor}, Camera ${laptop.camera}");
  });

  int budget = int.parse(prompt("Enter your budget: "));

  List<Laptop> affordableLaptops = laptops
      .where((laptop) => (laptop.Size + laptop.ram) <= budget)
      .toList();

  if (affordableLaptops.isEmpty) {
    print("\nSorry, no laptops fit your budget.");
  } else {
    print("\nLaptops within your budget:");
    affordableLaptops.forEach((laptop) {
      print("${laptop.name}");
    });
  }
}

String prompt(String promptText) {
  print(promptText);
  return stdin.readLineSync()!;
}
Please note that this is a simplified example and doesn't include error handling or a user-friendly interface. Additionally, you'll need to run this code in a Dart environment, such as DartPad or a local Dart development environment.






  // Int bugect 

  //  List<Map> laptop = [laptop1,laptop2,laptop3];
  //  for (var element in laptop){
  //   print(element["name"]);
  //  }
  //  print("choose the laptop:");
  //  String? ss = stdin.readLineSync();

  //  for (var element in laptop)
  //  {
  //   if(ss==element["name"]){
  //     print(element["price"]);
  //   }
  //  }}
