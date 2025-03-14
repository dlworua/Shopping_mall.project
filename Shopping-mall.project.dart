class Product {
  String name;
  int price;

  Product(this.name, this.price);
}

class ShoppingMall {
  //상품목록
  List<Product> products = [
    Product('셔츠', 45000),
    Product('원피스', 30000),
    Product('반팔티', 35000),
    Product('반바지', 38000),
    Product('양말', 5000),
  ];
  //장바구니
  List<Product> cart = [];
  //상품목록 보기
  void showProducts() {
    for (int i = 0; i < products.length; i++) {
      Product product = products[i];
      print('상품: ${product.name} 가격: ${product.price}');
    }
  }

  //장바구니 담기
  void addToCart(String productName, int qty) {
    //상품의 갯수가 '0이하이면 0개보다 많은 개수의 상품만 담을 수 있어요!' 출력
    if (qty <= 0) {
      print('0개보다 많은 개수의 상품만 담을 수 있어요!');
      return;
    }
    //products에서 상품이름이 productName과 일치하는 상품 product라는 변수에 담기기
    Product? product;
    for (int i = 0; i < products.length; i++) {
      if (products[i].name == productName) {
        product = products[i];
        break;
      }
    }
    //상품목록에 없는 상품의 이름을 입력한 경우 '입력값이 올바르지 않아요!'출력
    if (product == null) {
      print('입력값이 올바르지 않아요!');
      return;
    }
    //올바른 값일경우 카트에 추가한 뒤 '장바구니에 상품이 담겼어요!' 출력
    for (int i = 0; i < qty; i++) {
      cart.add(product);
    }
    print('장바구니에 상품이 담겼어요!');
  }

  //총 가격 보여주기
  void showTotalPrice() {
    int totalPrice = 0;
    for (int i = 0; i < cart.length; i++) {
      Product product = cart[i];
      totalPrice = totalPrice + product.price;
    }
    print('장바구니에 $totalPrice원 어치를 담았으셨네요!');
  }
}

void main() {
  //판매 상품 목록
  ShoppingMall shopping = ShoppingMall();
  shopping.showProducts();
  //프로그램 실행시 안내 문자열 출력
  //사용자 입력 받은 후 변수에 담기
  //입력받은 값이 1이라면 상품목록 보여주기기
}
