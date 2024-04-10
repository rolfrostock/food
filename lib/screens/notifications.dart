import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddCategoryForm extends StatefulWidget {
  const AddCategoryForm({Key? key}) : super(key: key);
  @override
  _AddCategoryFormState createState() => _AddCategoryFormState();
}

class _AddCategoryFormState extends State<AddCategoryForm> {
  final _formKey = GlobalKey<FormState>();
  String categoryName = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Nome da Categoria'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o nome da categoria';
              }
              return null;
            },
            onSaved: (value) {
              categoryName = value!;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Chame a função para adicionar ao Firebase aqui
              }
            },
            child: Text('Salvar Categoria'),
          ),
        ],
      ),
    );
  }
}
