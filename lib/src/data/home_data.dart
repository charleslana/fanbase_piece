import 'package:fanbase_piece/src/models/home_model.dart';
import 'package:fanbase_piece/src/routes/app_routes.dart';

const HOME_DATA = {
  '1': HomeModel(
    title: 'Personagens',
    image: 'assets/images/grid/characters.png',
    route: AppRoutes.CHARACTERS,
  ),
  '2': HomeModel(
    title: 'Cenários',
    image: 'assets/images/grid/scenes.png',
    route: AppRoutes.HOME,
  ),
  '3': HomeModel(
    title: 'Akuma no Mi',
    image: 'assets/images/grid/akuma_no_mi.png',
    route: AppRoutes.HOME,
  ),
  '4': HomeModel(
    title: 'Itens',
    image: 'assets/images/grid/items.png',
    route: AppRoutes.HOME,
  ),
  '5': HomeModel(
    title: 'Haki',
    image: 'assets/images/grid/haki.png',
    route: AppRoutes.HOME,
  ),
  '6': HomeModel(
    title: 'Tripulações',
    image: 'assets/images/grid/crew.png',
    route: AppRoutes.HOME,
  ),
  '7': HomeModel(
    title: 'História',
    image: 'assets/images/grid/history.png',
    route: AppRoutes.HOME,
  ),
};
