import 'package:fanbase_piece/src/models/grid_card_option.dart';
import 'package:fanbase_piece/src/routes/app_routes.dart';

const DATA_GRID_HOME = {
  '1': GridCardOption(
    title: 'Personagens',
    image: 'assets/images/grid/character.png',
    route: AppRoutes.CHARACTERS,
  ),
  '2': GridCardOption(
    title: 'Cenários',
    image: 'assets/images/grid/scene.png',
    route: AppRoutes.HOME,
  ),
  '3': GridCardOption(
    title: 'Akuma no Mi',
    image: 'assets/images/grid/akuma_no_mi.png',
    route: AppRoutes.HOME,
  ),
  '4': GridCardOption(
    title: 'Armas',
    image: 'assets/images/grid/weapons.png',
    route: AppRoutes.HOME,
  ),
  '5': GridCardOption(
    title: 'Haki',
    image: 'assets/images/grid/haki.jpg',
    route: AppRoutes.HOME,
  ),
  '6': GridCardOption(
    title: 'Momentos Épicos',
    image: 'assets/images/grid/epic_moments.jpg',
    route: AppRoutes.HOME,
  ),
  '7': GridCardOption(
    title: 'História',
    image: 'assets/images/grid/history.png',
    route: AppRoutes.HOME,
  ),
  '8': GridCardOption(
    title: 'Sons',
    image: 'assets/images/grid/sound.png',
    route: AppRoutes.HOME,
  ),
};
