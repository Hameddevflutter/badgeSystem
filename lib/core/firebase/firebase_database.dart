class FirebaseDatabase {
  FirebaseDatabase database = FirebaseDatabase().database;
  Future<void> readData() async {
    database.readData();
  }
}
