import 'package:flutter/material.dart';
import 'package:food_app/utils/constants/color_constants.dart';
import 'package:food_app/utils/constants/image_constants.dart';
import 'package:food_app/view/global_widget/custom_button_card.dart';
import 'package:food_app/view/global_widget/incredients_section.dart';
import 'package:huge_icons_flutter/huge_icons_flutter.dart';

class CreateRecipeeScreen extends StatelessWidget {
  const CreateRecipeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Create recipe",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                ImageConstants.CREATE_RECIPEE_IMAGE)),
                        //image: DecorationImage(image: NetworkImage(url))
                        color: Colors.yellow),
                    child: Center(
                        child: CircleAvatar(
                      radius: 24,
                      backgroundColor: ColorConstants.mainBlack.withOpacity(.3),
                      child: HugeIcon(
                        HugeIcons.add,
                        color: ColorConstants.mainWhite,
                      ),
                    )),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorConstants.mainWhite,
                      child: Icon(
                        Icons.edit,
                        color: ColorConstants.PRIMARY_COLOR,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      gapPadding: 16),
                  hintText: "name",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      gapPadding: 16),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      gapPadding: 16),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              IngridientSection(
                  gram: "01",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_W7T3sd6l-YMYHKS4RapoaSMOVAMLWXxlQ&s",
                  name: 'serves'),
              SizedBox(
                height: 12,
              ),
              IngridientSection(
                  gram: "01",
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH_W7T3sd6l-YMYHKS4RapoaSMOVAMLWXxlQ&s",
                  name: 'egg'),
              Text(
                "Ingrediants",
                style: TextStyle(
                    color: ColorConstants.mainBlack,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 16,
              ),
              ingrediants_row(),
              SizedBox(
                height: 12,
              ),
              ingrediants_row(),
              SizedBox(
                height: 12,
              ),
              ingrediants_row(),
              Row(
                children: [
                  Text(
                    "+",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Add new Ingredient",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Custom_botton(
                data: "Save my recipes",
                onButtonpressed: () {},
                height: 50,
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }

  Row ingrediants_row() {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  gapPadding: 16),
              hintText: "name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  gapPadding: 16),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  gapPadding: 16),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
          flex: 3,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  gapPadding: 16),
              hintText: "name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  gapPadding: 16),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  gapPadding: 16),
            ),
          ),
        ),
        HugeIcon(
          HugeIcons.add,
          // size: 22,
          color: Colors.red,
        ),
      ],
    );
  }
}
