import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruit_hub/core/services/database_service.dart';

class FirebaseFirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? id}) async {
    if (id != null) {
      await FirebaseFirestore.instance.collection(path).doc(id).set(data);
    } else {
      await FirebaseFirestore.instance.collection(path).add(data);
    }
  }

  @override
  Future<dynamic> getData({required String path, String? id}) async {
    if (id != null) {
      var result =
          await FirebaseFirestore.instance.collection(path).doc(id).get();

      return result.data();
    } else {
      var result = await FirebaseFirestore.instance.collection(path).get();
      return result.docs.map((e) => e.data()).toList();
    }
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String id}) async {
    var result =
        await FirebaseFirestore.instance.collection(path).doc(id).get();
    return result.exists;
  }
}
