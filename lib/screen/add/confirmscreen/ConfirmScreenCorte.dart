import 'package:barbershop2/classes/Estabelecimento.dart';
import 'package:barbershop2/rotas/Approutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmScreenCorte extends StatelessWidget {
  const ConfirmScreenCorte({super.key});

  @override
  Widget build(BuildContext context) {
    final widhtScreen = MediaQuery.of(context).size.width;
    final heighScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: widhtScreen,
        height: heighScreen,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.black.withOpacity(1)),
                width: widhtScreen,
                height: heighScreen,
                child: Image.asset(
                  opacity: AlwaysStoppedAnimation<double>(0.35),
                  "imagesOfApp/bannerIn2itital.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black.withOpacity(0.75)),
                    padding: EdgeInsets.all(25),
                    child: Icon(
                      Icons.done,
                      size: 42,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Agendamento realizado \n com sucesso!",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed(AppRoutesApp.HomeScreen01);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: widhtScreen * 0.8,
                      padding: EdgeInsets.symmetric(vertical: 27),
                      decoration: BoxDecoration(
                        color: Colors.black87.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Página inicial",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
