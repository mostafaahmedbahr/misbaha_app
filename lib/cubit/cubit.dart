 import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misbaha/cubit/states.dart';

class MisbahaBloc extends Cubit<MisbahaStates>
{
  MisbahaBloc() : super(MisbahaInitialState());

  static MisbahaBloc get(context)=>BlocProvider.of(context);

  int counter = 0;


  int roll = 0;
   int addRoll()
  {

    if(counter%33==0)
    {
      roll++;
    }
    return roll;
  }

  String name = "ألله أكبر";

  void addCount()
  {
    counter++;
    emit(ChangeCounterState());
  }

  void changeName1()
  {
    name = "ألله اكبر";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName2()
  {
    name = "   الحمد لله";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName3()
  {
    name = "سبحان الله";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName4()
  {
    name = "أستغفر الله";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName5()
  {
    name = "لا اله الا الله";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName6()
  {
    name = "لا حول ولا قوة الا بالله";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName7()
  {
    name = "سبحان الله وبحمده";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName8()
  {
    name = "سبحان الله وبحمده";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void changeName9()
  {
    name = "اللهم صلى على سيدنا محمد";
    roll=0;
    counter=0;
    emit(ChangeNameState());
  }

  void reset()
  {
    counter=0;
    name = "ألله اكبر";
    roll=0;
    emit(ResetCounterState());
  }


}