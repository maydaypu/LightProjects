{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 1372.0, 779.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-72",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, -42.0, 407.0, 35.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 35.5, 143.0, 407.0, 35.0 ],
					"text" : ";\rmax launchbrowser https://developers.meethue.com/develop/get-started-2/"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Courier New Bold",
					"fontsize" : 22.0,
					"id" : "obj-65",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, -164.0, 469.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 13.0, 469.0, 31.0 ],
					"text" : "Philips Hue Light Controller"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"fontface" : 0,
					"fontname" : "Courier New",
					"fontsize" : 14.0,
					"id" : "obj-62",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, -98.0, 469.0, 54.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 31.0, 87.0, 469.0, 54.0 ],
					"text" : "To understand how to access a Hue bridge’s IP address and to make a request for a username, follow the \"Get Started in Philips Hue API\" by launching this webpage:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Courier New Bold",
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, -126.0, 469.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 54.5, 400.0, 20.0 ],
					"text" : "Developed by Josephine Pu-Sheng Wang on June 22, 2022"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1106.0, 736.0, 248.0, 33.0 ],
					"text" : "For troubleshooting maxurl:\nEdit below dict @embed"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 1106.0, 827.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "put",
						"url" : "IP/api/KEY/lights/2/state",
						"post_data" : 						{
							"hue" : 53297,
							"sat" : 12,
							"bri" : 202,
							"transitiontime" : 0
						}
,
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1106.0, 783.5, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.9375, 223.0, 90.0, 22.0 ],
					"text" : "pak transition 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 735.0, 22.0, 57.5, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 215.5, 57.5, 20.0 ],
					"text" : "ON/OFF"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 735.0, 43.0, 37.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 236.5, 37.0, 37.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.5, 342.0, 121.0, 22.0 ],
					"text" : "pak on sym sym 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 771.25, 295.0, 145.0, 22.0 ],
					"text" : "KEY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.5, 295.0, 82.0, 22.0 ],
					"text" : "IP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 771.25, 254.0, 75.0, 22.0 ],
					"text" : "receive KEY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 672.5, 254.0, 62.0, 22.0 ],
					"text" : "receive IP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 194.5, 294.0, 62.0, 22.0 ],
					"text" : "send KEY"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 86.5, 294.0, 49.0, 22.0 ],
					"text" : "send IP"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.466666666666667, 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 856.9375, 382.0, 88.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 294.0, 88.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "lightswitch.js",
						"parameter_enable" : 0
					}
,
					"text" : "js lightswitch.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1282.0, 508.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.0, -10.0, 153.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 121.0, 153.0, 20.0 ],
					"text" : "CHANGE LIGHT STATE"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 747.0, 622.5, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 348.0, 150.0, 20.0 ],
					"text" : "http requests status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1372.1875, 51.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1237.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1156.1875, 53.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 187.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 937.1875, 53.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 187.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-190",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1358.0, 435.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1117.0, 372.0, 150.0, 20.0 ],
					"text" : "New Name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1211.0, 403.0, 52.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 372.0, 52.0, 20.0 ],
					"text" : "Light ID"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-186",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1120.0, 327.0, 153.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 334.0, 153.0, 20.0 ],
					"text" : "CHANGE LIGHT NAME"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1309.0, 592.0, 47.0, 22.0 ],
					"text" : "delay 5"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "put",
						"url" : "http://IP/api/KEY/lights/ID",
						"post_data" : 						{
							"name" : "Light 3"
						}
,
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 1257.0, 629.0, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 254.0, 123.0, 22.0 ],
					"text" : "tosymbol @separator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 209.0, 81.0, 22.0 ],
					"text" : "append /state"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1282.0, 546.0, 165.0, 22.0 ],
					"text" : "prepend set post_data::name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1190.0, 508.0, 59.0, 22.0 ],
					"text" : "trigger b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 1257.0, 661.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-171",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1106.0, 580.0, 89.0, 22.0 ],
					"text" : "prepend set url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1062.0, 508.0, 75.0, 22.0 ],
					"text" : "receive URL"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1135.0, 463.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 1135.0, 365.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1135.0, 435.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-169",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1135.0, 403.0, 74.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 392.0, 74.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1106.0, 546.0, 103.0, 22.0 ],
					"text" : "combine URL / ID"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-160",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 833.1875, 22.0, 79.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.0, 163.0, 121.0, 20.0 ],
					"text" : "Transition Time (sec)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1282.0, 463.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 1282.0, 365.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1282.0, 435.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-155",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1282.0, 403.0, 174.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1117.0, 392.0, 174.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1472.6875, 185.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1031.9375, 185.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-146",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 855.9375, 185.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-145",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1372.1875, 185.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1156.1875, 185.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 937.1875, 185.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 327.0, 94.0, 22.0 ],
					"text" : "receive attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 769.6875, 185.0, 81.0, 22.0 ],
					"text" : "send attribute"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 621.0, 435.0, 79.0, 22.0 ],
					"text" : "receive value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1256.1875, 185.0, 67.0, 22.0 ],
					"text" : "send value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 856.1875, 140.0, 30.0, 22.0 ],
					"text" : "* 10"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-137",
					"maxclass" : "flonum",
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 833.1875, 58.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 671.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 769.6875, 140.0, 80.0, 22.0 ],
					"text" : "transitiontime"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 683.375, 643.0, 374.625, 213.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 392.0, 353.75, 358.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 537.0, 435.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1372.1875, 29.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1237.0, 163.0, 150.0, 20.0 ],
					"text" : "BRIGHTNESS 0~254"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1156.1875, 29.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 163.0, 150.0, 20.0 ],
					"text" : "SATURATION 0~254"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 937.1875, 29.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 163.0, 150.0, 20.0 ],
					"text" : "HUE (0~65535)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 571.0, 523.0, 47.0, 22.0 ],
					"text" : "delay 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1372.1875, 95.0, 182.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1237.0, 214.0, 182.0, 25.0 ],
					"size" : 255.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "number",
					"maximum" : 254,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1472.6875, 140.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1372.1875, 137.5, 29.5, 22.0 ],
					"text" : "bri"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1156.1875, 95.0, 182.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1021.0, 214.0, 182.0, 25.0 ],
					"size" : 255.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "number",
					"maximum" : 254,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1256.1875, 137.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1156.1875, 137.5, 29.5, 22.0 ],
					"text" : "sat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 404.0, 123.0, 22.0 ],
					"text" : "tosymbol @separator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 372.0, 115.0, 22.0 ],
					"text" : "prepend post_data::"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 937.1875, 95.0, 182.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 802.0, 214.0, 182.0, 25.0 ],
					"size" : 65536.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "number",
					"maximum" : 65535,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1031.9375, 137.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 937.1875, 137.5, 42.5, 22.0 ],
					"text" : "hue"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 473.0, 103.0, 22.0 ],
					"text" : "pack set key 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 537.0, 634.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"body" : 						{
							"2" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 254,
									"hue" : 8692,
									"sat" : 111,
									"effect" : "none",
									"xy" : [ 0.4388, 0.4049 ],
									"ct" : 337,
									"alert" : "select",
									"colormode" : "ct",
									"mode" : "homeautomation",
									"reachable" : 1
								}
,
								"swupdate" : 								{
									"state" : "noupdates",
									"lastinstall" : "2021-08-28T21:50:47"
								}
,
								"type" : "Extended color light",
								"name" : "Living Room Pendant",
								"modelid" : "LCT016",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 1000,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "powerfail",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:03:ec:94:f8-0b",
								"swversion" : "1.88.1",
								"swconfigid" : "47ACF9B2",
								"productid" : "Philips-LCT016-1-A19ECLv5"
							}
,
							"8" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 160,
									"hue" : 64410,
									"sat" : 254,
									"effect" : "none",
									"xy" : [ 0.6586, 0.2924 ],
									"ct" : 500,
									"alert" : "select",
									"colormode" : "xy",
									"mode" : "homeautomation",
									"reachable" : 1
								}
,
								"swupdate" : 								{
									"state" : "noupdates",
									"lastinstall" : "2021-12-03T01:32:01"
								}
,
								"type" : "Extended color light",
								"name" : "Noodle",
								"modelid" : "LCT016",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 1000,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:03:b3:f5:8c-0b",
								"swversion" : "1.88.1",
								"swconfigid" : "47ACF9B2",
								"productid" : "Philips-LCT016-1-A19ECLv5"
							}
,
							"9" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 100,
									"hue" : 54777,
									"sat" : 195,
									"effect" : "none",
									"xy" : [ 0.378, 0.2074 ],
									"ct" : 244,
									"alert" : "select",
									"colormode" : "xy",
									"mode" : "homeautomation",
									"reachable" : 1
								}
,
								"swupdate" : 								{
									"state" : "noupdates",
									"lastinstall" : "2021-12-03T01:34:10"
								}
,
								"type" : "Extended color light",
								"name" : "Bedroom Pendant",
								"modelid" : "LCT016",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 1000,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:03:ec:97:c8-0b",
								"swversion" : "1.88.1",
								"swconfigid" : "47ACF9B2",
								"productid" : "Philips-LCT016-1-A19ECLv5"
							}
,
							"10" : 							{
								"state" : 								{
									"on" : 1,
									"bri" : 254,
									"hue" : 8692,
									"sat" : 111,
									"effect" : "none",
									"xy" : [ 0.4388, 0.4049 ],
									"ct" : 337,
									"alert" : "select",
									"colormode" : "ct",
									"mode" : "homeautomation",
									"reachable" : 1
								}
,
								"swupdate" : 								{
									"state" : "noupdates",
									"lastinstall" : "2021-12-03T01:34:14"
								}
,
								"type" : "Extended color light",
								"name" : "Dylan",
								"modelid" : "LCT016",
								"manufacturername" : "Signify Netherlands B.V.",
								"productname" : "Hue color lamp",
								"capabilities" : 								{
									"certified" : 1,
									"control" : 									{
										"mindimlevel" : 1000,
										"maxlumen" : 800,
										"colorgamuttype" : "C",
										"colorgamut" : [ [ 0.6915, 0.3083 ], [ 0.17, 0.7 ], [ 0.1532, 0.0475 ] ],
										"ct" : 										{
											"min" : 153,
											"max" : 500
										}

									}
,
									"streaming" : 									{
										"renderer" : 1,
										"proxy" : 1
									}

								}
,
								"config" : 								{
									"archetype" : "sultanbulb",
									"function" : "mixed",
									"direction" : "omnidirectional",
									"startup" : 									{
										"mode" : "safety",
										"configured" : 1
									}

								}
,
								"uniqueid" : "00:17:88:01:03:ee:36:2b-0b",
								"swversion" : "1.88.1",
								"swconfigid" : "47ACF9B2",
								"productid" : "Philips-LCT016-1-A19ECLv5"
							}

						}
,
						"header" : "HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Fri, 23 Sep 2022 03:19:04 GMT\r\nContent-Type: application/json\r\nConnection: close\r\nCache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0\r\nPragma: no-cache\r\nExpires: Mon, 1 Aug 2011 09:00:00 GMT\r\nAccess-Control-Max-Age: 3600\r\nAccess-Control-Allow-Origin: *\r\nAccess-Control-Allow-Credentials: true\r\nAccess-Control-Allow-Methods: POST, GET, OPTIONS, PUT, DELETE, HEAD\r\nAccess-Control-Allow-Headers: Content-Type\r\nX-XSS-Protection: 1; mode=block\r\nX-Frame-Options: SAMEORIGIN\r\nX-Content-Type-Options: nosniff\r\nContent-Security-Policy: default-src 'self'\r\nCache-Control: no-store\r\nPragma: no-cache\r\nReferrer-Policy: no-referrer\r\n\r\n",
						"status" : 200,
						"connect_code" : 0,
						"url" : "http://192.168.1.29/api/GKKuS6RAaHbpiJSfA8ofCTB5Sh6-46caxuhuZmqZ/lights",
						"file_time" : -1,
						"total_time" : 0.030091,
						"size_upload" : 0.0,
						"size_download" : 3544.0,
						"content_length_download" : -1.0,
						"content_length_upload" : 0.0,
						"content_type" : "application/json"
					}
,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 291.0, 401.0, 135.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict getLight @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 294.0, 89.0, 22.0 ],
					"text" : "prepend set url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 88.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 604.0, 22.0, 90.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 163.0, 90.0, 20.0 ],
					"text" : "Enter Light ID"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 544.0, 125.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 629.0, 43.0, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 572.0, 185.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 520.0, 43.0, 75.0, 22.0 ],
					"text" : "receive URL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 259.0, 75.0, 22.0 ],
					"text" : "receive URL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 445.0, 62.0, 22.0 ],
					"text" : "send URL"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 520.0, 170.0, 103.0, 22.0 ],
					"text" : "combine URL / ID"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "put",
						"url" : "http://IP/api/KEY/lights/2/state",
						"post_data" : 						{
							"hue" : 19344,
							"sat" : 219,
							"bri" : 92,
							"transitiontime" : 0
						}
,
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 537.0, 590.5, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 382.75, 192.0, 101.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 81.0, 348.0, 316.0, 20.0 ],
					"text" : "Bang to view all lights in system in below window"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 421.0, 231.0, 20.0 ],
					"text" : "formulate an address to get light status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 131.0, 244.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 24.0, 244.0, 62.0, 22.0 ],
					"text" : "trigger b s"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 342.0, 189.0, 22.0 ],
					"text" : "combine http:// IP /api/ KEY /lights"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 294.0, 89.0, 22.0 ],
					"text" : "prepend set url"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 382.0, 249.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 300.0, 454.0, 22.0 ],
					"text" : "http://IP/api/KEY/lights"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 265.0, 65.0, 213.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 257.5, 222.0, 213.0, 40.0 ],
					"text" : "type in User Key and press 'return'"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 236.0, 183.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 236.0, 27.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 236.0, 155.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-17",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 236.0, 123.0, 242.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 243.0, 265.0, 242.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.0, 65.0, 164.0, 55.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 31.0, 207.0, 174.0, 55.0 ],
					"text" : "type in Hue Bridge IP Address and press 'return'"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 183.0, 74.0, 23.0 ],
					"text" : "route bang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "select", "clear" ],
					"patching_rect" : [ 24.0, 27.0, 120.0, 23.0 ],
					"text" : "trigger select clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 24.0, 155.0, 66.0, 23.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bangmode" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 24.0, 123.0, 174.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 265.0, 174.0, 23.0 ],
					"tabmode" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 404.5, 294.0, 56.0, 22.0 ],
					"text" : "set url \" \""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 493.0, 485.0, 358.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 392.0, 485.0, 358.0 ],
					"style" : "default"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"http_method" : "get",
						"url" : "http://IP/api/KEY/lights",
						"response_dict" : "data1",
						"parse_type" : "json"
					}
,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 291.0, 334.0, 99.0, 23.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 333.0, 192.0, 48.0, 48.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 334.0, 48.0, 48.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.0, 437.0, 102.0, 22.0 ],
					"text" : "dict.unpack body:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dictionary", "" ],
					"patching_rect" : [ 291.0, 369.0, 45.0, 22.0 ],
					"text" : "maxurl"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bordercolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
					"id" : "obj-77",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, -164.0, 473.0, 166.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 31.0, 13.0, 469.0, 170.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 300.5, 393.0, 300.5, 393.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-176", 0 ],
					"midpoints" : [ 529.5, 195.0, 529.5, 195.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 1 ],
					"midpoints" : [ 589.5, 459.0, 588.5, 459.0 ],
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 546.5, 459.0, 546.5, 459.0 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"midpoints" : [ 300.5, 216.0, 222.0, 216.0, 222.0, 21.0, 245.5, 21.0 ],
					"order" : 0,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 300.5, 231.0, 140.5, 231.0 ],
					"order" : 1,
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 346.5, 51.0, 252.0, 51.0, 252.0, 108.0, 245.5, 108.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 245.5, 51.0, 245.5, 51.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"midpoints" : [ 779.1875, 165.0, 779.1875, 165.0 ],
					"source" : [ "obj-135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-135", 0 ],
					"midpoints" : [ 842.6875, 126.0, 779.1875, 126.0 ],
					"order" : 1,
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"midpoints" : [ 842.6875, 126.0, 865.6875, 126.0 ],
					"order" : 0,
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"midpoints" : [ 865.6875, 165.0, 865.4375, 165.0 ],
					"order" : 1,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"midpoints" : [ 865.6875, 165.0, 924.0, 165.0, 924.0, 171.0, 933.0, 171.0, 933.0, 219.0, 936.4375, 219.0 ],
					"order" : 0,
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 300.5, 282.0, 300.5, 282.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 2 ],
					"midpoints" : [ 630.5, 459.0, 630.5, 459.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"midpoints" : [ 546.5, 351.0, 546.5, 351.0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 529.5, 66.0, 529.5, 66.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"midpoints" : [ 1346.5, 489.0, 1269.0, 489.0, 1269.0, 360.0, 1291.5, 360.0 ],
					"order" : 1,
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 1346.5, 489.0, 1291.5, 489.0 ],
					"order" : 0,
					"source" : [ "obj-152", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 1392.5, 390.0, 1291.5, 390.0 ],
					"source" : [ "obj-153", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"midpoints" : [ 1291.5, 390.0, 1291.5, 390.0 ],
					"source" : [ "obj-153", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-152", 0 ],
					"midpoints" : [ 1291.5, 459.0, 1291.5, 459.0 ],
					"source" : [ "obj-154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-154", 0 ],
					"midpoints" : [ 1291.5, 429.0, 1291.5, 429.0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"midpoints" : [ 245.5, 180.0, 245.5, 180.0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-171", 0 ],
					"midpoints" : [ 1115.5, 570.0, 1115.5, 570.0 ],
					"source" : [ "obj-165", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-167", 0 ],
					"midpoints" : [ 1199.5, 489.0, 1122.0, 489.0, 1122.0, 360.0, 1144.5, 360.0 ],
					"order" : 1,
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-173", 0 ],
					"midpoints" : [ 1199.5, 489.0, 1199.5, 489.0 ],
					"order" : 0,
					"source" : [ "obj-166", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"midpoints" : [ 1245.5, 390.0, 1144.5, 390.0 ],
					"source" : [ "obj-167", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-169", 0 ],
					"midpoints" : [ 1144.5, 390.0, 1144.5, 390.0 ],
					"source" : [ "obj-167", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-166", 0 ],
					"midpoints" : [ 1144.5, 459.0, 1144.5, 459.0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"midpoints" : [ 1144.5, 429.0, 1144.5, 429.0 ],
					"source" : [ "obj-169", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 245.5, 147.0, 245.5, 147.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"midpoints" : [ 1071.5, 540.0, 1115.5, 540.0 ],
					"source" : [ "obj-170", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1115.5, 615.0, 1266.5, 615.0 ],
					"source" : [ "obj-171", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 1266.5, 684.0, 1071.0, 684.0, 1071.0, 540.0, 692.875, 540.0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 2 ],
					"midpoints" : [ 1239.5, 540.0, 1199.5, 540.0 ],
					"source" : [ "obj-173", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"midpoints" : [ 1199.5, 531.0, 1115.5, 531.0 ],
					"source" : [ "obj-173", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1291.5, 615.0, 1266.5, 615.0 ],
					"order" : 1,
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"midpoints" : [ 1291.5, 579.0, 1318.5, 579.0 ],
					"order" : 0,
					"source" : [ "obj-174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-177", 0 ],
					"midpoints" : [ 529.5, 234.0, 529.5, 234.0 ],
					"source" : [ "obj-176", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 529.5, 279.0, 529.5, 279.0 ],
					"source" : [ "obj-177", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"midpoints" : [ 1266.5, 654.0, 1266.5, 654.0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 1318.5, 615.0, 1266.5, 615.0 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 134.5, 51.0, 21.0, 51.0, 21.0, 117.0, 33.5, 117.0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 33.5, 60.0, 21.0, 60.0, 21.0, 117.0, 33.5, 117.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 33.5, 180.0, 33.5, 180.0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 88.5, 216.0, 9.0, 216.0, 9.0, 21.0, 33.5, 21.0 ],
					"order" : 1,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 88.5, 231.0, 33.5, 231.0 ],
					"order" : 0,
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 1115.5, 808.0, 1115.5, 808.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"midpoints" : [ 638.5, 75.0, 553.5, 75.0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 3 ],
					"midpoints" : [ 638.5, 240.0, 657.0, 240.0, 657.0, 327.0, 758.5, 327.0 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"midpoints" : [ 596.5, 162.0, 613.5, 162.0 ],
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 553.5, 150.0, 529.5, 150.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 342.5, 243.0, 276.0, 243.0, 276.0, 330.0, 300.5, 330.0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 1 ],
					"midpoints" : [ 682.0, 279.0, 745.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"midpoints" : [ 682.0, 279.0, 682.0, 279.0 ],
					"order" : 1,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-174", 0 ],
					"midpoints" : [ 1291.5, 531.0, 1291.5, 531.0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 414.0, 330.0, 300.5, 330.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"midpoints" : [ 780.75, 279.0, 906.75, 279.0 ],
					"order" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"midpoints" : [ 780.75, 279.0, 780.75, 279.0 ],
					"order" : 1,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 33.5, 420.0, 30.0, 420.0, 30.0, 441.0, 33.5, 441.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"midpoints" : [ 300.5, 318.0, 300.5, 318.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 300.5, 360.0, 300.5, 360.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 553.5, 111.0, 553.5, 111.0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 529.5, 576.0, 546.5, 576.0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 1 ],
					"midpoints" : [ 33.5, 366.0, 9.0, 366.0, 9.0, 327.0, 263.5, 327.0 ],
					"order" : 0,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"midpoints" : [ 33.5, 366.0, 33.5, 366.0 ],
					"order" : 1,
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 76.5, 279.0, 96.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 1 ],
					"midpoints" : [ 76.5, 267.0, 76.0, 267.0 ],
					"order" : 1,
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 33.5, 267.0, 33.5, 267.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 183.5, 279.0, 204.0, 279.0 ],
					"order" : 0,
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 3 ],
					"midpoints" : [ 183.5, 279.0, 161.0, 279.0 ],
					"order" : 1,
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 140.5, 279.0, 33.5, 279.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 1 ],
					"midpoints" : [ 682.0, 327.0, 707.5, 327.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 946.6875, 78.0, 946.6875, 78.0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 300.5, 426.0, 300.5, 426.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 1165.6875, 78.0, 1165.6875, 78.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"midpoints" : [ 1381.6875, 75.0, 1381.6875, 75.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 2 ],
					"midpoints" : [ 780.75, 333.0, 733.0, 333.0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"midpoints" : [ 546.5, 666.0, 669.0, 666.0, 669.0, 639.0, 692.875, 639.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 546.5, 615.0, 546.5, 615.0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 682.0, 378.0, 866.4375, 378.0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 546.5, 498.0, 546.5, 498.0 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"midpoints" : [ 546.5, 510.0, 580.5, 510.0 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 4 ],
					"midpoints" : [ 744.5, 282.0, 768.0, 282.0, 768.0, 336.0, 784.0, 336.0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"midpoints" : [ 946.6875, 162.0, 946.6875, 162.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"midpoints" : [ 1041.4375, 162.0, 1041.4375, 162.0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 865.4375, 282.0, 927.0, 282.0, 927.0, 369.0, 866.4375, 369.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 946.6875, 123.0, 946.6875, 123.0 ],
					"order" : 1,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 946.6875, 132.0, 1041.4375, 132.0 ],
					"order" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 33.5, 147.0, 33.5, 147.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"midpoints" : [ 546.5, 396.0, 546.5, 396.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"midpoints" : [ 546.5, 429.0, 546.5, 429.0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 1165.6875, 132.0, 1265.6875, 132.0 ],
					"order" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"midpoints" : [ 1165.6875, 123.0, 1165.6875, 123.0 ],
					"order" : 1,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"midpoints" : [ 1265.6875, 162.0, 1265.6875, 162.0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"midpoints" : [ 1165.6875, 162.0, 1165.6875, 162.0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 300.5, 480.0, 33.5, 480.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"midpoints" : [ 1381.6875, 132.0, 1482.1875, 132.0 ],
					"order" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"midpoints" : [ 1381.6875, 123.0, 1381.6875, 123.0 ],
					"order" : 1,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"midpoints" : [ 1482.1875, 165.0, 1482.1875, 165.0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-145", 0 ],
					"midpoints" : [ 1381.6875, 162.0, 1381.6875, 162.0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"midpoints" : [ 580.5, 576.0, 546.5, 576.0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "lightswitch.js",
				"bootpath" : "/Volumes/GoogleDrive/My Drive/_ITP/Philips Hue Projects/PhilipsHue_MaxMSP",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
