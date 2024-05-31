import '../../models/products.dart';
import 'package:flutter/foundation.dart';

class ProductsManager with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Mèo cỏ',
      description:
          'Là một giống loài đến từ khu vực châu Á. Thân hình khá nhỏ nhắn nên được nhiều các bạn nữ yêu mến',
      price: 199.00,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/07/25/01/22/cat-2536662_1280.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'Chó Husky',
      description:
          'Luôn nằm trong top giống chó được yêu thích. Husky sẽ luôn là lựa chọn hàng đầu với nhiều người yêu thú cưng',
      price: 478.01,
      imageUrl:
          'https://cdn.pixabay.com/photo/2021/08/18/00/40/siberian-husky-6554345_1280.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Mèo anh lông dài',
      description:
          'Là giông mèo được ưa chuộng bởi các quý tộc anh, khoác lên mình bộ lông xinh đẹp Mèo anh lông dài đã chinh phục được rất nhiều người ưa thích.',
      price: 350.09,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/26/19/17/cat-3352842_1280.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Chó Shiba Inu',
      description:
          'Là giống đến từ vùng đất mặt trời mọc - Nhật bản. Đảm bảo cậu bạn này sẽ không bao giờ làm mọi người thất vọng.',
      price: 395.25,
      imageUrl:
          'https://cdn.pixabay.com/photo/2021/05/29/07/06/shiba-6292660_1280.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p5',
      title: 'Mèo Shivana',
      description:
          'LÀ loài mèo tượng trưng cho sắc đẹp và cá tính ở các nước Tây Âu.',
      price: 395.25,
      imageUrl:
          'https://i.pinimg.com/564x/18/50/99/185099422f04c864dc4c32dce4db73dc.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p6',
      title: 'Chó Tuyết',
      description: 'Là giống đến từ vùng tuyết. ',
      price: 395.25,
      imageUrl:
          'https://i.pinimg.com/564x/2a/72/ea/2a72eadff9e3511dbf832101b4660d5c.jpg',
    ),
    Product(
      id: 'p7',
      title: 'Chó Alaska',
      description: 'Là giống được mọi người yêu thích.',
      price: 395.25,
      imageUrl:
          'https://i.pinimg.com/564x/51/db/08/51db081fb8d5cd83f854b14ac843d691.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p8',
      title: 'Mèo Anh Lông Ngắn',
      description: 'Là giống đến từ xứ Anh Quốc. ',
      price: 395.25,
      imageUrl:
          'https://i.pinimg.com/564x/b5/2f/25/b52f25fef1f2716ba3089f98876019e6.jpg',
    ),
  ];

  int get itemCount {
    return _items.length;
  }

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  Product? findById(String id) {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (error) {
      return null;
    }
  }

  void addProduct(Product product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }

  void updateProduct(Product product) {
    final index = _items.indexWhere((item) => item.id == product.id);
    if (index >= 0) {
      _items[index] = product;
      notifyListeners();
    }
  }

  void toggleFavoriteStatus(Product product) {
    final savedStatus = product.isFavorite;
    product.isFavorite = !savedStatus;
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((item) => item.id == id);
    _items.removeAt(index);
    notifyListeners();
  }
}
