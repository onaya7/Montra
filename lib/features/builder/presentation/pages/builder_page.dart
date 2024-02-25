import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra/core/constants/color_constants.dart';
import 'package:montra/core/constants/image_path_constants.dart';
import 'package:montra/features/auth/provider/auth_provider.dart';
import 'package:montra/features/budget/presentation/pages/budget_page.dart';
import 'package:montra/features/home/presentation/pages/home_page.dart';
import 'package:montra/features/profile/presentation/pages/profile_page.dart';
import 'package:montra/features/transaction/presentation/pages/transaction_page.dart';
import 'package:provider/provider.dart';

class BuilderPage extends StatelessWidget {
  const BuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final builderProvider = Provider.of<AuthProvider>(context);
    Widget buildBody() {
      switch (builderProvider.isSelected) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const BudgetPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: ColorConstants.lightColor80,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: ColorConstants.lightColor80,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        backgroundColor: Colors.black,
        selectedLabelStyle: const TextStyle(
            color: Colors.pink, fontSize: 10, fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(
            color: Colors.pink, fontSize: 10, fontWeight: FontWeight.w500),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.red), // Add color here
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business, color: Colors.green), // Add color here
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.blue), // Add color here
            label: 'School',
          ),
      
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.purple), // Add color here
            label: 'Profile',
          ),
        ],
        currentIndex: builderProvider.isSelected,
        onTap: (index) {
          builderProvider.select(index);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorConstants.violetColor100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: SvgPicture.asset(ImagePathConstants.add,
            fit: BoxFit.contain,
            height: 40,
            width: 40,
            colorFilter: const ColorFilter.mode(
                ColorConstants.lightColor80, BlendMode.srcIn)),
      ),
    );
  }

  void onPressed() {
    debugPrint(' button pressed');
  }
}





// BottomAppBar(
          
//             height: 75,
//             padding: const EdgeInsets.only(top: 11, bottom: 11),
//             color: ColorConstants.lightColor80,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     GestureDetector(
//                         onTap: onPressed,
//                         child: SvgPicture.asset(ImagePathConstants.home,
//                             fit: BoxFit.contain,
//                             height: 32,
//                             width: 32,
//                             colorFilter: const ColorFilter.mode(
//                                 ColorConstants.iconColor, BlendMode.srcIn))),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     const Text(
//                       TextConstants.home,
//                       style: TextStyle(
//                           color: ColorConstants.iconColor,
//                           fontSize: 10,
//                           fontWeight: FontWeight.w500),
//                     )
//                   ],
//                 ),
//               ],
//             ))


//  BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.home,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.home,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.home,
            
//           ),

//            BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.transaction,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.transaction,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.transaction,
//           ),

//            BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.budget,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.budget,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.budget,
//           ),

//            BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.profile,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.profile,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.profile,
//           ),



// BottomNavigationBar(
//         backgroundColor: ColorConstants.lightColor80,
//         selectedLabelStyle: const TextStyle(
//             color: ColorConstants.iconColor,
//             fontSize: 10,
//             fontWeight: FontWeight.w500),
//         unselectedLabelStyle: const TextStyle(
//             color: ColorConstants.iconColor,
//             fontSize: 10,
//             fontWeight: FontWeight.w500),
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.home,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.home,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.home,
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.transaction,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.transaction,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.transaction,
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.budget,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.budget,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.budget,
//           ),
//           BottomNavigationBarItem(
//             icon: SvgPicture.asset(ImagePathConstants.profile,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.iconColor, BlendMode.srcIn)),
//             activeIcon: SvgPicture.asset(ImagePathConstants.profile,
//                 fit: BoxFit.contain,
//                 height: 32,
//                 width: 32,
//                 colorFilter: const ColorFilter.mode(
//                     ColorConstants.violetColor100, BlendMode.srcIn)),
//             label: TextConstants.profile,
//           ),
//         ],
//         currentIndex: builderProvider.isSelected,
//         onTap: (index) {
//           builderProvider.select(index);
//         },
//       )