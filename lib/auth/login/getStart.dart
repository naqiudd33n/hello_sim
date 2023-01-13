import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GetStartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<GetStartScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
}

Widget initWidget() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color(0xffDD1A76),
                gradient: LinearGradient(colors: [
                  (new Color(0xffDD1A76)),
                  (Color.fromARGB(255, 207, 98, 149))
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset('assets/logo/hello_sim.png'),
                    color: Colors.blue,
                    height: 100,
                    width: 150,
                  ),
                  FormBuilder(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20),
                          // padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: FormBuilderTextField(
                            name: "name",
                            decoration: InputDecoration(
                                labelText: "Name", icon: Icon(Icons.login)),
                          ),
                        )
                      ],
                      // children: <Widget>[
                      //   FormBuilderTextField(
                      //     name: "name",
                      //     decoration: InputDecoration(
                      //       labelText: "Name",
                      //     ),
                      //   ),
                      //   FormBuilderTextField(
                      //     name: "age",
                      //     decoration: InputDecoration(labelText: "Age"),
                      //     keyboardType: TextInputType.number,
                      //   ),
                      //   FormBuilderCheckbox(
                      //       name: 'accept_terms',
                      //       label: Text('Accept terms'),
                      //   ),
                      //   FormBuilderDropdown(
                      //       name: "gender",
                      //       decoration: InputDecoration(labelText: "Gender"),
                      //       items: ["Male", "Female", "Other"]
                      //       .map((gender) => DropdownMenuItem(
                      //            value: gender,
                      //            child: Text('$gender'),
                      //       ))
                      //       .toList(),
                      //   ),
                      // ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
