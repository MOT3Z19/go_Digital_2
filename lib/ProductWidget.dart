import 'package:flutter/material.dart';
import 'package:untitled3/shopModel.dart';

class ProductWidget extends StatefulWidget {
  Product product;
  ProductWidget(this.product);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),

      ),
      child: Column(
        children: [
          Container(
            height: 100,
            child: Image.network(
              widget.product.imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(widget.product.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                Spacer(),
                Text('${widget.product.price.toString()} KD', style: TextStyle(color: Colors.red, fontWeight: FontWeight.normal),),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(onPressed: (){}, child: Text('Add To Cart'),style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 30),
              backgroundColor: Color(0xFC961414)
            ),),
          )
        ],
      ),
    );
  }
}
