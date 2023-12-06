import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'firebase_usermodel.dart';
import 'package:agora/inicio_sesion/inicio_sesion.dart';
import 'package:agora/inicio_general/inicio_general.dart';

class Wrapper extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    
    final user =  Provider.of<FirebaseUser?>(context);
    
     if(user == null)
     {
       return InicioSesion();
     }else
     {
       return InicioMapa();
     }

  }
} 