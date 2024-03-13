import 'package:amazon_ui/model/productmodel.dart';
import 'package:amazon_ui/screen/accountScreen.dart';
import 'package:amazon_ui/screen/cartScreen.dart';
import 'package:amazon_ui/screen/homescreen.dart';
import 'package:amazon_ui/screen/moreScreen.dart';
import 'package:amazon_ui/widgets/simple_product.dart';
import 'package:flutter/material.dart';
const double kAppBarHeight = 80;

const String amazonLogoUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Amazon_icon.svg/2500px-Amazon_icon.svg.png";

const List<String> categoriesList = [
  "Prime",
  "Mobiles",
  "Fashion",
  "Electronics",
  "Home",
  "Fresh",
  "Appliances",
  "Books, Toys",
  "Essential"
];
const List<Widget> screens=[
    HomeScreen(),
    AccountScreen(),
    CartScreen(),
    MoreScreen(),

];

const List<String> categoryLogos = [
  "https://m.media-amazon.com/images/I/11uufjN3lYL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/116KbsvwCRL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/115yueUc1aL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11qyfRJvEbL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11BIyKooluL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11CR97WoieL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/01cPTp7SLWL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11yLyO9f9ZL._SX90_SY90_.png",
  "https://m.media-amazon.com/images/I/11M0jYc-tRL._SX90_SY90_.png",
];

const List<String> largeAds = [
  "https://m.media-amazon.com/images/I/51QISbJp5-L._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61jmYNrfVoL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/612a5cTzBiL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61fiSvze0eL._SX3000_.jpg",
  "https://m.media-amazon.com/images/I/61PzxXMH-0L._SX3000_.jpg",
];

const List<String> smallAds = [
  "https://m.media-amazon.com/images/I/11M5KkkmavL._SS70_.png",
  "https://m.media-amazon.com/images/I/11iTpTDy6TL._SS70_.png",
  "https://m.media-amazon.com/images/I/11dGLeeNRcL._SS70_.png",
  "https://m.media-amazon.com/images/I/11kOjZtNhnL._SS70_.png",
];

const List<String> adItemNames = [
  "Amazon Pay",
  "Recharge",
  "Rewards",
  "Pay Bills"
];

//Dont even attemp to scroll to the end of this manually lmao
const String amazonLogo =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/2560px-Amazon_logo.svg.png";

List<Widget> testChildren=[
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fgucci-ace-embroidered-sneaker-%27snake%27-na%2Fdisplay_picture.png&w=750&q=75", productName: "Armani ", cost: 99, discount: 50, uid: "re423rwe", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fadidas-yeezy-foam-rnr-%27carbon%27-ig5349%2Fdisplay_picture.png&w=750&q=75", productName: "Adidas ", cost: 999, discount: 60, uid: "fre434", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fadidas-yeezy-foam-rnr-%27carbon%27-ig5349%2Fdisplay_picture.png&w=750&q=75", productName: "Adidas ", cost: 9993, discount: 20, uid: "fa4553fes", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fwmns-air-jordan-1-zoom-comfort-%27bulls%27-ct0979610%2Fdisplay_picture.png&w=750&q=75", productName: "Nike ", cost: 9399, discount: 10, uid: "ds432", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
];/*
List<Widget> testChildren1=[
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fgucci-ace-embroidered-sneaker-%27snake%27-na%2Fdisplay_picture.png&w=750&q=75", productName: "Armani ", cost: 99, discount: 50, uid: "re423rwe", sellerName: "a", sellerUid: "73456", rating: 3, noOfRating: 322)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fadidas-yeezy-foam-rnr-%27carbon%27-ig5349%2Fdisplay_picture.png&w=750&q=75", productName: "Adidas ", cost: 999, discount: 60, uid: "fre434", sellerName: "b", sellerUid: "3453", rating: 4, noOfRating: 132)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fadidas-yeezy-foam-rnr-%27carbon%27-ig5349%2Fdisplay_picture.png&w=750&q=75", productName: "Adidas ", cost: 9993, discount: 20, uid: "fa4553fes", sellerName: "c", sellerUid: "234", rating: 2, noOfRating: 122)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fwmns-air-jordan-1-zoom-comfort-%27bulls%27-ct0979610%2Fdisplay_picture.png&w=750&q=75", productName: "Nike ", cost: 9399, discount: 10, uid: "ds432", sellerName: "d", sellerUid: "42", rating: 1, noOfRating: 32)),
];
List<Widget> testChildren2=[
  SimpleProductWidget(productModel:ProductModel(url: "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fgucci-ace-embroidered-sneaker-%27snake%27-na%2Fdisplay_picture.png&w=750&q=75", productName: "Armani ", cost: 99, discount: 50, uid: "re423rwe", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fnike-sb-dunk-low-city-of-love-%27bone%27-fz5654100%2Fdisplay_picture.png&w=750&q=75", productName: "Adidas ", cost: 999, discount: 60, uid: "fre434", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fchristian-louboutin-happy-rui-logo-belt-%27black%27-na%2Fdisplay_picture.png&w=750&q=75", productName: "Adidas ", cost: 9993, discount: 20, uid: "fa4553fes", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
  SimpleProductWidget(productModel:ProductModel(url:  "https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fgucci--blade-logo-t-shirt-na%2Fdisplay_picture.png&w=750&q=75", productName: "Nike ", cost: 9399, discount: 10, uid: "ds432", sellerName: "safd", sellerUid: "53453", rating: 1, noOfRating: 32)),
];
List<Widget> testChildren1=[
  SimpleProductWidget(url:"https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fbape-honeycomb-camo-baby-milo-tee-%27black%27-na%2Fdisplay_picture.png&w=750&q=75"),
  SimpleProductWidget(url:"https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fadidas-yeezy-foam-rnr-%27carbon%27-ig5349%2Fdisplay_picture.png&w=750&q=75"),
  SimpleProductWidget(url:"https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_482%2Fproduct-images%2Fjordan-1-mid-%27pink-wash%27-fd8780601%2Fdisplay_picture.png&w=256&q=100"),
  SimpleProductWidget(url:"https://www.solesearchindia.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdx8gt3nnu%2Fimage%2Fupload%2Fq_100%2Cf_webp%2Fw_500%2Fproduct-images%2Fwmns-air-jordan-1-zoom-comfort-%27bulls%27-ct0979610%2Fdisplay_picture.png&w=750&q=75"),
];

List<Widget> testChildren2=[
  SimpleProductWidget(url:"),
  SimpleProductWidget(url:),
  SimpleProductWidget(url:),
  SimpleProductWidget(url:),
];*/
List <String> keyOfRating=["Very bad","Poor","Avg","Good","Excellent"];