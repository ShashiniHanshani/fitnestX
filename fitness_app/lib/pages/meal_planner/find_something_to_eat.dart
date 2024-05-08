import 'package:fitness_app/models/find_something_to_eat_model/category_model.dart';
import 'package:fitness_app/models/find_something_to_eat_model/recommendations.dart';
import 'package:flutter/material.dart';

class FindSomethingToEat extends StatefulWidget {
  FindSomethingToEat({super.key});

  @override
  State<FindSomethingToEat> createState() => _FindSomethingToEatState();
}

class _FindSomethingToEatState extends State<FindSomethingToEat> {
  List<CategoryModel> categories = [];
  List<DietModel> models = [];

  void _getInfo() {
    categories = CategoryModel.getCategories();
    models = DietModel.getModel();
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    return Scaffold(
      //appbar
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //search bar
          _searchField(),
          SizedBox(
            height: 40,
          ),
          //category
          _categoriesSection(),

          SizedBox(
            height: 40,
          ),
          //Recommendation for diet
          _recommendationDiet()
          //popular
        ],
      ),
    );
  }

  Column _recommendationDiet() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Recommendation\nfor Diet",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              child: ListView.separated(
                itemCount: models.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 20, right: 20),
                separatorBuilder: (context, index) => SizedBox(width: 25),
                itemBuilder: ((context, index) {
                  return Container(
                    width: 180,
                    decoration: BoxDecoration(
                        color: models[index].boxColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          models[index].iconPath,
                          width: 150,
                        ),
                        Text(
                          models[index].name,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          models[index].level +
                              ' | ' +
                              models[index].duration +
                              ' | ' +
                              models[index].calories,
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          child: Center(
                            child: Text(
                              "View",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: models[index].viewedSelected
                                    ? Colors.white
                                    : const Color(0xffC58BF2),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(99),
                            gradient: LinearGradient(colors: [
                              models[index].viewedSelected
                                  ? const Color(0xff9DCEFF)
                                  : Colors.transparent,
                              models[index].viewedSelected
                                  ? const Color(0xff92A3FD)
                                  : Colors.transparent,
                            ]),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        );
  }

  Column _categoriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Category",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 120,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20, right: 20),
            separatorBuilder: (context, index) => SizedBox(width: 25),
            itemBuilder: ((context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: categories[index].boxColor.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(categories[index].iconPath),
                    ),
                    Text(categories[index].name),
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }

  Container _searchField() {
    return Container(
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 40,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Search Pancake',
          hintStyle: TextStyle(
            color: Color(0xffDDDADA),
            fontSize: 14,
          ),
          prefixIcon: Icon(Icons.search),
          suffixIcon: Container(
            width: 100,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  VerticalDivider(
                    color: Colors.black,
                    indent: 10,
                    endIndent: 10,
                    thickness: 0.1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage("assets/icons/Filter.png"),
                      width: 25,
                      height: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Breakfast",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.arrow_back_ios_new_sharp,
        ),
      ),

      //when giving a serious of buttons actions widget is used
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 32,
            alignment: Alignment.center,
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(image: AssetImage("assets/icons/dot.png")),
          ),
        )
      ],
    );
  }
}
