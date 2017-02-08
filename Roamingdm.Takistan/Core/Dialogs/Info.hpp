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
		text = "Welcome To RANDOM DEATHMATCH";
		x = 0.28 * safezoneW + safezoneX;
		y = 0.02 * safezoneH + safezoneY;
		w = 0.55 * safezoneW;
		h = 0.06 * safezoneH;
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
