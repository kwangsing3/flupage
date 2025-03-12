// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
part 'interface.g.dart';

ApiData kancolleData = ApiData();
// 读取 JSON 文件并解析
Future<void> loadJsonData() async {
  if (kancolleData.api_result == 1) return;
  String assetPath = 'getData.json';
  String jsonString = await rootBundle.loadString(assetPath);
  kancolleData = ApiData.fromJson(jsonDecode(jsonString));
}

String convertShipClass(int num) {
  const sample = [
    "綾波型",
    "伊勢型",
    "加賀型",
    "球磨型",
    "暁型",
    "金剛型",
    "古鷹型",
    "高雄型",
    "最上型",
    "初春型",
    "祥鳳型",
    "吹雪型",
    "青葉型",
    "赤城型",
    "千歳型",
    "川内型",
    "蒼龍型",
    "朝潮型",
    "長門型",
    "長良型",
    "天龍型",
    "島風型",
    "白露型",
    "飛鷹型",
    "飛龍型",
    "扶桑型",
    "鳳翔型",
    "睦月型",
    "妙高型",
    "陽炎型",
    "利根型",
    "龍驤型",
    "翔鶴型",
    "夕張型",
    "海大VI型",
    "巡潜乙型改二",
    "大和型",
    "夕雲型",
    "巡潜乙型",
    "巡潜3型",
    "阿賀野型",
    "霧の艦隊",
    "大鳳型",
    "潜特型(伊400型潜水艦)",
    "特種船丙型",
    "三式潜航輸送艇",
    "Bismarck級",
    "Z1型",
    "工作艦",
    "大鯨型",
    "龍鳳型",
    "大淀型",
    "雲龍型",
    "秋月型",
    "Admiral Hipper級",
    "香取型",
    "UボートIXC型",
    "V.Veneto級",
    "秋津洲型",
    "改風早型",
    "Maestrale級",
    "瑞穂型",
    "Graf Zeppelin級",
    "Zara級",
    "Iowa級",
    "神風型",
    "Queen Elizabeth級",
    "Aquila級",
    "Lexington級",
    "C.Teste級",
    "巡潜甲型改二",
    "神威型",
    "Гангут級",
    "占守型",
    "春日丸級",
    "大鷹型",
    "択捉型",
    "Ark Royal級",
    "Richelieu級",
    "Guglielmo Marconi級",
    "Ташкент級",
    "J級",
    "Casablanca級",
    "Essex級",
    "日振型",
    "呂号潜水艦",
    "John C.Butler級",
    "Nelson級",
    "Gotland級",
    "日進型",
    "Fletcher級",
    "L.d.S.D.d.Abruzzi級",
    "Colorado級",
    "御蔵型",
    "Northampton級",
    "Perth級",
    "陸軍特種船(R1)",
    "De Ruyter級",
    "Atlanta級",
    "迅鯨型",
    "松型",
    "South Dakota級",
    "巡潜丙型",
    "丁型海防艦",
    "Yorktown級",
    "St. Louis級",
    "North Carolina級",
    "Town級",
  ];
  return num > sample.length ? "newType" : sample[num - 1];
}

@JsonSerializable()
class ApiData {
  int api_result = 0;
  String api_result_msg = "";
  ApiDataDetails api_data = ApiDataDetailsImpl();
  ApiData();
  factory ApiData.fromJson(Map<String, dynamic> json) =>
      _$ApiDataFromJson(json);
  Map<String, dynamic> toJson() => _$ApiDataToJson(this);
}

@JsonSerializable()
class ApiDataDetails {
  List<ApiMstShip>? api_mst_ship = [];
  List<ApiMstShipGraph>? api_mst_shipgraph = [];
  List<int>? api_mst_equip_exslot = [];
  ApiMstEquipExslotShip? api_mst_equip_exslot_ship =
      ApiMstEquipExslotShipImpl();
  List<ApiMstStype>? api_mst_stype = [];
  List<ApiMstSlotitem>? api_mst_slotitem = [];
  List<ApiMstFurnituregraph>? api_mst_furnituregraph = [];
  List<ApiMstUseitem>? api_mst_useitem = [];
  List<ApiMstPayitem>? api_mst_payitem = [];
  ApiMstItemShop? api_mst_item_shop = ApiMstItemShopImpl();
  List<ApiMstMaparea>? api_mst_maparea = [];
  List<ApiMstMapinfo>? api_mst_mapinfo = [];
  List<ApiMstMapbgm>? api_mst_mapbgm = [];
  List<ApiMstMission>? api_mst_mission = [];
  ApiMstConst? api_mst_const = ApiMstConstImpl();
  List<ApiMstShipupgrade>? api_mst_shipupgrade = [];
  List<ApiMstBgm>? api_mst_bgm = [];
  List<ApiMstEquipShip>? api_mst_equip_ship = [];
  List<ApiMstFurniture>? api_mst_furniture = [];

  ApiDataDetails();

  factory ApiDataDetails.fromJson(Map<String, dynamic> json) =>
      _$ApiDataDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$ApiDataDetailsToJson(this);
}

@JsonSerializable()
class ApiMstShip {
  ApiMstShip();
  //int api_voicef = 0;
  int api_id = 0; // 資料ID
  int? api_sortno = 0; // 船艦ID
  String api_name = ''; // 船艦名稱
  int api_sort_id = 0; // 船艦讀音
  int api_stype = 0; // 船艦類型
  int api_ctype = 0; // 船艦分類
  int? api_afterlv; // 升級所需等級
  String? api_aftershipid; // 升級後的船艦ID
  List<int>? api_taik; // 耐久
  List<int>? api_souk; // 裝甲
  List<int>? api_houg; // 火力
  List<int>? api_raig; // 雷裝
  List<int>? api_tyku; // 對空
  List<int>? api_luck; // 運
  int api_soku = 0; // 速度
  int? api_leng; // 射程
  int api_slot_num = 0; // 裝備槽數量
  List<int>? api_maxeq; // 最大裝備數量
  int? api_buildtime; // 建造時間
  List<int>? api_broken; // 解體資源
  List<int>? api_powup; // 改修資源
  int? api_backs; // 背景
  String? api_getmes; // 獲得訊息
  int? api_afterfuel; // 升級所需燃料
  int? api_afterbull; // 升級所需彈藥
  int? api_fuel_max; // 最大燃料
  int? api_bull_max; // 最大彈藥
  int? api_voicef; // 聲音標誌
  List<int>? api_tais; // 對潛
  factory ApiMstShip.fromJson(Map<String, dynamic> json) =>
      _$ApiMstShipFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstShipToJson(this);
}

@JsonSerializable()
class ApiMstShipGraph {
  List<int>? api_pab = [];

  ApiMstShipGraph();

  factory ApiMstShipGraph.fromJson(Map<String, dynamic> json) =>
      _$ApiMstShipGraphFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstShipGraphToJson(this);
}

@JsonSerializable()
class ApiMstEquipExslotShip {
  ApiMstEquipExslotShip();

  factory ApiMstEquipExslotShip.fromJson(Map<String, dynamic> json) =>
      _$ApiMstEquipExslotShipFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstEquipExslotShipToJson(this);
}

@JsonSerializable()
class ApiMstStype {
  ApiMstStype();

  factory ApiMstStype.fromJson(Map<String, dynamic> json) =>
      _$ApiMstStypeFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstStypeToJson(this);
}

@JsonSerializable()
class ApiMstSlotitem {
  ApiMstSlotitem();

  factory ApiMstSlotitem.fromJson(Map<String, dynamic> json) =>
      _$ApiMstSlotitemFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstSlotitemToJson(this);
}

@JsonSerializable()
class ApiMstFurnituregraph {
  ApiMstFurnituregraph();

  factory ApiMstFurnituregraph.fromJson(Map<String, dynamic> json) =>
      _$ApiMstFurnituregraphFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstFurnituregraphToJson(this);
}

@JsonSerializable()
class ApiMstUseitem {
  ApiMstUseitem();

  factory ApiMstUseitem.fromJson(Map<String, dynamic> json) =>
      _$ApiMstUseitemFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstUseitemToJson(this);
}

@JsonSerializable()
class ApiMstPayitem {
  ApiMstPayitem();

  factory ApiMstPayitem.fromJson(Map<String, dynamic> json) =>
      _$ApiMstPayitemFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstPayitemToJson(this);
}

@JsonSerializable()
class ApiMstItemShop {
  ApiMstItemShop();

  factory ApiMstItemShop.fromJson(Map<String, dynamic> json) =>
      _$ApiMstItemShopFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstItemShopToJson(this);
}

@JsonSerializable()
class ApiMstMaparea {
  int? api_id = 0;
  String? api_name = "";
  int? api_type = 0;

  ApiMstMaparea();

  factory ApiMstMaparea.fromJson(Map<String, dynamic> json) =>
      _$ApiMstMapareaFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstMapareaToJson(this);
}

@JsonSerializable()
class ApiMstMapinfo {
  ApiMstMapinfo();

  factory ApiMstMapinfo.fromJson(Map<String, dynamic> json) =>
      _$ApiMstMapinfoFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstMapinfoToJson(this);
}

@JsonSerializable()
class ApiMstMapbgm {
  ApiMstMapbgm();

  factory ApiMstMapbgm.fromJson(Map<String, dynamic> json) =>
      _$ApiMstMapbgmFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstMapbgmToJson(this);
}

@JsonSerializable()
class ApiMstMission {
  ApiMstMission();

  factory ApiMstMission.fromJson(Map<String, dynamic> json) =>
      _$ApiMstMissionFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstMissionToJson(this);
}

@JsonSerializable()
class ApiMstConst {
  ApiParallelQuestMax api_parallel_quest_max = ApiParallelQuestMaxImpl();

  ApiMstConst();

  factory ApiMstConst.fromJson(Map<String, dynamic> json) =>
      _$ApiMstConstFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstConstToJson(this);
}

@JsonSerializable()
class ApiParallelQuestMax {
  String? api_string_value = "";
  int? api_int_value = 0;

  ApiParallelQuestMax();

  factory ApiParallelQuestMax.fromJson(Map<String, dynamic> json) =>
      _$ApiParallelQuestMaxFromJson(json);
  Map<String, dynamic> toJson() => _$ApiParallelQuestMaxToJson(this);
}

@JsonSerializable()
class ApiMstShipupgrade {
  ApiMstShipupgrade();

  factory ApiMstShipupgrade.fromJson(Map<String, dynamic> json) =>
      _$ApiMstShipupgradeFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstShipupgradeToJson(this);
}

@JsonSerializable()
class ApiMstBgm {
  int? api_id = 0;
  String? api_name = "";

  ApiMstBgm();

  factory ApiMstBgm.fromJson(Map<String, dynamic> json) =>
      _$ApiMstBgmFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstBgmToJson(this);
}

@JsonSerializable()
class ApiMstEquipShip {
  ApiMstEquipShip();

  factory ApiMstEquipShip.fromJson(Map<String, dynamic> json) =>
      _$ApiMstEquipShipFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstEquipShipToJson(this);
}

@JsonSerializable()
class ApiMstFurniture {
  ApiMstFurniture();

  factory ApiMstFurniture.fromJson(Map<String, dynamic> json) =>
      _$ApiMstFurnitureFromJson(json);
  Map<String, dynamic> toJson() => _$ApiMstFurnitureToJson(this);
}

// 以下是具體實現類別，用於初始化抽象類別的變數
class ApiDataDetailsImpl extends ApiDataDetails {}

class ApiMstEquipExslotShipImpl extends ApiMstEquipExslotShip {}

class ApiMstItemShopImpl extends ApiMstItemShop {}

class ApiMstConstImpl extends ApiMstConst {}

class ApiParallelQuestMaxImpl extends ApiParallelQuestMax {}
