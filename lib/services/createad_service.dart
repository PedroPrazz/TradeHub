import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

createadService(category) async {
  await Firebase.initializeApp();
  var db = FirebaseFirestore.instance;
  db.collection('Anuncios').add(
    {
      'name': category,
    },
  );
}
