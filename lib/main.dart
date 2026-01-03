import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/cubits/notes/notes_cubit.dart';
import 'package:noteapp/simpleBlocObserver.dart';
import 'package:noteapp/view/screens/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubits/addNoteCubit/add_note_cubit.dart';
import 'constants.dart';
import 'models/noteModel.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: "Poppins",
          scaffoldBackgroundColor: Colors.grey.shade800,
        ),
       routes: {
         HomeScreen.id:(context)=>const HomeScreen(),
       },
        initialRoute: HomeScreen.id,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

