import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:moviedb_org/core/network/network_manager.dart';
import 'package:moviedb_org/models/movies_model.dart';

class DetailsPageController extends GetxController {
  Movie? movie;
  bool isLoading = false;

  DetailsPageController({required int movieId}) {
    movTopDetails(movieId);
  }

  Future<void> movTopDetails(int movieId) async {
    isLoading = true;
    update();
    var response = await NetworkManager.instance.getRequest(
      '/3/movie/$movieId',
      queryParam: {'language': 'en-US'},
      model: Movie(),
    );
    movie = response;
    isLoading = false;
    update();
  }
}
