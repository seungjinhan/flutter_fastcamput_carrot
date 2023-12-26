import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/post/vo_product_post.dart';
import 'package:fast_app_base/entity/product/product_status.dart';
import 'package:fast_app_base/entity/product/vo_product.dart';
import 'package:fast_app_base/entity/user/vo_address.dart';
import 'package:fast_app_base/entity/user/vo_user.dart';

String picSum(int id) {
  return 'https://picsum.photos/id/$id/200/200';
}

final user1 = User(
  id: 1,
  nickname: "홍길동",
  profileUrl: picSum(1010),
  temperature: 36.2,
);

final user2 = User(
  id: 2,
  nickname: "김길수",
  profileUrl: picSum(900),
  temperature: 26.2,
);

final user3 = User(
  id: 3,
  nickname: "박호섭",
  profileUrl: picSum(700),
  temperature: 56.2,
);

final product1 =
    Product(user1, '아이폰14', 800000, '잘쓰던거에요1', ProductStatus.normal, [
  picSum(100),
  picSum(200),
  picSum(300),
]);
final product2 =
    Product(user2, '아이폰11', 400000, '잘쓰던거에요2', ProductStatus.normal, [
  picSum(400),
  picSum(600),
  picSum(900),
]);
final product3 =
    Product(user3, '아이폰12', 600000, '잘쓰던거에요3', ProductStatus.normal, [
  picSum(500),
  picSum(700),
  picSum(800),
]);

final post1 = ProductPost(
    product1.user,
    product1,
    '글내욥입니다',
    const Address('서울시 강남구 111', '강남1'),
    2,
    3,
    DateTime.now().subtract(30.minutes));
final post2 = ProductPost(
    product2.user,
    product2,
    '글내욥입니다22222',
    const Address('서울시 강남구 222', '강남2'),
    1,
    2,
    DateTime.now().subtract(10.minutes));
final post3 = ProductPost(
    product3.user,
    product3,
    '글내욥입니다223222',
    const Address('서울시 강남구 333', '강남3'),
    100,
    22,
    DateTime.now().subtract(50.minutes));

final postList = [
  post1,
  post2,
  post3,
  post1,
  post2,
  post3,
  post1,
  post2,
  post3
];
