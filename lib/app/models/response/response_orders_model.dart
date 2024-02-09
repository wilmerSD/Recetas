class ResponseOrdersModel {
    Data? data;

    ResponseOrdersModel({
        this.data,
    });

    factory ResponseOrdersModel.fromJson(Map<String, dynamic> json) => ResponseOrdersModel(
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
}

class Data {
    String? id;
    bool? isFinished;
    Recipe? recipe;

    Data({
        this.id,
        this.isFinished,
        this.recipe,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        isFinished: json["is_finished"],
        recipe: json["recipe"] == null ? null : Recipe.fromJson(json["recipe"]),
    );
}

class Recipe {
    String? id;
    String? name;
    int? preparationTime;

    Recipe({
        this.id,
        this.name,
        this.preparationTime,
    });

    factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        id: json["id"],
        name: json["name"],
        preparationTime: json["preparation_time"],
    );
}