import 'package:class12/src/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}




// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Dropdown Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const DropdownExample(),
//     );
//   }
// }

// class DropdownExample extends StatefulWidget {
//   const DropdownExample({super.key});

//   @override
//   State<DropdownExample> createState() => _DropdownExampleState();
// }

// class _DropdownExampleState extends State<DropdownExample> {
//   // Default selected country
//   String selectedCountry = 'Bangladesh';

//   // Dropdown items
//   final List<String> countries = [
//     'Bangladesh',
//     'India',
//     'Pakistan',
//     'Nepal',
//     'Japan',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dropdown Menu'),
//         backgroundColor: Colors.blue,
//         foregroundColor: Colors.white,
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // Dropdown Menu
//               DropdownButton<String>(
//                 value: selectedCountry,
//                 hint: const Text('Select Country'),
//                 isExpanded: true,
//                 icon: const Icon(Icons.arrow_drop_down),

//                 // Dropdown items
//                 items: countries.map((String country) {
//                   return DropdownMenuItem<String>(
//                     value: country,
//                     child: Text(country),
//                   );
//                 }).toList(),

//                 // Update selected country
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     selectedCountry = newValue!;
//                   });
//                 },
//               ),

//               const SizedBox(height: 20),

//               // Display selected country
//               Text(
//                 'Selected Country: $selectedCountry',
//                 style: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
