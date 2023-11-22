import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({required this.nameController, super.key});

  final TextEditingController nameController;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String text = "Hello World!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Perfil",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
            child: Column(
              children: [
                Text(
                  "Nome de usuário:",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                TextField(
                  controller: widget.nameController,
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print("Acao do botao");
                if (widget.nameController.text == '') {
                  print("executou o if");
                  showDialog(
                      context: context,
                      builder: (_) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.height * 0.2,
                          child: Center(
                            child: Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "* O nome é obrigatório *",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      });

                  return;
                } else {

                }
              },
              child: Text('Concluir'))
        ],
      ),
    );
  }
}
