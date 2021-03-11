import 'package:flutter/material.dart';

class MeuMenu extends StatefulWidget {
  @override
  _MeuMenuState createState() => _MeuMenuState();
}

class _MeuMenuState extends State<MeuMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  floating: true,
                  expandedHeight: 200.0,
                  flexibleSpace: FlexibleSpaceBar(),
                  title: Text('slive'),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 20,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'HOME',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            Container(
              child: FlatButton(
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Mensagens'),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Telefone'),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Configuração'),
                ),
              ),
            ),
            Container(
              child: FlatButton(
                onPressed: () {},
                child: ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Ajuda'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
