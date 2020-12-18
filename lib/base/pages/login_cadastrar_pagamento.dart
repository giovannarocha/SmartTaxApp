import 'package:consultax/utils/myColors.dart';
import 'package:consultax/widgets/MyButton.dart';
import 'package:consultax/widgets/myLabel.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      appBar: AppBar(
        title: Text("Pagamento"),
        backgroundColor: MyColors.myDefaultBlue,
      ),
      body: Column(
        children: [
          carrouselPendencias(),
          MyLabel("Precisa de processamento de meses anteriores?"),

        ],
      ),
      
      


      
    );
  }

  
}

class carrouselPendencias extends StatefulWidget {
  @override
  _carrouselPendenciasState createState() => _carrouselPendenciasState();
}

class _carrouselPendenciasState extends State<carrouselPendencias> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          itemCount: 3,
          itemBuilder: (context, index) => PendenciasCard(),
        ),
      ),
    );
  }
}

class PendenciasCard extends StatelessWidget {
  final Pendencia pendencia;

  const PendenciasCard({Key key, this.pendencia}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 11, right: 11),
            width: size.width * 0.8,
            padding: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                color: Color(
                  0xffe6e6e6,
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      blurRadius: 6,
                      offset: Offset(1, 1))
                ]),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                  ),
                ),
                Center(
                  child: MyLabel("Mercado Brasil I", cor: MyColors.myDefaultBlue, size: 35, isBold: true,)
                ),
                const Divider(
                  color: Color(0xff979797),
                  thickness: 1,
                  height: 30.0,
                ),
                MyLabel("Recomendado pra você", cor: MyColors.myDefaultOrange,),
                SizedBox(height: 15,),
                MyLabel("Plano mensal", cor: Colors.black,),
                MyLabel("R\$30,00", cor: MyColors.myDefaultBlue, size: 40, isBold: true,),
                SizedBox(height: 55,),
                MyButton("Continuar", (){}),
                SizedBox(height: 55,),
                MyLabel("Responsável por toda gestão tributária e contábil:", cor: Colors.black,),
                MyLabel("Cliente", cor: MyColors.myDefaultOrange, size: 30, isBold: true,),
                SizedBox(
                  height: 30,
                ),
                
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
        )
      ],
    );
  }
}

class Pendencia {}
