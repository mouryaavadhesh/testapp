class ApiUrls {
  static String get baseURI {
    // if (AppConfig.isFullProduction || AppConfig.isApiProduction) {
    //   return 'https://mystallapi-production.up.railway.app/';
    // }
    return 'http://192.168.29.30:8082/';
  }

  // static final String generateOtp = baseURI + 'user';
  // static final String verifyOtp = baseURI + 'verifyOtp';
  static final String checkUser = baseURI + 'checkUser';
  static final String checkCompanyName = baseURI + 'checkCompanyName';
  static final String companyRegistration = baseURI + 'registerUser';
  static final String getUserDetail = baseURI + 'userDetails';
  static final String saveUserDetail = baseURI + 'saveUserDetail';
  static final String stallStatus = baseURI + 'onlineOffline';
  static final String logout = baseURI + 'logout';

  static final String food = baseURI + 'food/';

  //Menu
  static final String createMenu = food + 'menu';
  static final String getMenuList = food + 'menuList';
  static final String menuUpdate = food + 'mu'; //delete category and item
  static final String getMenuCategoryItem = food + 'menuCategoryItem'; //delete category and item

  //Category
  static final String createCategory = food + 'addCategory';
  static final String getCategoryList = food + 'categoryList';
  static final String editCategory = food + 'editCategory';
  static final String deleteCid = food + 'cid'; //delete category and item
  static final String categoryUpdate = food + 'cu'; //delete category and item

  //Item
  static final String createItem = food + 'addItem';
  static final String getItemList = food + 'itemList';
  static final String itemEdit = food + 'iu';
  static final String itemDelete = food + 'itemDelete';

  static final String generateQrCode = baseURI + 'generateQrCode';
  static final String getTodayOrders = baseURI + 'getTodayOrders';
}
