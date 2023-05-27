class TransbankSettingData {
  String apiKey;
  String commerceCode;
  bool isEnabled;
  bool isSandbox;

  TransbankSettingData({
    this.apiKey = '',
    this.commerceCode = '',
    required this.isSandbox,
    required this.isEnabled,
  });

  factory TransbankSettingData.fromJson(Map<String, dynamic> parsedJson) {
    return TransbankSettingData(
      apiKey: parsedJson['ApiKey'] ?? '',
      commerceCode: parsedJson['CommerceCode'] ?? '',
      isSandbox: parsedJson['isSandboxEnabled'],
      isEnabled: parsedJson['isEnabled'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ApiKey': this.apiKey,
      'CommerceCode': this.commerceCode,
      'isEnabled': this.isEnabled,
      'isSandboxEnabled': this.isSandbox,
    };
  }
}