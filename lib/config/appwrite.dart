import 'package:appwrite/appwrite.dart';

class AppWrite {
  static const projectId = '67c9458e0039137f5943';
  static const endpointId = 'https://cloud.appwrite.io/v1';
  static const databaseId = '67b82e660031e912041f';
  static const collectionUsers = '67b82ed500291a8139b4';
  static const collectionWorkers = '67b82f5b0004b3dae6c3';
  static const collectionBooking = '67b82f760022a58b880f';
  static const bucketWorker = '67b8a35d000b729368a3';

  static Client client = Client();
  static late Account account;
  static late Databases databases;

  static init() {
    client
        .setEndpoint(endpointId)
        .setProject(projectId)
        .setSelfSigned(status: true);
    account = Account(client);
    databases = Databases(client);
  }

  String imageURL(String fileId) {
    return '$endpointId/buckets/$bucketWorker/files/$fileId/view?project=$projectId';
  }
}
