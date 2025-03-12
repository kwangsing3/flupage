// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiData _$ApiDataFromJson(Map<String, dynamic> json) =>
    ApiData()
      ..api_result = (json['api_result'] as num).toInt()
      ..api_result_msg = json['api_result_msg'] as String
      ..api_data = ApiDataDetails.fromJson(
        json['api_data'] as Map<String, dynamic>,
      );

Map<String, dynamic> _$ApiDataToJson(ApiData instance) => <String, dynamic>{
  'api_result': instance.api_result,
  'api_result_msg': instance.api_result_msg,
  'api_data': instance.api_data,
};

ApiDataDetails _$ApiDataDetailsFromJson(Map<String, dynamic> json) =>
    ApiDataDetails()
      ..api_mst_ship =
          (json['api_mst_ship'] as List<dynamic>?)
              ?.map((e) => ApiMstShip.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_shipgraph =
          (json['api_mst_shipgraph'] as List<dynamic>?)
              ?.map((e) => ApiMstShipGraph.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_equip_exslot =
          (json['api_mst_equip_exslot'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_mst_equip_exslot_ship =
          json['api_mst_equip_exslot_ship'] == null
              ? null
              : ApiMstEquipExslotShip.fromJson(
                json['api_mst_equip_exslot_ship'] as Map<String, dynamic>,
              )
      ..api_mst_stype =
          (json['api_mst_stype'] as List<dynamic>?)
              ?.map((e) => ApiMstStype.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_slotitem =
          (json['api_mst_slotitem'] as List<dynamic>?)
              ?.map((e) => ApiMstSlotitem.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_furnituregraph =
          (json['api_mst_furnituregraph'] as List<dynamic>?)
              ?.map(
                (e) => ApiMstFurnituregraph.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..api_mst_useitem =
          (json['api_mst_useitem'] as List<dynamic>?)
              ?.map((e) => ApiMstUseitem.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_payitem =
          (json['api_mst_payitem'] as List<dynamic>?)
              ?.map((e) => ApiMstPayitem.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_item_shop =
          json['api_mst_item_shop'] == null
              ? null
              : ApiMstItemShop.fromJson(
                json['api_mst_item_shop'] as Map<String, dynamic>,
              )
      ..api_mst_maparea =
          (json['api_mst_maparea'] as List<dynamic>?)
              ?.map((e) => ApiMstMaparea.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_mapinfo =
          (json['api_mst_mapinfo'] as List<dynamic>?)
              ?.map((e) => ApiMstMapinfo.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_mapbgm =
          (json['api_mst_mapbgm'] as List<dynamic>?)
              ?.map((e) => ApiMstMapbgm.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_mission =
          (json['api_mst_mission'] as List<dynamic>?)
              ?.map((e) => ApiMstMission.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_const =
          json['api_mst_const'] == null
              ? null
              : ApiMstConst.fromJson(
                json['api_mst_const'] as Map<String, dynamic>,
              )
      ..api_mst_shipupgrade =
          (json['api_mst_shipupgrade'] as List<dynamic>?)
              ?.map(
                (e) => ApiMstShipupgrade.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..api_mst_bgm =
          (json['api_mst_bgm'] as List<dynamic>?)
              ?.map((e) => ApiMstBgm.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_equip_ship =
          (json['api_mst_equip_ship'] as List<dynamic>?)
              ?.map((e) => ApiMstEquipShip.fromJson(e as Map<String, dynamic>))
              .toList()
      ..api_mst_furniture =
          (json['api_mst_furniture'] as List<dynamic>?)
              ?.map((e) => ApiMstFurniture.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$ApiDataDetailsToJson(ApiDataDetails instance) =>
    <String, dynamic>{
      'api_mst_ship': instance.api_mst_ship,
      'api_mst_shipgraph': instance.api_mst_shipgraph,
      'api_mst_equip_exslot': instance.api_mst_equip_exslot,
      'api_mst_equip_exslot_ship': instance.api_mst_equip_exslot_ship,
      'api_mst_stype': instance.api_mst_stype,
      'api_mst_slotitem': instance.api_mst_slotitem,
      'api_mst_furnituregraph': instance.api_mst_furnituregraph,
      'api_mst_useitem': instance.api_mst_useitem,
      'api_mst_payitem': instance.api_mst_payitem,
      'api_mst_item_shop': instance.api_mst_item_shop,
      'api_mst_maparea': instance.api_mst_maparea,
      'api_mst_mapinfo': instance.api_mst_mapinfo,
      'api_mst_mapbgm': instance.api_mst_mapbgm,
      'api_mst_mission': instance.api_mst_mission,
      'api_mst_const': instance.api_mst_const,
      'api_mst_shipupgrade': instance.api_mst_shipupgrade,
      'api_mst_bgm': instance.api_mst_bgm,
      'api_mst_equip_ship': instance.api_mst_equip_ship,
      'api_mst_furniture': instance.api_mst_furniture,
    };

ApiMstShip _$ApiMstShipFromJson(Map<String, dynamic> json) =>
    ApiMstShip()
      ..api_name = json['api_name'] as String
      ..api_sortno = (json['api_sortno'] as num?)?.toInt()
      ..api_id = (json['api_id'] as num).toInt()
      ..api_sort_id = (json['api_sort_id'] as num).toInt()
      ..api_stype = (json['api_stype'] as num).toInt()
      ..api_ctype = (json['api_ctype'] as num).toInt()
      ..api_afterlv = (json['api_afterlv'] as num?)?.toInt()
      ..api_aftershipid = json['api_aftershipid'] as String?
      ..api_taik =
          (json['api_taik'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_souk =
          (json['api_souk'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_houg =
          (json['api_houg'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_raig =
          (json['api_raig'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_tyku =
          (json['api_tyku'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_luck =
          (json['api_luck'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_soku = (json['api_soku'] as num).toInt()
      ..api_leng = (json['api_leng'] as num?)?.toInt()
      ..api_slot_num = (json['api_slot_num'] as num).toInt()
      ..api_maxeq =
          (json['api_maxeq'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_buildtime = (json['api_buildtime'] as num?)?.toInt()
      ..api_broken =
          (json['api_broken'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_powup =
          (json['api_powup'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..api_backs = (json['api_backs'] as num?)?.toInt()
      ..api_getmes = json['api_getmes'] as String?
      ..api_afterfuel = (json['api_afterfuel'] as num?)?.toInt()
      ..api_afterbull = (json['api_afterbull'] as num?)?.toInt()
      ..api_fuel_max = (json['api_fuel_max'] as num?)?.toInt()
      ..api_bull_max = (json['api_bull_max'] as num?)?.toInt()
      ..api_voicef = (json['api_voicef'] as num?)?.toInt()
      ..api_tais =
          (json['api_tais'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$ApiMstShipToJson(ApiMstShip instance) =>
    <String, dynamic>{
      'api_name': instance.api_name,
      'api_sortno': instance.api_sortno,
      'api_id': instance.api_id,
      'api_sort_id': instance.api_sort_id,
      'api_stype': instance.api_stype,
      'api_ctype': instance.api_ctype,
      'api_afterlv': instance.api_afterlv,
      'api_aftershipid': instance.api_aftershipid,
      'api_taik': instance.api_taik,
      'api_souk': instance.api_souk,
      'api_houg': instance.api_houg,
      'api_raig': instance.api_raig,
      'api_tyku': instance.api_tyku,
      'api_luck': instance.api_luck,
      'api_soku': instance.api_soku,
      'api_leng': instance.api_leng,
      'api_slot_num': instance.api_slot_num,
      'api_maxeq': instance.api_maxeq,
      'api_buildtime': instance.api_buildtime,
      'api_broken': instance.api_broken,
      'api_powup': instance.api_powup,
      'api_backs': instance.api_backs,
      'api_getmes': instance.api_getmes,
      'api_afterfuel': instance.api_afterfuel,
      'api_afterbull': instance.api_afterbull,
      'api_fuel_max': instance.api_fuel_max,
      'api_bull_max': instance.api_bull_max,
      'api_voicef': instance.api_voicef,
      'api_tais': instance.api_tais,
    };

ApiMstShipGraph _$ApiMstShipGraphFromJson(Map<String, dynamic> json) =>
    ApiMstShipGraph()
      ..api_pab =
          (json['api_pab'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$ApiMstShipGraphToJson(ApiMstShipGraph instance) =>
    <String, dynamic>{'api_pab': instance.api_pab};

ApiMstEquipExslotShip _$ApiMstEquipExslotShipFromJson(
  Map<String, dynamic> json,
) => ApiMstEquipExslotShip();

Map<String, dynamic> _$ApiMstEquipExslotShipToJson(
  ApiMstEquipExslotShip instance,
) => <String, dynamic>{};

ApiMstStype _$ApiMstStypeFromJson(Map<String, dynamic> json) => ApiMstStype();

Map<String, dynamic> _$ApiMstStypeToJson(ApiMstStype instance) =>
    <String, dynamic>{};

ApiMstSlotitem _$ApiMstSlotitemFromJson(Map<String, dynamic> json) =>
    ApiMstSlotitem();

Map<String, dynamic> _$ApiMstSlotitemToJson(ApiMstSlotitem instance) =>
    <String, dynamic>{};

ApiMstFurnituregraph _$ApiMstFurnituregraphFromJson(
  Map<String, dynamic> json,
) => ApiMstFurnituregraph();

Map<String, dynamic> _$ApiMstFurnituregraphToJson(
  ApiMstFurnituregraph instance,
) => <String, dynamic>{};

ApiMstUseitem _$ApiMstUseitemFromJson(Map<String, dynamic> json) =>
    ApiMstUseitem();

Map<String, dynamic> _$ApiMstUseitemToJson(ApiMstUseitem instance) =>
    <String, dynamic>{};

ApiMstPayitem _$ApiMstPayitemFromJson(Map<String, dynamic> json) =>
    ApiMstPayitem();

Map<String, dynamic> _$ApiMstPayitemToJson(ApiMstPayitem instance) =>
    <String, dynamic>{};

ApiMstItemShop _$ApiMstItemShopFromJson(Map<String, dynamic> json) =>
    ApiMstItemShop();

Map<String, dynamic> _$ApiMstItemShopToJson(ApiMstItemShop instance) =>
    <String, dynamic>{};

ApiMstMaparea _$ApiMstMapareaFromJson(Map<String, dynamic> json) =>
    ApiMstMaparea()
      ..api_id = (json['api_id'] as num?)?.toInt()
      ..api_name = json['api_name'] as String?
      ..api_type = (json['api_type'] as num?)?.toInt();

Map<String, dynamic> _$ApiMstMapareaToJson(ApiMstMaparea instance) =>
    <String, dynamic>{
      'api_id': instance.api_id,
      'api_name': instance.api_name,
      'api_type': instance.api_type,
    };

ApiMstMapinfo _$ApiMstMapinfoFromJson(Map<String, dynamic> json) =>
    ApiMstMapinfo();

Map<String, dynamic> _$ApiMstMapinfoToJson(ApiMstMapinfo instance) =>
    <String, dynamic>{};

ApiMstMapbgm _$ApiMstMapbgmFromJson(Map<String, dynamic> json) =>
    ApiMstMapbgm();

Map<String, dynamic> _$ApiMstMapbgmToJson(ApiMstMapbgm instance) =>
    <String, dynamic>{};

ApiMstMission _$ApiMstMissionFromJson(Map<String, dynamic> json) =>
    ApiMstMission();

Map<String, dynamic> _$ApiMstMissionToJson(ApiMstMission instance) =>
    <String, dynamic>{};

ApiMstConst _$ApiMstConstFromJson(Map<String, dynamic> json) =>
    ApiMstConst()
      ..api_parallel_quest_max = ApiParallelQuestMax.fromJson(
        json['api_parallel_quest_max'] as Map<String, dynamic>,
      );

Map<String, dynamic> _$ApiMstConstToJson(ApiMstConst instance) =>
    <String, dynamic>{
      'api_parallel_quest_max': instance.api_parallel_quest_max,
    };

ApiParallelQuestMax _$ApiParallelQuestMaxFromJson(Map<String, dynamic> json) =>
    ApiParallelQuestMax()
      ..api_string_value = json['api_string_value'] as String?
      ..api_int_value = (json['api_int_value'] as num?)?.toInt();

Map<String, dynamic> _$ApiParallelQuestMaxToJson(
  ApiParallelQuestMax instance,
) => <String, dynamic>{
  'api_string_value': instance.api_string_value,
  'api_int_value': instance.api_int_value,
};

ApiMstShipupgrade _$ApiMstShipupgradeFromJson(Map<String, dynamic> json) =>
    ApiMstShipupgrade();

Map<String, dynamic> _$ApiMstShipupgradeToJson(ApiMstShipupgrade instance) =>
    <String, dynamic>{};

ApiMstBgm _$ApiMstBgmFromJson(Map<String, dynamic> json) =>
    ApiMstBgm()
      ..api_id = (json['api_id'] as num?)?.toInt()
      ..api_name = json['api_name'] as String?;

Map<String, dynamic> _$ApiMstBgmToJson(ApiMstBgm instance) => <String, dynamic>{
  'api_id': instance.api_id,
  'api_name': instance.api_name,
};

ApiMstEquipShip _$ApiMstEquipShipFromJson(Map<String, dynamic> json) =>
    ApiMstEquipShip();

Map<String, dynamic> _$ApiMstEquipShipToJson(ApiMstEquipShip instance) =>
    <String, dynamic>{};

ApiMstFurniture _$ApiMstFurnitureFromJson(Map<String, dynamic> json) =>
    ApiMstFurniture();

Map<String, dynamic> _$ApiMstFurnitureToJson(ApiMstFurniture instance) =>
    <String, dynamic>{};
