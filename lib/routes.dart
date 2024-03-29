import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fidemlt/ui/screens/splash/index.dart';
import 'package:fidemlt/ui/screens/splash/splash_screen_1.dart';
import 'package:fidemlt/ui/screens/splash/splash_screen_2.dart';
import 'package:fidemlt/ui/screens/onboarding/onboard.dart';
import 'package:fidemlt/ui/screens/onboarding/onboard1.dart';
import 'package:fidemlt/ui/screens/onboarding/onboard2.dart';
import 'package:fidemlt/ui/screens/onboarding/onboard3.dart';

///sign in /////
import 'package:fidemlt/ui/screens/auth/signin/signin.dart';
import 'package:fidemlt/ui/screens/auth/signin/resetpassword/entercode.dart';
import 'package:fidemlt/ui/screens/auth/signin/resetpassword/enterphone.dart';
import 'package:fidemlt/ui/screens/auth/createnewpassword.dart';

//////signup///////////////////
import 'package:fidemlt/ui/screens/auth/signup/signup.dart';
import 'package:fidemlt/ui/screens/auth/signup/verifybvn.dart';
import 'package:fidemlt/ui/screens/auth/signup/finish.dart';
import 'package:fidemlt/ui/screens/auth/signup/verifyphone.dart';
import 'package:fidemlt/ui/screens/auth/signup/verifyemail/enteremail.dart';
import 'package:fidemlt/ui/screens/auth/signup/verifyemail/entercode.dart';
import 'package:fidemlt/ui/screens/auth/signup/setpassword/setapassword.dart';
import 'package:fidemlt/ui/screens/auth/signup/setpassword/enterpasswordsetagain.dart';

////home///
import 'package:fidemlt/ui/screens/home/index.dart';

//profile//
import 'package:fidemlt/ui/screens/profile/index.dart';
import 'package:fidemlt/ui/screens/profile/updateprofile.dart';
import 'package:fidemlt/ui/screens/profile/changepassword.dart';
import 'package:fidemlt/ui/screens/profile/managebankaccount/addbank/index.dart';
import 'package:fidemlt/ui/screens/profile/managebankaccount/addbank/addbank.dart';
import 'package:fidemlt/ui/screens/profile/managebankaccount/updatebankaccount.dart';
import 'package:fidemlt/ui/screens/profile/managebankaccount/managebank.dart';
import 'package:fidemlt/ui/screens/profile/help&support/index.dart';
import 'package:fidemlt/ui/screens/profile/help&support/callus.dart';
import 'package:fidemlt/ui/screens/profile/about/index.dart';
import 'package:fidemlt/ui/screens/profile/about/terms&conditon.dart';
import 'package:fidemlt/ui/screens/profile/deleteaccount.dart';

final GoRouter gorouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        // return const Splash();

        // return const Home();
        return const Profile();
        // return const ManageBankAccount();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'splash1',
          builder: (BuildContext context, GoRouterState state) {
            return const Splash1();
          },
        ),
        GoRoute(
          path: 'splash2',
          builder: (BuildContext context, GoRouterState state) {
            return const Splash2();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const Home();
          },
        ),
        GoRoute(
          path: 'profile',
          builder: (BuildContext context, GoRouterState state) {
            return const Profile();
          },
        ),
        GoRoute(
          path: 'updateprofile',
          builder: (BuildContext context, GoRouterState state) {
            return const UpDatePersonalProfile();
          },
        ),
        GoRoute(
          path: 'changepassword',
          builder: (BuildContext context, GoRouterState state) {
            return const ChangePassword();
          },
        ),
        GoRoute(
          path: 'nomanagebankaccount',
          builder: (BuildContext context, GoRouterState state) {
            return const NoManageBankAccount();
          },
        ),
        GoRoute(
          path: 'helpsupport',
          builder: (BuildContext context, GoRouterState state) {
            return const HelpAndSuport();
          },
        ),
        GoRoute(
          path: 'helpsupport/callus',
          builder: (BuildContext context, GoRouterState state) {
            return const CallUs();
          },
        ),
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return const About();
          },
        ),
        GoRoute(
          path: 'about/terms&conditions',
          builder: (BuildContext context, GoRouterState state) {
            return const TermsAndConditions();
          },
        ),
        GoRoute(
          path: 'deleteaccount',
          builder: (BuildContext context, GoRouterState state) {
            return const DeleteAccount();
          },
        ),
        GoRoute(
          path: 'managebankaccount/addbank',
          builder: (BuildContext context, GoRouterState state) {
            return const AddBank();
          },
        ),
        GoRoute(
          path: 'managebankaccount/updatebankaccount',
          builder: (BuildContext context, GoRouterState state) {
            return const UpdateBank();
          },
        ),
        GoRoute(
          path: 'managebankaccount',
          builder: (BuildContext context, GoRouterState state) {
            return const ManageBankAccount();
          },
        ),
        GoRoute(
          path: 'onboard',
          builder: (BuildContext context, GoRouterState state) {
            return const Onboard();
          },
        ),
        GoRoute(
          path: 'onboard1',
          builder: (BuildContext context, GoRouterState state) {
            return const Onboard1();
          },
        ),
        GoRoute(
          path: 'onboard2',
          builder: (BuildContext context, GoRouterState state) {
            return const Onboard2();
          },
        ),
        GoRoute(
          path: 'onboard3',
          builder: (BuildContext context, GoRouterState state) {
            return const Onboard3();
          },
        ),
        GoRoute(
          path: 'signin',
          builder: (BuildContext context, GoRouterState state) {
            return const SignIn();
          },
        ),
        GoRoute(
          path: 'resetpassword/enterphone',
          builder: (BuildContext context, GoRouterState state) {
            return const ResetPasswordEnterPhone();
          },
        ),
        GoRoute(
          path: 'resetpassword/entercode',
          builder: (BuildContext context, GoRouterState state) {
            return const ResetPasswordEnterCode();
          },
        ),
        GoRoute(
          path: 'createnewpassword',
          builder: (BuildContext context, GoRouterState state) {
            return const CreateNewPassword();
          },
        ),
        GoRoute(
          path: 'signup',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUp();
          },
        ),
        GoRoute(
          path: 'verifyphone',
          builder: (BuildContext context, GoRouterState state) {
            return const VerifyPhone();
          },
        ),
        GoRoute(
          path: 'verifyemail/enteremail',
          builder: (BuildContext context, GoRouterState state) {
            return const EnterEmailToVerify();
          },
        ),
        GoRoute(
          path: 'verifyemail/enteremailcode',
          builder: (BuildContext context, GoRouterState state) {
            return const VerifyEmailCode();
          },
        ),
        GoRoute(
          path: 'setpassword',
          builder: (BuildContext context, GoRouterState state) {
            return const SetPassword();
          },
        ),
        GoRoute(
          path: 'enterpasswordagain',
          builder: (BuildContext context, GoRouterState state) {
            return const EnterPasswordAgain();
          },
        ),
        GoRoute(
          path: 'verifybvn',
          builder: (BuildContext context, GoRouterState state) {
            return const BVNVerify();
          },
        ),
        GoRoute(
          path: 'finishsignup',
          builder: (BuildContext context, GoRouterState state) {
            return const FinishSignUp();
          },
        ),
      ],
    ),
  ],
);
