// import 'dart:io';

// import 'admin.dart';
// String? selectRentCar;
// int daysBooking = 0;

// int corolla = 3;
// int prado = 3;
// int civic = 3;

// int _currentId = 0; // this functon is used to create static unique id

// int generateUniqueId() {
//   _currentId++;
//   return _currentId;
// }

// void main() {

//   bool running = true;
//   while (running) {
//     print("select 1 for Customer");
//     print("select 2 for Admin");
//     print("select 3 for exiting");
//     print('');

//     String? option = stdin.readLineSync();

//     if (option == "1") {
//       Customer();
//     } else if (option == "2") {
//       print('Exiting...');
//       print("welcome Admin");

//       adminPanel admin21 = adminPanel();
//       admin21.adminMain();
//     } else if (option == "3") {
//       running = false;
//     } else {
//       print("Invalid input, please select 1, 2, or 3.");
//     }
//   }
// }

// String? customerName = stdin.readLineSync();

// Customer() {
//   print("Please Enter your name");
// // String? customerName = stdin.readLineSync();
//   print("welcome $customerName");
//   print('');

//   bool running = true;
//   while (running) {
//     print("press 1 avalaible cars");
//     print("press 2 booking cars");
//     print("press 3 back to menu");
//     print('');
//     String? availableCar = stdin.readLineSync();
//     if (availableCar == "1") {
//       availableCars();
//     } else if (availableCar == "2") {
//       customerInformation();
//       carBooking();
//     } else if (availableCar == "3") {
//       running = false;
//     } else {
//       print("Invalid input, please select 1, 2, or 3.");
//     }
//   }
// }

// availableCars() {
//   print("Toyota Corolla price per day 5000rs");
//   print("Honda Civic price per day 8000rs ");
//   print("Toyota Prado price per day 12000rs");
//   print('');
// }

// carBooking() {
//   print("press 1 for corolla Corolla available $corolla");
//   print("press 2 for prado  $prado");
//   print("press 3 for civic  $civic");
//   String? selectCar = stdin.readLineSync();
//   print('days required of car');
//   daysBooking = int.parse(stdin.readLineSync()!);

//   if (selectCar == '1') {
//     if (corolla > 0) {
//       corolla -= 1;
//       print('You selected a Corolla. Corolla available: $corolla');
//       int amountBooking = 5000 * daysBooking;
//       print("Your Total amount is : $amountBooking");
//       selectRentCar = "corolla";
//     } else {
//       print('No Corollas available.');
//     }
//   } else if (selectCar == '2') {
//     if (prado > 0) {
//       prado -= 1;
//       print('You selected a Prado. Prado available: $prado');
//       int amountBooking = 12000 * daysBooking;
//       print("Your Total amount is : $amountBooking");
//       selectRentCar = "Prado";
//     } else {
//       print('No Prados available.');
//     }
//   } else if (selectCar == '3') {
//     if (civic > 0) {
//       civic -= 1;
//       print('You selected a Civic. Civic available: $civic');
//       int amountBooking = 8000 * daysBooking;
//       print("Your Total amount is : $amountBooking");
//       selectRentCar = "Civic";
//     } else {
//       print('No Civics available.');
//     }
//   } else {
//     print('Invalid selection.');
//   }
//   // customerInformation(daysBooking);
// }

// void customerInformation() {

//   List<Map<String, dynamic>> customerData = [];
//   print('Enter Your name');
//   String? name = stdin.readLineSync();
//   print('Enter Your Contact Number');
//   String? contactNumber = stdin.readLineSync();
//   print('Enter Your CNIC Number');
//   String? cnic = stdin.readLineSync();
//   print('Enter Your CNIC Number');
//   String? address = stdin.readLineSync();

//   Map<String, dynamic> customer = {
//     'Customer ID': generateUniqueId(),
//     'name': name,
//     'contact number': contactNumber,
//     'cnic': cnic,
//     'address': address,
//     'Days': daysBooking, //?? "Please Enter number of days booking ",
//     'Car': selectRentCar //?? "please select car ",
//     // 'Amount':
//   };
//   customerData.add(customer);

//   for (var customer in customerData) {
//     customer.forEach((key, value) {
//       if (value is List) {
//         // If the value is a list, format it nicely
//         print('$key: ${value.join(', ')}');
//       } else {
//         print('$key: $value');
//       }
//     });
//   }

//   print("Thank you for Booking Car");
// }

// // adminMain(){

// //   print('Enter Your name');
// //   String? name = stdin.readLineSync();
// //   print('Enter Your name');
// //   String? name = stdin.readLineSync();

// // }

import 'dart:io';
// import 'admin.dart';

String? customerName = stdin.readLineSync();
Map<String, dynamic>? customer;
String? selectRentCar;
int daysBooking = 0;
int? amountBooking;
int corolla = 3;
int prado = 3;
int civic = 3;

int _currentId = 0; // Used to create static unique id
int generateUniqueId() {
  _currentId++;
  return _currentId;
}

int bill = generateUniqueId();

void main() {
  bool running = true;
  while (running) {
    print("welcome to rent a car");
    print(" ");
    print("Select 1 for Customer");
    print("Select 2 for Admin");
    print("Select 3 for exiting");
    print('');

    String? option = stdin.readLineSync();

    if (option == "1") {
      Customer();
    } else if (option == "2") {
      print('Welcome Admin');
      // Make sure `adminPanel` and `adminMain` exist
      adminPanel admin21 = adminPanel();
      admin21.adminMain();
    } else if (option == "3") {
      running = false;
    } else {
      print("Invalid input, please select 1, 2, or 3.");
    }
  }
}

void Customer() {
  print("Please Enter your name:");
  print("Welcome $customerName");
  print('');

  bool running = true;
  while (running) {
    print(" ");
    print("Press 1 for available cars");
    print("Press 2 to book a car");
    print("Press 3 to go back to the menu");
    print('');

    String? choice = stdin.readLineSync();
    if (choice == "1") {
      availableCars();
    } else if (choice == "2") {
      // Ensure this is called before customerInformation

      carBooking();
      customerInfo();
      // Now it has the correct values
    } else if (choice == "3") {
      running = false;
    } else {
      print("Invalid input, please select 1, 2, or 3.");
    }
  }
}

void availableCars() {
  print(" ");
  print("Toyota Corolla price per day: 5000rs");
  print("Honda Civic price per day: 8000rs");
  print("Toyota Prado price per day: 12000rs");
  print('');
}

void carBooking() {
  print(" ");
  print("Press 1 for Corolla (Available: $corolla)");
  print("Press 2 for Prado (Available: $prado)");
  print("Press 3 for Civic (Available: $civic)");
  print(" ");
  String? selectCar = stdin.readLineSync();

  print('Enter number of days required:');
  daysBooking = int.parse(stdin.readLineSync()!);

  if (selectCar == '1') {
    if (corolla > 0) {
      corolla -= 1;
      amountBooking = 5000 * daysBooking;
      selectRentCar = "Corolla";
      // billfunc();
    } else {
      print('No Corollas available.');
    }
  } else if (selectCar == '2') {
    if (prado > 0) {
      prado -= 1;
      amountBooking = 12000 * daysBooking;
      selectRentCar = "Prado";
      // billfunc();
    } else {
      print('No Prados available.');
    }
  } else if (selectCar == '3') {
    if (civic > 0) {
      civic -= 1;
      amountBooking = 8000 * daysBooking;
      selectRentCar = "Civic";
      // billfunc();
    } else {
      print('No Civics available.');
    }
  } else {
    print('Invalid selection.');
  }
}

//  void billprocess(){
//     print("****************************************************");
//     print("Customer Name: $customerName ");
//     print("Total Amount : $amountBooking");
//   }

List<Map<String, dynamic>> customerData = [];
String? name;
customerInfo() {
  print('Enter Your Name:');
  name = stdin.readLineSync();

  print('Enter Your Contact Number:');
  String? contactNumber = stdin.readLineSync();
  print('Enter Your CNIC Number:');
  String? cnic = stdin.readLineSync();
  print('Enter Your Address:');
  String? address = stdin.readLineSync();

  customer = {
    'Customer ID': generateUniqueId(),
    'Name': name,
    'Contact Number': contactNumber,
    'CNIC': cnic,
    'Address': address,
    'Days': daysBooking,
    'Car': selectRentCar,
    // 'Amount': amountBooking // Uncomment if you want to include the amount
  };

  customerData.addAll([customer!]);
  print(name.runtimeType);
  billfunc();
}

// deleteData() {
//   print('write id you want to delete data');
//   String? deleteinfo = stdin.readLineSync();

//   customerData.removeWhere((element) => !element['$deleteinfo']);
// }

// void deleteData() {
//   print('Write the ID you want to delete data for:');
//   String? deleteinfo = stdin.readLineSync();

//   if (deleteinfo != null && deleteinfo.isNotEmpty) {
//     customerData.removeWhere((element) => element['Customer ID'] == deleteinfo);
//     print('Data with ID $deleteinfo has been deleted.');
//   } else {
//     print('No ID provided. Please enter a valid ID.');
//   }
// }

billfunc() {
  print(" ");
  print("Thank you for Registration.");
  print("****************************************************");
  print("Bill Number $bill");
  print("Customer Name: $name ");
  print("Car Name: $selectRentCar");
  print("Days Of Booking:$daysBooking");
  print("Total Amount : $amountBooking");
  print("Thank you for Booking a Car");
  print(" ");
}

// Display customer data
customerDetails() {
  print("Customer Details");
  print(' ');
  for (var customer in customerData) {
    customer.forEach((key, value) {
      print('$key: $value');
    });
    print(''); // Adds an empty line for spacing between customers
  }
}

/// now starts admin function
class adminPanel {
  List adminNAme = ["123"];
  List adminPassword = ["123"];
  adminMain() {
    bool running = true;
    while (running) {
      print('Enter Admin Name');
      String? intadminName = stdin.readLineSync();
      print('Enter Password');
      String? intadminPassword = stdin.readLineSync();

      if (intadminPassword == adminPassword[0] &&
          intadminName == adminNAme[0]) {
        print(' ');
        print("welcome sir");
        print("press 1 for updated id and password of Admin");
        print("press 2 for check Customers Data ");
        print("press 3 for availables cars");
        print(' ');

        String? adminInput = stdin.readLineSync();
        if (adminInput == "1") {
          updateAdmin();
          print("admin id and password successfully updated");
          adminMain();
        } else if (adminInput == "2") {
          customerDetails();
        } else if (adminInput == "3") {
          availableCars();
        } else {
          print("you enter invalid input");
        }

        running = false;
      } else {
        print("you enter name or password is incorrect");
      }
    }
  }

  updateAdmin() {
    adminNAme.removeLast();
    adminPassword.removeLast();
    print('Updated Admin Id');
    String? upadminName = stdin.readLineSync();
    print('Update Password');
    String? upadminPassword = stdin.readLineSync();
    adminNAme.add(upadminName);
    adminPassword.add(upadminPassword);
  }
}
