class Socket_Reciever {
    tag = "SOCK";
    class SQL_Socket {
        file = "core\DB";
        class dataQuery {};
        class insertPlayerInfo {};
        class requestReceived {};
        class syncData {};
        class updatePartial {};
        class updateRequest {};
    };
};

class RoamingDM_core {
	tag = "rDM";

	class Loot {
		file = "Loot";
	class Cratedelete {};
	class Itemspawns {};
	};

	class initClient {
		file = "Core\initClient";
		class Vars {};
		class Action {};
	};

	class Admin {
		file = "Core\Admin";
		class Admin_Brick {};
		class Admin_Freeze {};
		class AdminArsenal {};
		class AdminBrick {};
		class AdminCall {};
		class AdminFreeze {};
		class AdminGinfo {};
		class AdminGodMode {};
		class AdminMarks {};
		class AdminNoMarks {};
		class adminTeleport {};
		class Teleport {};
		class vGod {};

	};

	class Core {
		file = "Core\clientFunctions";
		class Checks {};
		class escSave {};
		class fetchCfgDetails {};
		class handleItem {};
		class keyHandler {};
		class loadGear {};
		class playerGear {};
		class Sanity {};
		class saveGear {};
		class SetupHud {};
		class UpdateHud {};
		class vehicleRepair {};
	};
};
