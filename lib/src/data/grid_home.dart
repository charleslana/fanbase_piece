import 'package:fanbase_piece/src/models/grid_card_home_option.dart';
import 'package:fanbase_piece/src/routes/app_routes.dart';

const DATA_GRID_HOME = {
  '1': GridCardHomeOption(
    title: 'Personagens',
    image: 'assets/images/grid/characters.png',
    route: AppRoutes.CHARACTERS,
  ),
  '2': GridCardHomeOption(
    title: 'Cenários',
    image: 'assets/images/grid/scenes.png',
    route: AppRoutes.HOME,
  ),
  '3': GridCardHomeOption(
    title: 'Akuma no Mi',
    image: 'assets/images/grid/akuma_no_mi.png',
    route: AppRoutes.HOME,
  ),
  '4': GridCardHomeOption(
    title: 'Itens',
    image: 'assets/images/grid/items.png',
    route: AppRoutes.HOME,
  ),
  '5': GridCardHomeOption(
    title: 'Haki',
    image: 'assets/images/grid/haki.png',
    route: AppRoutes.HOME,
  ),
  '6': GridCardHomeOption(
    title: 'Momentos Épicos',
    image: 'assets/images/grid/epic_moments.png',
    route: AppRoutes.HOME,
  ),
  '7': GridCardHomeOption(
    title: 'História',
    image: 'assets/images/grid/history.png',
    route: AppRoutes.HOME,
  ),
};
