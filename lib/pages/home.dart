import 'package:appia/pages/constants.dart';
import 'package:appia/pages/moddetails/modelo1.dart';
import 'package:appia/pages/moddetails/modelo2.dart';
import 'package:appia/pages/moddetails/modelo3.dart';
import 'package:appia/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../util/models_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final userInfo = user.email!;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text(
                  'Logueado: ' + user.email!,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('Cerrar sesión'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                },
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
              height: size.height * 0.2,
              child: LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.only(
                              left: kDefaultPadding,
                              right: kDefaultPadding,
                              bottom: 20 + kDefaultPadding,
                            ),
                            height: size.height * 0.2 - 27,
                            decoration: const BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                                bottomRight: Radius.circular(36),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  'Bienvenido a \n BrainBits!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Image.asset("assets/images/logo.png")
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              padding: EdgeInsets.symmetric(
                                  horizontal: kDefaultPadding),
                              height: 54,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 10),
                                    blurRadius: 50,
                                    color: kPrimaryColor.withOpacity(0.23),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: TextField(
                                      enabled: false,
                                      onChanged: (value) {},
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        hintStyle: TextStyle(
                                          color: kPrimaryColor.withOpacity(0.5),
                                        ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset("assets/icons/search.svg"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Text(
              'Modelos de NN para probar: ',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 31,
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mod1()));
                  },
                  child: ModelTile(
                    ImagePath: 'assets/images/model1.jpg',
                    Name: 'Hiragana vs Katakana',
                    Des:
                        'Modelo entrenado para el reconocimiento entre los alfabetos japoneses: Hiragana y Katakana',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mod2()));
                  },
                  child: ModelTile(
                    ImagePath: 'assets/images/model2.jpg',
                    Name: 'Perros vs Gatos',
                    Des:
                        'Modelo entrenado para el reconocimiento de entre perros y gatos',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mod3()));
                  },
                  child: ModelTile(
                    ImagePath: 'assets/images/model3.jpg',
                    Name: 'Identificador de frutas',
                    Des: 'Modelo que precide la fruta que está viendo.',
                  ),
                )
              ],
            )),
          ],
        ));
  }
}
