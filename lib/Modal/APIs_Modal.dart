// class OpenseaModel {
//   OpenseaModel({
//     required this.assets,
//   });
//

//   OpenseaModel.fromJson(Map<String, dynamic> json) {
//     assets = List.from(json['assets']).map((e) => APIsModal.fromjson(e)).toList();
//   }
//
//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['assets'] = assets!.map((e) => e.toJson()).toList();
//     return _data;
//   }
// }

class APIsModal {
  int Id;
  String CategoryName;
  String Name;
  int Price;
  String Image;
  int AverageRating;


  APIsModal({
    required this.Id,
    required this.CategoryName,
    required this.Name,
    required this.Price,
    required this.Image,
    required this.AverageRating,
  });

  factory APIsModal.fromjson(Map<String, dynamic> json) {
    return APIsModal(
      Id: json['ProductData']['Id'],
      CategoryName: json['ProductData']['CategoryName'],
      Name: json['ProductData']['Name'],
      Price: json['ProductData']['Price'],
      Image: json['ProductData']['Image'],
      AverageRating: json['ProductData']['AverageRating'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   final _data = <String, dynamic>{};
  //   _data['Id'] = Id;
  //   _data['CategoryName'] = CategoryName;
  //   _data['Name'] = Name;
  //   _data['Price'] = Price;
  //   _data['Image'] = Image;
  //   _data['AverageRating'] = AverageRating;
  //   return _data;
  // }
}




