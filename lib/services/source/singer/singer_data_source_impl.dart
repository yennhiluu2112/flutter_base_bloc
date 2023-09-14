import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_base_firebase/global/models/singer/singer.dart';
import 'package:flutter_base_firebase/services/source/singer/singer_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SingerRemoteDataSource)
class SingerRemoteDataSourceImpl implements SingerRemoteDataSource {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  CollectionReference<Singer> getSingerRef() {
    return firestore.collection('singers').withSingerConverter();
  }

  @override
  Future<Singer> getSingleSinger(String id) async {
    final snapshot = await firestore
        .collection('singers')
        .withSingerConverter()
        .doc(id)
        .get();
    return snapshot.data()!;
  }
}
