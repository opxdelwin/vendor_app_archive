import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackagesRecord extends FirestoreRecord {
  PackagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  bool hasQuantity() => _quantity != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "package_id" field.
  String? _packageId;
  String get packageId => _packageId ?? '';
  bool hasPackageId() => _packageId != null;

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "vendor_id" field.
  String? _vendorId;
  String get vendorId => _vendorId ?? '';
  bool hasVendorId() => _vendorId != null;

  // "delivery_agent_id" field.
  String? _deliveryAgentId;
  String get deliveryAgentId => _deliveryAgentId ?? '';
  bool hasDeliveryAgentId() => _deliveryAgentId != null;

  // "price_list_type" field.
  String? _priceListType;
  String get priceListType => _priceListType ?? '';
  bool hasPriceListType() => _priceListType != null;

  // "picked_time" field.
  DateTime? _pickedTime;
  DateTime? get pickedTime => _pickedTime;
  bool hasPickedTime() => _pickedTime != null;

  // "delivered_time" field.
  DateTime? _deliveredTime;
  DateTime? get deliveredTime => _deliveredTime;
  bool hasDeliveredTime() => _deliveredTime != null;

  // "order_id" field.
  String? _orderId;
  String get orderId => _orderId ?? '';
  bool hasOrderId() => _orderId != null;

  // "customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "ordered_time" field.
  DateTime? _orderedTime;
  DateTime? get orderedTime => _orderedTime;
  bool hasOrderedTime() => _orderedTime != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "packed_time" field.
  DateTime? _packedTime;
  DateTime? get packedTime => _packedTime;
  bool hasPackedTime() => _packedTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _price = castToType<double>(snapshotData['price']);
    _status = snapshotData['status'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _quantity = castToType<double>(snapshotData['quantity']);
    _unit = snapshotData['unit'] as String?;
    _packageId = snapshotData['package_id'] as String?;
    _productId = snapshotData['product_id'] as String?;
    _vendorId = snapshotData['vendor_id'] as String?;
    _deliveryAgentId = snapshotData['delivery_agent_id'] as String?;
    _priceListType = snapshotData['price_list_type'] as String?;
    _pickedTime = snapshotData['picked_time'] as DateTime?;
    _deliveredTime = snapshotData['delivered_time'] as DateTime?;
    _orderId = snapshotData['order_id'] as String?;
    _customerName = snapshotData['customer_name'] as String?;
    _shopName = snapshotData['shop_name'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _orderedTime = snapshotData['ordered_time'] as DateTime?;
    _productName = snapshotData['product_name'] as String?;
    _packedTime = snapshotData['packed_time'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('packages')
          : FirebaseFirestore.instance.collectionGroup('packages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('packages').doc(id);

  static Stream<PackagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PackagesRecord.fromSnapshot(s));

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PackagesRecord.fromSnapshot(s));

  static PackagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PackagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PackagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PackagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PackagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PackagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPackagesRecordData({
  double? price,
  String? status,
  LatLng? location,
  double? quantity,
  String? unit,
  String? packageId,
  String? productId,
  String? vendorId,
  String? deliveryAgentId,
  String? priceListType,
  DateTime? pickedTime,
  DateTime? deliveredTime,
  String? orderId,
  String? customerName,
  String? shopName,
  String? userId,
  DateTime? orderedTime,
  String? productName,
  DateTime? packedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'price': price,
      'status': status,
      'location': location,
      'quantity': quantity,
      'unit': unit,
      'package_id': packageId,
      'product_id': productId,
      'vendor_id': vendorId,
      'delivery_agent_id': deliveryAgentId,
      'price_list_type': priceListType,
      'picked_time': pickedTime,
      'delivered_time': deliveredTime,
      'order_id': orderId,
      'customer_name': customerName,
      'shop_name': shopName,
      'user_id': userId,
      'ordered_time': orderedTime,
      'product_name': productName,
      'packed_time': packedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class PackagesRecordDocumentEquality implements Equality<PackagesRecord> {
  const PackagesRecordDocumentEquality();

  @override
  bool equals(PackagesRecord? e1, PackagesRecord? e2) {
    return e1?.price == e2?.price &&
        e1?.status == e2?.status &&
        e1?.location == e2?.location &&
        e1?.quantity == e2?.quantity &&
        e1?.unit == e2?.unit &&
        e1?.packageId == e2?.packageId &&
        e1?.productId == e2?.productId &&
        e1?.vendorId == e2?.vendorId &&
        e1?.deliveryAgentId == e2?.deliveryAgentId &&
        e1?.priceListType == e2?.priceListType &&
        e1?.pickedTime == e2?.pickedTime &&
        e1?.deliveredTime == e2?.deliveredTime &&
        e1?.orderId == e2?.orderId &&
        e1?.customerName == e2?.customerName &&
        e1?.shopName == e2?.shopName &&
        e1?.userId == e2?.userId &&
        e1?.orderedTime == e2?.orderedTime &&
        e1?.productName == e2?.productName &&
        e1?.packedTime == e2?.packedTime;
  }

  @override
  int hash(PackagesRecord? e) => const ListEquality().hash([
        e?.price,
        e?.status,
        e?.location,
        e?.quantity,
        e?.unit,
        e?.packageId,
        e?.productId,
        e?.vendorId,
        e?.deliveryAgentId,
        e?.priceListType,
        e?.pickedTime,
        e?.deliveredTime,
        e?.orderId,
        e?.customerName,
        e?.shopName,
        e?.userId,
        e?.orderedTime,
        e?.productName,
        e?.packedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is PackagesRecord;
}
