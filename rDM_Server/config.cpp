class DefaultEventhandlers;
class CfgPatches {
    class rDM_server {
        units[] = {"C_man_1"};
        weapons[] = {};
        requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
        fileName = "rDM_server.pbo";
        author = "Tonic(Edited By Genetic)";
    };
};

class CfgFunctions {
    class MySQL_Database {
        tag = "DB";
        class MySQL
        {
            file = "\rDM_Server\Functions\MySQL";
            class numberSafe {};
            class mresArray {};
            class queryRequest{};
            class asyncCall{};
            class insertRequest{};
            class updateRequest{};
            class mresToArray {};
            class insertVehicle {};
            class bool {};
            class mresString {};
            class updatePartial {};
        };
    };

    class serverScripts {
        tag = "SS";
        class serverScripts
        {
            file = "\rDM_Server\Functions\serverScripts";
            class Cleanup {};
        };
    };
};

class CfgVehicles {
    class Car_F;
    class CAManBase;
    class Civilian;
    class Civilian_F : Civilian {
        class EventHandlers;
    };

    class C_man_1 : Civilian_F {
        class EventHandlers: EventHandlers {
            init = "(_this select 0) execVM ""\life_server\fix_headgear.sqf""";
        };
    };
};
