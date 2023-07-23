import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/features/homepage/presentation/homeBloc/home_bloc.dart';
import 'package:grocery_app/router/routing_variables.dart';
import 'package:grocery_app/shared/Helpers/image_helper.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> iconSvgs = ["all", "fruits", "vegetables", "fish"];
  List<String> iconLabels = [
    "All",
    "Fruits",
    "Vegetables",
    "Fish",
  ];

  HomeBloc homeBloc = HomeBloc();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeBloc.add(RequestHomeEvent());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromRGBO(1, 145, 2, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Me',
          ),
        ],
      ),
      drawer: Drawer(
        child: SizedBox(
          height: 50,
        ),
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(1, 145, 2, 1),
        //automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(child: ImageHelper.getSvg('title')),
            IconButton(onPressed: (() {}), icon: Icon(Icons.search)),
            IconButton(onPressed: (() {}), icon: Icon(Icons.shopping_cart)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          //height: size.height,
          child: Column(
            children: [
              Image(
                image: AssetImage('lib/assets/images/grocery_home.png'),
                width: size.width,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 26),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Material(
                                    elevation: 3,
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: ImageHelper.getSvg(iconSvgs[index],
                                          height: 50, width: 50),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(iconLabels[index]),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BlocBuilder(
                /// widget will be built depending on the BLoC data
                bloc: homeBloc,
                builder: (BuildContext context, HomeState state) {
                  if (state is HomeLoadingState) {
                    /// show loading indicator when data is incoming
                    return Center(child: CircularProgressIndicator());
                  } else if (state is HomeErrorState) {
                    /// show error message
                    return Text(state.errorMsg,
                        style: TextStyle(color: Colors.red));
                  } else if (state is HomeCreatedState) {
                    return ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.homeResultsEntity.ProductList!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.grey,
                              width: 1.5,
                            )),
                            height: 85,
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage(
                                        'lib/assets/images/fruits.png')),
                                Expanded(
                                  child: Text(state.homeResultsEntity
                                      .ProductList![index].Name!),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(1, 145, 2, 1),
                                )
                              ],
                            ),
                          );
                        });
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
