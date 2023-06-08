enum Environment { dev, qa, production }

// ignore: avoid_classes_with_only_static_members
class APIConfig {
  static Environment environment = Environment.dev;

  // 根据环境获取URL
  static String getBaseUrl() {
    switch (environment) {
      case Environment.dev:
        return 'xxxxxxxxxxxxx';
      case Environment.qa:
        return 'xxxxxxxxxxxxxxxx';
      case Environment.production:
        return 'xxxxxxxxxxxxx';
    }
    return 'xxxxxxxxxxxxxxxxx';
  }

  // 根据环境获取H5的URL
  static String getH5BaseUrl(prefixUrl) {
    const String H5Version = 'v5';
    switch (environment) {
      case Environment.dev:
        return 'https://dev-b2bh5.szzhijing.com/$H5Version/$prefixUrl';
      case Environment.qa:
        return 'https://qa-b2bh5.szzhijing.com/$H5Version/$prefixUrl';
      case Environment.production:
        return 'https://b2bh5.szzhijing.com/$H5Version/$prefixUrl';
    }
    return 'https://b2bh5.szzhijing.com/$H5Version/$prefixUrl';
  }
}
