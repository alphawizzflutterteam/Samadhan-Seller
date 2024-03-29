import 'package:ziberto_vendor/Helper/String.dart';

class OrderItem {
  String? id,
      name,
      qty,
      price,
      subTotal,
      status,
      image,
      varientId,
      isCancle,
      activeStatus,
      drivername,
      isReturn,
      isAlrCancelled,
      isAlrReturned,
      rtnReqSubmitted,
      varient_values,
      attr_name,
      productId,
      curSelected,
      deliveryBoyId,
      accept_reject,
      deliverBy;

  List<String?>? listStatus = [];
  List<String?>? listDate = [];

  OrderItem(
      {this.qty,
      this.id,
      this.name,
        this.accept_reject,
      this.price,
      this.subTotal,
      this.status,
      this.image,
      this.varientId,
      this.activeStatus,
      this.listDate,
      this.listStatus,
      this.isCancle,
        this.drivername,
      this.isReturn,
      this.isAlrReturned,
      this.isAlrCancelled,
      this.rtnReqSubmitted,
      this.attr_name,
      this.productId,
      this.varient_values,
      this.curSelected,
      this.deliveryBoyId,
      this.deliverBy});

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    List<String?> lStatus = [];
    List<String?> lDate = [];
    print(json['accept_reject_vendor']);
    var allSttus = json[STATUS];
    for (var curStatus in allSttus) {
      lStatus.add(curStatus[0]);
      lDate.add(curStatus[1]);
    }
    return new OrderItem(
        id: json[Id],
        accept_reject: json['accept_reject_vendor'],
        qty: json[Quantity],
        name: json[Name],
        activeStatus: json[ActiveStatus],
        image: json[IMage],
        price: json[Price],
        drivername: json['delivery_boy_name'],
        subTotal: json[SubTotal],
        varientId: json[ProductVariantId],
        listStatus: lStatus,
        status: json[ActiveStatus],
        curSelected: json[ActiveStatus],
        listDate: lDate,
        isCancle: json[IsCancelable],
        isReturn: json[IsReturnable],
        isAlrCancelled: json[IsAlreadyCancelled],
        isAlrReturned: json[IsAlreadyReturned],
        rtnReqSubmitted: json[ReturnRequestSubmitted],
        attr_name: json[AttrName],
        productId: json[ProductId],
        varient_values: json[VariantValues],
        deliveryBoyId: json[Delivery_Boy_Id],
        deliverBy: json[DeliverBy]);
  }
}
