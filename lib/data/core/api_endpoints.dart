abstract class ApiEndpoints {
  //static final String? apiUrl = dotenv.env[AppKeys.apiUrlKey];
  static String apiUrl() {
    //if (kDebugMode) {
    //  return "https://localhost:3001";
    //}
    return 'http://192.168.0.104:3001';
  }

  //static final String? apiUrl = dotenv.env[AppKeys.apiANZUrlKey];

  //static final String? apiUrl = dotenv.env[AppKeys.apiOlUrlKey];

  // Authorization requests
  static final String login = '/auth/login';
  static final String logout = '/auth/logout';
  static final String register = '/auth/register';
  static final String requestCode = '/request-code';
  static final String verifyCode = '/verify-code';
  static final String refresh = '/auth/refresh';
  static final String updatePushToken = '/auth/update-push-token';

  static final String userCheckIsExistsPhoneType =
      '/users/check-is-exists-phone-type';
  static final String userCrud = '/users';
  static final String userRoles = '$userCrud/roles';
  static final String uploadAvatar = '/upload-avatar';
  static final String updateProfile = '/update-profile';

  static final String settlementLocationType = '/settlement-location-type';
  static final String address = '/address';
  static final String brands = '/brands';

  static final String categories = '/categories';
  static final String deliveryTypes = '/delivery-types';
  static final String paymentMethods = '/payment-methods';

  //product
  static final String productCRUD = '/products';
  static final String productSearchInit = '$productCRUD/init';
  static final String productPaginate = '$productCRUD/paginate';
  static final String productDetails = '$productCRUD/details';
  static final String productBase = '$productCRUD/load-base-product';

  //category
  static final String productAllCategories = '/product-categories';
  static final String productCategoryPath = '$productAllCategories/path';
  static final String productCategoryPaths = '$productAllCategories/paths';
  static final String productRootCategories =
      '$productAllCategories/root-categories';
  static final String productRootCategoryTree =
      '$productAllCategories/root-category-tree';

  //banner
  static final String banner = '/banner';

  //product stats
  static final String productStats = '/product-stats';

  //product questions
  static final String questions = '/questions';
  static final String questionsProduct = '$questions/product';
  static final String questionsUser = '$questions/user';
  static final String questionsLike = '$questions/like';
  static final String questionsDislike = '$questions/dislike';

  //product reviews
  static final String reviews = '/reviews';
  static final String reviewsProduct = '$reviews/product';
  static final String reviewsUser = '$reviews/user';
  static final String reviewsLike = '$reviews/like';
  static final String reviewsDislike = '$reviews/dislike';

  //product view
  static final String productView = '/product-view';

  //files
  static final String files = '/files';
  static final String filesUpload = '$files/upload';

  //statistics
  static final String statistics = '/statistics';

  //characteristics
  static final String characteristicCrud = '/characteristic';
  static final String characteristicProduct = '$characteristicCrud/product';

  //order
  static final String order = '/order';
  static final String orderUser = '$order/user';
  static final String orderSelectAddress = '$order/select-address';
  static final String orderHistoryProducts = '$order/history-products';

  //shopping cart
  static final String shoppingCartCrud = '/shopping-cart';
  static final String shoppingCartReduceCount =
      '$shoppingCartCrud/reduce-count';
  static final String shoppingCartChangeCount =
      '$shoppingCartCrud/change-count';

  static final String orderAddressesCrud = '/order-addresses';
  static final String orderAddressesUpdateAll =
      '$orderAddressesCrud/update-all';

  static final String likeProductCrud = '/like-product';
  static final String likeProductPaginate = '$likeProductCrud/paginate';

  static final String crashPost = '/crash';

  static final String proxy = '/proxy';

  static final String adminOrderShoppingCart = '/admin/shopping-cart';

  static final String adminOrderShoppingCartAdd = '$adminOrderShoppingCart/add';
  static final String adminOrderShoppingCartChangeCount =
      '$adminOrderShoppingCart/change-count';
  static final String adminOrderShoppingCartReduceCount =
      '$adminOrderShoppingCart/reduce-count';
  static final String adminOrderShoppingCartRemove =
      '$adminOrderShoppingCart/remove';

  static final String adminUsers = '/admin/users';
  static final String adminOrder = '/admin/order';
  static final String adminOrderSelectAddress = '$adminOrder/select-address';
  static final String adminOrderHistoryProducts =
      '$adminOrder/history-products';
  static final String adminOrderStatus = '$adminOrder/status';
  static final String adminOrderPaginated = '$adminOrder/paginated';
  static final String adminOrderPaymentType = '$adminOrder/payment-type';
  static final String adminOrderDeliveryType = '$adminOrder/delivery-type';
  static final String adminOrderNew = '$adminOrder/new';
  static final String adminOrderInProgress =
      '$adminOrder/in-progress';
}
