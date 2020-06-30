import 'package:delivery/screens/common.dart';
import 'package:delivery/screens/models/products.dart';
import 'package:delivery/widget/title.dart';
import 'package:flutter/material.dart';

List<Product> productsList = [
Product(name: "Cereals", price: 5.99, rating: 4.2, vendor: "McKing", wishlist: true,image: "1.jpg"),
Product(name: "Taccos", price: 5.99, rating: 4.7, vendor: "BurDonalds", wishlist: false,image: "5.jpg"),
Product(name: "Cereals", price: 5.99, rating: 4.2, vendor: "McKing", wishlist: true,image: "1.jpg"),

];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          itemCount: productsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 240,
                width: 200,
                decoration: BoxDecoration(color: white, boxShadow: [
                  BoxShadow(
                      color: red[50],
                      offset: Offset(15, 5),
                      blurRadius: 30)
                ]),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      "images/${productsList[index].image}",
                      height: 140,
                      width: 140,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: grey[300],
                                      offset: Offset(1, 1),
                                      blurRadius: 4)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: productsList[index].wishlist ? Icon(
                                Icons.favorite,
                                size: 18,
                                color: red,
                              )
                              :Icon(
                                Icons.favorite_border,
                                size: 18,
                                color: red,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                text: productsList[index].rating.toString(),
                                color: grey,
                                size: 14,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: red,
                              size: 16,
                            ),
                            Icon(
                              Icons.star,
                              color: grey,
                              size: 16,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: CustomText(text: "\$${productsList[index].price}",weight: FontWeight.bold,),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
