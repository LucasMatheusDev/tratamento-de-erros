import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_api_convertaddress/responsive.dart';

void main() {
  FlutterError.onError = ((FlutterErrorDetails details) {
    FlutterError.presentError(details);

    //*ALGUMAS FORMATAÇÕES PARA TRAZER O ERRO DE FORMA LIMPA
    String libraryError = details.library.toString().replaceAll(" ", "");

    String errorFormatted =
        details.exceptionAsString().split(".").first.replaceAll(" ", "+");

    //* RESULTADO FORMATADO
    String urlGoogle = "https://www.google.com/search?q=$errorFormatted";

    //! AQUI É O LOG AJUDA
    log("Ajudinha ERRO LIBRARY  https://www.google.com/search?q=$libraryError");
    //! AQUI A ORIGEM DO PROBLEMA
    log("AJUDINHA : $urlGoogle");
  });

  //* FUNÇÃO DO FLUTTER RESPONSÁVEL POR TRATAR ERROS DE WIDGETS
  ErrorWidget.builder = ((FlutterErrorDetails details) {
    return Material(
      child: Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "DEU RUIM, mas fica tranquilo somos amigos agora eu já coloquei no log o caminho pra resposta",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ],
        ),
      ),
    );
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ResponsiveLayout(
        smartPhone: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                  // color: Colors.black,
                  ),
              color: Colors.black,
            )
          ],
        ),
        tablet: Container(),
        web: Container(),
      ),
    );
  }
}

// @override
// Widget customGrid(BuildContext context, {int columns = 2}) {
//   return GridView.builder(
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: columns, crossAxisSpacing: 10, mainAxisSpacing: 10),
//     itemCount: 4,
//     itemBuilder: (BuildContext context, int index) {
//       return Container(
//         height: 100,
//         width: 100,
//         color: index % 2 == 0 ? Colors.black : Colors.red,
//       );
//     },
//   );
// }

// class PageError extends StatelessWidget {
//   const PageError({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         child: Container(
//       color: Colors.green,
//       height: double.infinity,
//       width: double.infinity,
//       child: const Center(child: Text("Deu ruim")),
//     ));
//   }
// }
