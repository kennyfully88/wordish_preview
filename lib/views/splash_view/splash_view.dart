import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:wordish/enums/app_views.dart';
import 'package:wordish/providers/navigation_logic.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 3000), () {
      context.read<NavigationLogic>().setAppView(AppViews.main);
    });

    return Container(
      color: const Color(0xFF1B2336),
      child: Center(
        child: SvgPicture.string(
          '''
<svg
  viewBox="0 0 320 320"
>

<path
   style="fill:#00ffff"
   d="m 28.508785,85.189456 11.960937,89.824214 h 6.089845 l 9.5625,-68.44141 c 0.409993,-2.90023 0.850772,-6.41142 1.322265,-10.537105 0.143497,1.30715 0.614575,4.818345 1.414063,10.537105 l 9.501952,68.44141 h 5.750001 l 12.36133,-89.824214 h -5.996095 l -7.072266,57.718744 c -0.922487,7.3527 -1.670153,13.867 -2.244144,19.54492 -0.717487,-9.92614 -1.886382,-20.52664 -3.505857,-31.80078 l -6.457031,-45.462884 h -7.195312 l -8.580079,60.660154 c -0.204996,1.47054 -0.881315,7.00416 -2.029296,16.60351 -0.532992,-6.0864 -1.168262,-12.21276 -1.90625,-18.38086 l -6.857422,-58.882804 z m 138.496085,0 v 32.228514 c -0.96348,-2.65515 -2.21447,-4.79966 -3.75195,-6.4336 -1.53747,-1.67478 -3.28984,-2.51172 -5.25781,-2.51172 -2.68546,0 -5.11415,1.40998 -7.28711,4.22852 -2.17296,2.81853 -3.80415,6.88307 -4.89062,12.19336 -1.08649,5.26943 -1.62891,11.1516 -1.62891,17.64648 0,6.65828 0.59422,12.56015 1.7832,17.70704 1.20948,5.10603 2.90125,9.08788 5.07422,11.94726 2.19347,2.85938 4.59185,4.28906 7.19531,4.28906 4.01793,0 7.06235,-3.22565 9.13281,-9.67969 v 8.20899 h 5.13477 v -89.824214 z m 69.50391,0 a 16,16.000001 0 0 0 -16,15.999994 16,16.000001 0 0 0 16,16 16,16.000001 0 0 0 16,-16 16,16.000001 0 0 0 -16,-15.999994 z m -133.06445,23.283194 c -4.038435,0 -7.461075,2.41037 -10.269535,7.23047 -3.361939,5.80047 -5.042966,14.72513 -5.042966,26.77539 0,10.98821 1.404442,19.40284 4.212896,25.24414 2.82895,5.84131 6.52818,8.76172 11.099605,8.76172 2.84945,0 5.47458,-1.32728 7.87305,-3.98242 2.41896,-2.65514 4.25342,-6.37113 5.5039,-11.15039 1.27098,-4.8201 1.90625,-11.41711 1.90625,-19.79102 0,-10.33463 -1.42398,-18.42431 -4.27344,-24.26562 -2.84945,-5.88216 -6.52034,-8.82227 -11.00976,-8.82227 z m 33.76367,0 c -1.29148,0 -2.47993,0.73454 -3.56641,2.20508 -1.06598,1.47054 -2.23488,4.515 -3.50586,9.13086 v -9.86523 h -4.98046 v 65.07031 h 5.5332 v -34.06641 c 0,-4.65671 0.30884,-8.94574 0.92383,-12.86718 0.40999,-2.57345 1.09706,-4.57617 2.06054,-6.00586 0.96348,-1.47054 2.04833,-2.20508 3.25781,-2.20508 1.35299,0 2.70758,0.79754 4.06055,2.39062 l 1.90626,-10.23437 c -1.92697,-2.36921 -3.82399,-3.55274 -5.68946,-3.55274 z m -33.76367,9.12891 c 2.72645,0 5.00365,2.08347 6.82812,6.25 1.84497,4.12568 2.76758,10.21264 2.76758,18.25977 0,8.5373 -0.91381,14.88816 -2.73828,19.05469 -1.82447,4.16652 -4.11047,6.25 -6.85742,6.25 -2.76746,0 -5.062245,-2.06182 -6.886715,-6.18751 -1.82447,-4.16653 -2.73633,-10.41694 -2.73633,-18.75 0,-8.33306 0.91186,-14.56181 2.73633,-18.6875 1.82447,-4.12568 4.119255,-6.18945 6.886715,-6.18945 z m 55.07422,0 c 2.52145,0 4.64326,2.08347 6.36523,6.25 1.72197,4.16653 2.58203,10.70248 2.58203,19.60742 0,8.08798 -0.85126,14.11389 -2.55273,18.07617 -1.68098,3.92145 -3.72948,5.88087 -6.14844,5.88087 -2.39846,0 -4.47921,-2.06182 -6.24219,-6.18751 -1.76297,-4.12568 -2.64453,-10.35444 -2.64453,-18.6875 0,-8.619 0.81901,-14.93045 2.45898,-18.93359 1.66048,-4.00314 3.72168,-6.00586 6.18165,-6.00586 z m 40.70117,15.58789 c -9.80224,0 -17.69336,7.89112 -17.69336,17.69336 0,9.80224 7.89112,17.69337 17.69336,17.69337 h 74.57813 c 9.80223,0 17.69336,-7.89113 17.69336,-17.69337 0,-9.80224 -7.89113,-17.69336 -17.69336,-17.69336 z m -41.82618,51.38671 v 6.97852 h 10.30274 v -6.97852 z m 84.58985,0 v 49.42384 h 10.30273 v -19.5879 c 0,-2.80946 0.57214,-5.01163 1.7168,-6.60742 1.14466,-1.59578 3.0518,-2.85388 5.72266,-3.77539 2.70901,-0.94398 5.59016,-1.41601 8.64258,-1.41601 4.0826,0 7.23036,0.69635 9.44335,2.08984 2.25117,1.37103 3.37696,3.57319 3.37696,6.60743 v 22.68945 h 10.30274 v -22.68945 c 0,-3.50622 -0.72588,-6.18043 -2.17579,-8.02344 -1.41174,-1.84302 -3.7762,-3.28057 -7.0957,-4.31446 -3.3195,-1.05636 -7.23207,-1.58593 -11.73438,-1.58593 -7.32579,0 -13.39166,1.6404 -18.19922,4.92187 v -17.73243 z m -188.197261,12.4375 c -9.802238,0 -17.693359,7.89113 -17.693359,17.69337 0,9.80224 7.891121,17.69336 17.693359,17.69336 h 74.576171 c 9.80223,0 17.69336,-7.89112 17.69336,-17.69336 0,-9.80224 -7.89113,-17.69337 -17.69336,-17.69337 z m 149.566401,0.37306 c -3.16688,0 -6.14436,0.24771 -8.92969,0.74218 -2.74717,0.472 -4.92092,1.05716 -6.52343,1.75391 -2.1367,0.89902 -3.83463,2.03328 -5.09376,3.4043 -1.22096,1.34854 -1.83202,2.82024 -1.83202,4.41602 0,1.7531 0.74437,3.36133 2.23242,4.82226 1.5262,1.43845 3.73888,2.57269 6.63866,3.4043 2.93795,0.80912 8.18552,1.77659 15.74024,2.90039 5.60881,0.8316 9.11756,1.51722 10.5293,2.05664 2.02222,0.78664 3.0332,1.8653 3.0332,3.23632 0,1.52836 -1.14428,2.86546 -3.43359,4.01173 -2.28931,1.12378 -5.80001,1.68554 -10.53125,1.68554 -4.69308,0 -8.35558,-0.64075 -10.98829,-1.92187 -2.59454,-1.28112 -4.17767,-3.1244 -4.74999,-5.52931 l -10.18751,0.94336 c 1.14466,3.79841 3.77768,6.66475 7.89844,8.59766 4.15891,1.93292 10.18782,2.90039 18.08594,2.90039 4.7694,0 9.04295,-0.4847 12.82031,-1.45117 3.77736,-0.98893 6.65656,-2.3709 8.64063,-4.14649 2.02222,-1.79806 3.03516,-3.70764 3.03516,-5.73046 0,-2.06777 -0.82027,-3.79986 -2.46094,-5.19336 -1.64067,-1.39351 -3.91271,-2.44874 -6.8125,-3.16797 -2.86164,-0.7417 -7.93502,-1.68577 -15.22266,-2.83203 -5.03648,-0.80912 -8.06942,-1.32602 -9.09961,-1.55078 -1.79329,-0.42704 -3.10981,-0.96735 -3.94922,-1.61914 -0.83941,-0.62932 -1.25976,-1.3364 -1.25976,-2.12304 0,-1.23618 1.01098,-2.31483 3.0332,-3.23634 2.02222,-0.92151 5.39962,-1.38281 10.13086,-1.38281 4.00629,0 7.09664,0.51689 9.27148,1.55078 2.213,1.03389 3.548,2.47339 4.00586,4.31641 l 10.07227,-0.81054 c -0.64864,-2.31501 -1.8299,-4.15829 -3.54688,-5.52931 -1.71697,-1.3935 -4.38893,-2.49361 -8.01366,-3.30272 -3.58659,-0.80914 -7.76381,-1.21485 -12.53321,-1.21485 z m -45.95899,0.81055 v 35.80273 h 10.30274 v -35.80273 z"
/>
 
</svg>''',
          width: 128.0,
        ),
      ),
    );
  }
}