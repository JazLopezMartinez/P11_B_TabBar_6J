import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Ejemplo TabBar",
        theme: ThemeData(
          primarySwatch: Colors.cyan,
        ),
        home: MiPaginaInicial());
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Lopez TabBar"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Flores",
                icon: Icon(Icons.local_florist_outlined),
              ),
              Tab(
                text: "Arreg.",
                icon: Icon(Icons.grass_sharp),
              ),
              Tab(
                text: "Temp.",
                icon: Icon(Icons.filter_vintage_rounded),
              ),
              Tab(
                text: "Conf.",
                icon: Icon(Icons.settings_outlined),
              ),
              Tab(
                text: "Us",
                icon: Icon(Icons.person_outline_rounded),
              ),
            ] //Texto icono
                ),
          ),
          body: TabBarView(children: const <Widget>[
            Center(
                child: Icon(Icons.local_florist_outlined,
                    size: 350, color: Color(0xffb47ae8))),
            Center(
                child: Icon(Icons.grass_sharp,
                    size: 350, color: Color(0xff59b760))),
            Center(
                child: Icon(Icons.filter_vintage_rounded,
                    size: 350, color: Color(0xffe87ac7))),
            Center(
                child: Icon(Icons.settings_outlined,
                    size: 350, color: Color(0xff3eb8c8))),
            Center(
                child: Icon(Icons.person_outline_rounded,
                    size: 350, color: Color(0xff5789e5))),
          ]),
        ));
  }
}
