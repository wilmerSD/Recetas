class ResponseItemsModel {
    List<Datum>? data;

    ResponseItemsModel({
        this.data,
    });

    factory ResponseItemsModel.fromJson(Map<String, dynamic> json) => ResponseItemsModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

}

class Datum {
    String? id;
    String? name;
    int? stock;

    Datum({
        this.id,
        this.name,
        this.stock,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        stock: json["stock"],
    );
}