import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

import '../models/cart_item_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.5,
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 7.4,
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 11.5,
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'un',
  price: 2.5,
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/mango.png',
  unit: 'un',
  price: 2.5,
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão papaya',
  imgUrl: 'assets/fruits/papaya.png',
  unit: 'kg',
  price: 8,
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: guava, quantity: 3),
];

UserModel user = UserModel(
  name: 'Felipe',
  email: 'felipe@email.com',
  phone: '99 99999-9999',
  cpf: '999.999.999-99',
  password: '',
);

List<OrderModel> orders = [
  OrderModel(
    id: 'as2sad4as65sa1sa',
    createdDateTime: DateTime.parse('2023-01-27 08:21:10.468'),
    overdueDateTime: DateTime.parse('2023-01-27 18:21:10.468'),
    items: [
      CartItemModel(item: apple, quantity: 2),
      CartItemModel(item: mango, quantity: 3),
    ],
    status: 'pending_payment',
    copyAndPaste: 'sa45d64sasad',
    total: 17.5,
  ),
  OrderModel(
    id: 'as2sad4as65sa1sa',
    createdDateTime: DateTime.parse('2023-01-27 08:21:10.468'),
    overdueDateTime: DateTime.parse('2023-01-27 18:21:10.468'),
    items: [
      CartItemModel(item: grape, quantity: 4),
      CartItemModel(item: kiwi, quantity: 1),
    ],
    status: 'delivered',
    copyAndPaste: 'sa45d64sasad',
    total: 31.70,
  ),
];
