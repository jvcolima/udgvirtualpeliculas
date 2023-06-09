import '../core.dart';

class CarService {
  List<Car> getCarList() {
    return <Car>[
      Car(
        id: 1,
        brand: "Acción",
        model: "Acción",
        price: 2580,
        condition: "Weekly",
        images: [
          "assets/images/cars/land_rover_0.png",
          "assets/images/cars/land_rover_1.png",
          "assets/images/cars/land_rover_2.png",
        ],
      ),
      Car(
        id: 2,
        brand: "Infantil",
        model: "Infantil",
        price: 3580,
        condition: "Monthly",
        images: [
          "assets/images/cars/alfa_romeo_c4_0.png",
        ],
      ),
      Car(
        id: 3,
        brand: "2022",
        model: "AVATAR 2",
        price: 1100,
        condition: "Daily",
        images: [
          "assets/images/cars/nissan_gtr_0.png",
          "assets/images/cars/nissan_gtr_1.png",
          "assets/images/cars/nissan_gtr_2.png",
          "assets/images/cars/nissan_gtr_3.png",
        ],
      ),
      Car(
        id: 4,
        brand: "Acura",
        model: "MDX 2020",
        price: 2200,
        condition: "Monthly",
        images: [
          "assets/images/cars/acura_0.png",
          "assets/images/cars/acura_1.png",
          "assets/images/cars/acura_2.png",
        ],
      ),
      Car(
        id: 5,
        brand: "Chevrolet",
        model: "Camaro",
        price: 3400,
        condition: "Weekly",
        images: [
          "assets/images/cars/camaro_0.png",
          "assets/images/cars/camaro_1.png",
          "assets/images/cars/camaro_2.png",
        ],
      ),
      Car(
        id: 6,
        brand: "Ferrari",
        model: "Spider 488",
        price: 4200,
        condition: "Weekly",
        images: [
          "assets/images/cars/ferrari_spider_488_0.png",
          "assets/images/cars/ferrari_spider_488_1.png",
          "assets/images/cars/ferrari_spider_488_2.png",
          "assets/images/cars/ferrari_spider_488_3.png",
          "assets/images/cars/ferrari_spider_488_4.png",
        ],
      ),
      Car(
        id: 7,
        brand: "Ford",
        model: "Focus",
        price: 2300,
        condition: "Weekly",
        images: [
          "assets/images/cars/ford_0.png",
          "assets/images/cars/ford_1.png",
        ],
      ),
      Car(
        id: 8,
        brand: "Fiat",
        model: "500x",
        price: 1450,
        condition: "Weekly",
        images: [
          "assets/images/cars/fiat_0.png",
          "assets/images/cars/fiat_1.png",
        ],
      ),
      Car(
        id: 9,
        brand: "Honda",
        model: "Civic",
        price: 900,
        condition: "Daily",
        images: [
          "assets/images/cars/honda_0.png",
        ],
      ),
      Car(
        id: 10,
        brand: "Citroen",
        model: "Picasso",
        price: 1200,
        condition: "Monthly",
        images: [
          "assets/images/cars/citroen_0.png",
          "assets/images/cars/citroen_1.png",
          "assets/images/cars/citroen_2.png",
        ],
      ),
    ];
  }
}
