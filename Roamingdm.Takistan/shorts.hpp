#define CONTROL(disp,ctrl) ((findDisplay ##disp) displayCtrl ##ctrl)
#define CONTROL_DATA(ctrl) (lbData[ctrl,lbCurSel ctrl])
#define CONTROL_DATAI(ctrl,index) ctrl lbData index
#define FETCH_CONFIG(TYPE,CFG,SECTION,CLASS,ENTRY) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY)
#define FETCH_CONFIG2(TYPE,CFG,CLASS,ENTRY) TYPE(configFile >> CFG >> CLASS >> ENTRY)
#define FETCH_CONFIG3(TYPE,CFG,SECTION,CLASS,ENTRY,SUB) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB)
#define FETCH_CONFIG4(TYPE,CFG,SECTION,CLASS,ENTRY,SUB,SUB2) TYPE(configFile >> CFG >> SECTION >> CLASS >> ENTRY >> SUB >> SUB2)
#define M_CONFIG(TYPE,CFG,CLASS,ENTRY) TYPE(missionConfigFile >> CFG >> CLASS >> ENTRY)
#define BASE_CONFIG(CFG,CLASS) inheritsFrom(configFile >> CFG >> CLASS)
#define LT_gunList M_CONFIG(getArray,"LootTables","gunList","gun_list")
#define LT_rareguns M_CONFIG(getArray,"LootTables","rareguns","rare_guns")
#define LT_easyguns M_CONFIG(getArray,"LootTables","easyguns","easy_guns")
#define LT_itemlist M_CONFIG(getArray,"LootTables","itemlist","item_list")
#define LT_rareitems M_CONFIG(getArray,"LootTables","rareItems","rare_items")
#define LT_easyitems M_CONFIG(getArray,"LootTables","easyitems","easy_items")
#define LT_attachment M_CONFIG(getArray,"LootTables","attachment","attach_ment")
#define LT_rareatts M_CONFIG(getArray,"LootTables","rareatts","rare_atts")
#define LT_easyatts M_CONFIG(getArray,"LootTables","easyatts","easy_atts")
#define LT_bags M_CONFIG(getArray,"LootTables","bags","bag_s")
#define LT_Uniforms M_CONFIG(getArray,"LootTables","Uniforms","uniforms")
//Scripting Macros
#define CONST(var1,var2) var1 = compileFinal (if (var2 isEqualType "") then {var2} else {str(var2)})
#define CONSTVAR(var) var = compileFinal (if (var isEqualType "") then {var} else {str(var)})
#define FETCH_CONST(var) (call var)
//RemoteExec Macros
#define RSERV 2 //Only server
#define RCLIENT -2 //Except server
#define RANY 0 //Global
