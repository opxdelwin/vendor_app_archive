// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsoldatedPackageStruct extends FFFirebaseStruct {
  ConsoldatedPackageStruct({
    String? productId,
    double? quantity,
    String? productName,
    String? unit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productId = productId,
        _quantity = quantity,
        _productName = productName,
        _unit = unit,
        super(firestoreUtilData);

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  set productId(String? val) => _productId = val;
  bool hasProductId() => _productId != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;
  void incrementQuantity(double amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;
  bool hasProductName() => _productName != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;
  bool hasUnit() => _unit != null;

  static ConsoldatedPackageStruct fromMap(Map<String, dynamic> data) =>
      ConsoldatedPackageStruct(
        productId: data['product_id'] as String?,
        quantity: castToType<double>(data['quantity']),
        productName: data['product_name'] as String?,
        unit: data['unit'] as String?,
      );

  static ConsoldatedPackageStruct? maybeFromMap(dynamic data) => data is Map
      ? ConsoldatedPackageStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'product_id': _productId,
        'quantity': _quantity,
        'product_name': _productName,
        'unit': _unit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product_id': serializeParam(
          _productId,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
      }.withoutNulls;

  static ConsoldatedPackageStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ConsoldatedPackageStruct(
        productId: deserializeParam(
          data['product_id'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.double,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ConsoldatedPackageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConsoldatedPackageStruct &&
        productId == other.productId &&
        quantity == other.quantity &&
        productName == other.productName &&
        unit == other.unit;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([productId, quantity, productName, unit]);
}

ConsoldatedPackageStruct createConsoldatedPackageStruct({
  String? productId,
  double? quantity,
  String? productName,
  String? unit,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConsoldatedPackageStruct(
      productId: productId,
      quantity: quantity,
      productName: productName,
      unit: unit,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ConsoldatedPackageStruct? updateConsoldatedPackageStruct(
  ConsoldatedPackageStruct? consoldatedPackage, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    consoldatedPackage
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConsoldatedPackageStructData(
  Map<String, dynamic> firestoreData,
  ConsoldatedPackageStruct? consoldatedPackage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (consoldatedPackage == null) {
    return;
  }
  if (consoldatedPackage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && consoldatedPackage.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final consoldatedPackageData =
      getConsoldatedPackageFirestoreData(consoldatedPackage, forFieldValue);
  final nestedData =
      consoldatedPackageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      consoldatedPackage.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConsoldatedPackageFirestoreData(
  ConsoldatedPackageStruct? consoldatedPackage, [
  bool forFieldValue = false,
]) {
  if (consoldatedPackage == null) {
    return {};
  }
  final firestoreData = mapToFirestore(consoldatedPackage.toMap());

  // Add any Firestore field values
  consoldatedPackage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConsoldatedPackageListFirestoreData(
  List<ConsoldatedPackageStruct>? consoldatedPackages,
) =>
    consoldatedPackages
        ?.map((e) => getConsoldatedPackageFirestoreData(e, true))
        .toList() ??
    [];
