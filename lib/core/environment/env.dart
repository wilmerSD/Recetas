enum ENV {
  DESA,
  QA,
  PROD,
}

extension Environment on ENV {
  static ENV type = ENV.DESA;
  static Map<String, dynamic> get appConfig {
    switch (type) {
      case ENV.DESA:
        return {
          "enviroment": "DESAROLLO",
          "baseUrl": "https://11b9-2803-a3e0-1357-bc70-e5cb-536f-aa14-e7f3.ngrok-free.app",
          "connectTimeout": 600000,
          "receiveTimeout": 600000,
          "sendTimeout": 600000,
        };
      case ENV.QA:
        return {
          "enviroment": "QA",
          "baseUrl": "https://11b9-2803-a3e0-1357-bc70-e5cb-536f-aa14-e7f3.ngrok-free.app",
          "connectTimeout": 600000,
          "receiveTimeout": 600000,
        };
      case ENV.PROD:
        return {
          "enviroment": "PRODUCCIÓN",
          "baseUrl": "https://11b9-2803-a3e0-1357-bc70-e5cb-536f-aa14-e7f3.ngrok-free.app",
          "connectTimeout": 600000,
          "receiveTimeout": 600000,
        };
      default:
        return {
          "": "",
        };
    }
  }
}
