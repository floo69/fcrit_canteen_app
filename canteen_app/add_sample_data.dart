// Run this once to add sample data
// flutter run add_sample_data.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  await Firebase.initializeApp();
  
  final items = [
    {'name': 'Veg Thali', 'price': 60, 'category': 'Main Course', 'image': '🍛', 'isAvailable': true},
    {'name': 'Chicken Biryani', 'price': 80, 'category': 'Main Course', 'image': '🍗', 'isAvailable': true},
    {'name': 'Masala Dosa', 'price': 45, 'category': 'South Indian', 'image': '🥞', 'isAvailable': true},
    // ... add all items
  ];
  
  for (var item in items) {
    await FirebaseFirestore.instance.collection('menuItems').add(item);
  }
  
  print('Sample data added!');
}