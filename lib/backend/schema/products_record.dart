import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "keyword" field.
  List<String>? _keyword;
  List<String> get keyword => _keyword ?? const [];
  bool hasKeyword() => _keyword != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "purchase_price" field.
  double? _purchasePrice;
  double get purchasePrice => _purchasePrice ?? 0.0;
  bool hasPurchasePrice() => _purchasePrice != null;

  // "vendor_id" field.
  String? _vendorId;
  String get vendorId => _vendorId ?? '';
  bool hasVendorId() => _vendorId != null;

  // "show_if" field.
  bool? _showIf;
  bool get showIf => _showIf ?? false;
  bool hasShowIf() => _showIf != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _unit = snapshotData['unit'] as String?;
    _keyword = getDataList(snapshotData['keyword']);
    _productName = snapshotData['product_name'] as String?;
    _purchasePrice = castToType<double>(snapshotData['purchase_price']);
    _vendorId = snapshotData['vendor_id'] as String?;
    _showIf = snapshotData['show_if'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('products')
          : FirebaseFirestore.instance.collectionGroup('products');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('products').doc(id);

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? unit,
  String? productName,
  double? purchasePrice,
  String? vendorId,
  bool? showIf,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'unit': unit,
      'product_name': productName,
      'purchase_price': purchasePrice,
      'vendor_id': vendorId,
      'show_if': showIf,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.unit == e2?.unit &&
        listEquality.equals(e1?.keyword, e2?.keyword) &&
        e1?.productName == e2?.productName &&
        e1?.purchasePrice == e2?.purchasePrice &&
        e1?.vendorId == e2?.vendorId &&
        e1?.showIf == e2?.showIf;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.unit,
        e?.keyword,
        e?.productName,
        e?.purchasePrice,
        e?.vendorId,
        e?.showIf
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
