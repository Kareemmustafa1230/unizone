import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:unizone/Splash/Splash1.dart';
import 'HomeScreen/Home/ShowAddTaskBottom.dart';
import 'HomeScreen/HomeScreen.dart';
import 'HomeScreen/Menu-Book/Comments/Comments.dart';
import 'HomeScreen/Menu-Book/ItemContent.dart';
import 'HomeScreen/Menu-Book/Likes/Likes.dart';
import 'HomeScreen/Menu-Book/details-Item-Menu-Book.dart';
import 'HomeScreen/Search/Search.dart';
import 'Log in/Code Flrget Password.dart';
import 'Log in/Forget password.dart';
import 'Log in/New Password.dart';
import 'Log in/Sign in.dart';
import 'My-Bloc.dart';
//import 'SharedPreference.dart';
import 'Sign up/Sign up.dart';
import 'Splash/Splash2.dart';
import 'Splash/Splash3.dart';
import 'Splash/SplashScreen.dart';
import 'Language/language.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  //await SharedPreferenceUtils.init();
  //await DioFinalHelper.init();
  //token = SharedPreferenceUtils.getData(key: 'token') as String?;
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  const Size(414,857),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          initialRoute:  HomeScreen.routeName,
          routes:  {
            SplashScreen.routeName : (context) => const SplashScreen(),
            Splash1.routeName : (context) => const Splash1(),
            Splash2.routeName : (context) => const Splash2(),
            Splash3.routeName : (context) => const Splash3(),
            SignIn.routeName : (context) => const SignIn(),
            SignUp.routeName : (context) => SignUp(),
            ForgetPassword.routeName : (context) => ForgetPassword(),
            CodeForgetPassword.routeName : (context) => const CodeForgetPassword(),
            NewPassword.routeName : (context) => NewPassword(),
            HomeScreen.routeName : (context) => const HomeScreen(),
            DetailsItemMenuBook.routeName : (context) => const DetailsItemMenuBook(),
            ItemContent.routeName : (context) => const ItemContent(),
            Likes.routeName : (context) => const Likes(),
            Comments.routeName : (context) => const Comments(),
            ShowAddTaskBottom.routeName : (context) =>const ShowAddTaskBottom(),
            Search.routeName : (context) => const Search(),
            Language.routeName : (context) => const Language(),
          },
          title: 'unizone',
          debugShowCheckedModeBanner: false,
          home: const Splash1() ,
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/blog_model.dart';
import '../../../data/repos/blog_repo.dart';


part 'get_blogs_by_id_state.dart';

class GetBlogsByIdCubit extends Cubit<GetBlogsByIdState> {
  GetBlogsByIdCubit(this.blogRepo) : super(GetBlogsByIdInitial());
  static GetBlogsByIdCubit get(context) => BlocProvider.of(context);
  BlogRepo? blogRepo;
  Future<void> getBlogsById({required String id}) async {
    emit(UserGetBlogsByIdLoadingState());
    var result = await blogRepo!.getBlogsById(id: id);
    return result.fold((failure) {
      emit(UserGetBlogsByIdErrorState(failure.errMessage));
      return  print("tgfgh");
    }, (data) {
      emit(UserGetBlogsByIdSuccessState(data));
    });
  }
}

