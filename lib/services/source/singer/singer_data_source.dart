import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../global/models/singer/singer.dart';

abstract class SingerRemoteDataSource {
  CollectionReference<Singer> getSingerRef();
  Future<Singer> getSingleSinger(String id);
}
