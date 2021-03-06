import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:misbaha/Screens/the_remembrance.dart';
import 'package:misbaha/cubit/cubit.dart';
import 'package:misbaha/cubit/states.dart';
class Misbaha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  BlocConsumer<MisbahaBloc,MisbahaStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = MisbahaBloc.get(context);
        return  Scaffold(
          appBar: AppBar(
            title: const Text("Misbaha"),
            centerTitle: true,
            elevation: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/ms2.jpg"),
                    fit: BoxFit.cover,
                  )
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ms2.jpg"),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children:  [
                const SizedBox(height: 160,),
                Text(cubit.name.toString(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.teal,
                          blurRadius: 2.2,
                          offset: Offset(2, 2),
                        ),
                      ]
                  ),),
                const SizedBox(height: 20,),
                Container(
                  padding:  const EdgeInsets.only(
                      right: 30,
                      left: 20,
                      top: 5,
                      bottom: 5
                  ),
                  child: const Text(" ?????? ??????????????????",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Text(cubit.counter.toString(),
                  style:const TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.teal,
                          blurRadius: 2.2,
                          offset: Offset(2, 2),
                        ),
                      ]
                  ),),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: (){
                      cubit.addCount();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shadowColor: Colors.teal,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(
                          color: Colors.teal,
                          width: 5,
                        ),
                      ),
                    ),
                    child: const Text("??????????",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.teal,
                      ),),

                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Text("???????????? ?????? : ${cubit.addRoll()}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    TextButton(
                      onPressed: (){
                          Navigator.push(context,MaterialPageRoute(
                            builder: (context)=>Aldhikr(
                            ),
                          ),
                          );
                      },
                      child:  const Text("??????????",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    TextButton(
                      onPressed: (){
                        cubit.reset();
                      },
                      child:  const Text("?????????? ???? ????????",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),

                  ],
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}
