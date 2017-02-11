class infoDialog {
	idd = Info_Dialog;
    movingEnable = 1;
	enableSimulation = 1;

class controlsBackground {


class RscBackground : rDM_RscText {
	colorBackground[] = {0,0,0,0.7};
	idc = -1;
	x = 0.22 * safezoneW + safezoneX;
	y = 0.01 * safezoneH + safezoneY;
	w = .556 * safezoneW;
	h = 0.981 * safezoneH;
	};

	class Title : rDM_RscText {
		colorBackground[] = {0,0,0,0};
		idc = -1;
		sizeEx = 0.07;
		text = "Welcome To ROAMING DEATHMATCH";
		x = 0.28 * safezoneW + safezoneX;
		y = 0.02 * safezoneH + safezoneY;
		w = 0.55 * safezoneW;
		h = 0.06 * safezoneH;
	};

	class rDMPic : rDM_RscPicture {
		colorBackground[] = {0,0,0,0};
		idc = -1;
		sizeEx = 0.07;
		text = "Images\info.jpg";
		x = 0.305 * safezoneW + safezoneX;
		y = 0.08 * safezoneH + safezoneY;
		w = 0.38 * safezoneW;
		h = 0.31 * safezoneH;
	};


		class Body0 : rDM_RscText {
		colorBackground[] = {0,0,0,0};
		idc = -1;
		sizeEx = 0.04;
		text = "You will be placed near a town where you can loot.";
		x = 0.3 * safezoneW + safezoneX;
		y = -0.04 * safezoneH + safezoneY;
		w = 0.55 * safezoneW;
		h = 0.9 * safezoneH;
	};

			class Body1 : rDM_RscText {
		colorBackground[] = {0,0,0,0};
		idc = -1;
		sizeEx = 0.04;
		text = "you may come across other players.";
		x = 0.3 * safezoneW + safezoneX;
		y = -0.01 * safezoneH + safezoneY;
		w = 0.55 * safezoneW;
		h = 0.9 * safezoneH;
	};

			class Body2 : rDM_RscText {
		colorBackground[] = {0,0,0,0};
		idc = -1;
		sizeEx = 0.04;
		text = "If and when you find another player you have 2 choices,";
		x = 0.3 * safezoneW + safezoneX;
		y = 0.03 * safezoneH + safezoneY;
		w = 0.55 * safezoneW;
		h = 0.9 * safezoneH;
	};

			class Body3 : rDM_RscText {
		colorBackground[] = {0,0,0,0};
		idc = -1;
		sizeEx = 0.04;
		text = "1 KILL them 2 become Allied with them";
		x = 0.3 * safezoneW + safezoneX;
		y = 0.06 * safezoneH + safezoneY;
		w = 0.55 * safezoneW;
		h = 0.9 * safezoneH;
	};

	class closebutton: rDM_RscButtonSilent {
	idc = -1;
	colorBackground[] = {0,0,0,0.9};
	text = "Righto.";
	onButtonClick = "closeDialog 0;";
            x = 0.46 * safezoneW + safezoneX; 
            y = 0.93 * safezoneH + safezoneY;
 			w = .073 * safezoneW;
			h = .03 * safezoneH;
		};
	};
};
