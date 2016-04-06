//Maya ASCII 2016 scene
//Name: lampPlant.ma
//Last modified: Thu, Mar 24, 2016 06:16:52 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.8 ";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201507301600-967122";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "1E61851E-4B1A-4137-F25C-58BCC123E9BF";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.2362724897332757 4.0223847041193217 3.1008712452967622 ;
	setAttr ".r" -type "double3" -26.53929849289597 -2090.9995446197486 -0.001012840005147792 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C3F45CCC-4618-E533-44E6-A3B0E1A7E8E3";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.044332589157474;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.2111855149269104 0.79328346252441406 -0.15618121810257435 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E23462C3-40A9-1A4D-7933-2B87599B9ABD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "99A23860-4F73-BA5E-90A7-339DE62F181E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.0457206079260115;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "9F291CAF-4E2A-231B-A2D2-0D974A4CB0EB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.84452162953233001 -2.4330265993669498 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B4597B20-45AB-6B37-771F-F29BB94AE6EC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 9.5209279527685844;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "A1C3B30C-49EE-CCE5-A848-A6B3D5BB9662";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1B6C40AE-4338-3FE0-EDDC-EAA69D1B5670";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "group1";
	rename -uid "D8072B3F-4A71-77A9-7851-1BB8F9EC2CA0";
	setAttr ".t" -type "double3" 0 -0.61907821399043006 0 ;
	setAttr ".r" -type "double3" 0 58.89170413555054 0 ;
	setAttr ".s" -type "double3" 0.36900297919355241 0.31613965981739134 0.61451656586230863 ;
createNode transform -n "pPlane4" -p "group1";
	rename -uid "8B051329-4E92-E6ED-1416-14A7C6D073F9";
	setAttr ".t" -type "double3" 0.00296975101254751 -2.2554484340786365 0.914537287853882 ;
	setAttr ".r" -type "double3" -27.16597225129189 0 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 1.1168827996027235 0.54459898134945528 ;
	setAttr ".sp" -type "double3" 0 0.67843656241893768 0.33080987632274628 ;
	setAttr ".spt" -type "double3" 0 0.43844623718378589 0.21378910502670903 ;
createNode mesh -n "pPlaneShape2Orig4" -p "|group1|pPlane4";
	rename -uid "E72F9C46-46CF-BC02-12F9-3AACDB69BD5D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group2";
	rename -uid "A4A17ABC-463B-E310-8D51-6BA4D51A744A";
	setAttr ".t" -type "double3" 1.1102230246251565e-016 -0.67876567505956542 5.5511151231257827e-017 ;
	setAttr ".r" -type "double3" 0 -57.833166419449491 0 ;
	setAttr ".s" -type "double3" 0.36900297919355241 0.31613965981739134 0.44321315409202572 ;
createNode transform -n "pPlane4" -p "group2";
	rename -uid "BF4E5599-48E5-55CA-F8B9-F89F1B33DF34";
	setAttr ".t" -type "double3" 0.0029697510125474835 -2.0666475063379917 0.91453728785388178 ;
	setAttr ".r" -type "double3" -27.16597225129189 0 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 1.1168827996027235 0.54459898134945528 ;
	setAttr ".sp" -type "double3" 0 0.67843656241893768 0.33080987632274628 ;
	setAttr ".spt" -type "double3" 0 0.43844623718378589 0.21378910502670903 ;
createNode mesh -n "pPlaneShape2Orig4" -p "|group2|pPlane4";
	rename -uid "379FDEBE-437D-98EA-A8E4-6A881A97F793";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group5" -p "group2";
	rename -uid "A43C9FF5-49DA-3479-4F7F-86A47E5B8A52";
	setAttr ".r" -type "double3" 0 -116.77507862530885 0 ;
	setAttr ".s" -type "double3" 1 1 1.931380373389137 ;
createNode transform -n "pPlane7" -p "group5";
	rename -uid "FA016259-4023-17F1-6EB2-799DD3413913";
	setAttr ".t" -type "double3" 0.0029697510125476401 -2.1920889322390695 1.4845480236028898 ;
	setAttr ".r" -type "double3" -27.165972251291887 0 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 1.1168827996027235 0.54459898134945528 ;
	setAttr ".rpt" -type "double3" 0 0.12544142590107732 -0.57001073574900829 ;
	setAttr ".sp" -type "double3" 0 0.67843656241893768 0.33080987632274628 ;
	setAttr ".spt" -type "double3" 0 0.43844623718378589 0.21378910502670903 ;
createNode mesh -n "pPlaneShape2Orig7" -p "pPlane7";
	rename -uid "B8F145CD-4DB3-692D-F69C-F0A3D77F07B8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group3";
	rename -uid "382A962D-4770-41F1-5F32-4EA94364694D";
	setAttr ".t" -type "double3" 0 -0.4274141857398932 0 ;
	setAttr ".r" -type "double3" 0 119.99999999999999 0 ;
	setAttr ".s" -type "double3" 0.72026627319192371 0.5654842471993663 0.72026627319192371 ;
createNode transform -n "pPlane5" -p "group3";
	rename -uid "92335264-4157-A57E-EE98-7B9A1367EF88";
	setAttr ".t" -type "double3" 0.0029697510125475945 -2.1263349674071264 0.91453728785388178 ;
	setAttr ".r" -type "double3" -27.16597225129189 0 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 1.1168827996027235 0.54459898134945528 ;
	setAttr ".sp" -type "double3" 0 0.67843656241893768 0.33080987632274628 ;
	setAttr ".spt" -type "double3" 0 0.43844623718378589 0.21378910502670903 ;
createNode mesh -n "pPlaneShape2Orig5" -p "pPlane5";
	rename -uid "71099E7B-4AC2-BC0B-C48E-7A8E4BA10AB9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group4";
	rename -uid "BD47550B-42C2-5185-1D19-5AADFEA64A58";
	setAttr ".t" -type "double3" 0 -0.34575438406971465 0 ;
	setAttr ".r" -type "double3" 0 -119.02860067278679 0 ;
	setAttr ".s" -type "double3" 1 0.59792965150008093 0.71040116604427428 ;
createNode transform -n "pPlane6" -p "group4";
	rename -uid "7B5E0B5A-4572-D96E-6A59-9AA2BBC61B70";
	setAttr ".t" -type "double3" 0.0029697510125475945 -2.1263349674071264 0.91453728785388178 ;
	setAttr ".r" -type "double3" -27.16597225129189 0 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 1.1168827996027235 0.54459898134945528 ;
	setAttr ".sp" -type "double3" 0 0.67843656241893768 0.33080987632274628 ;
	setAttr ".spt" -type "double3" 0 0.43844623718378589 0.21378910502670903 ;
createNode mesh -n "pPlaneShape2Orig6" -p "pPlane6";
	rename -uid "34361BAD-4DDF-A14E-88B0-70B667D73400";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group6";
	rename -uid "266A7E8C-4CDA-4DE1-BA02-33833F9C5473";
	setAttr ".t" -type "double3" 0 -0.1800251544623413 0 ;
	setAttr ".s" -type "double3" 0.83123840762557766 0.80039585539245495 0.91166594712730364 ;
createNode transform -n "pPlane3" -p "group6";
	rename -uid "689E97CD-4364-8940-B394-FCA953C35958";
	setAttr ".t" -type "double3" 0.0029697510125475945 -2.1263349674071264 0.91453728785388178 ;
	setAttr ".r" -type "double3" -27.16597225129189 0 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 1.1168827996027235 0.54459898134945528 ;
	setAttr ".sp" -type "double3" 0 0.67843656241893768 0.33080987632274628 ;
	setAttr ".spt" -type "double3" 0 0.43844623718378589 0.21378910502670903 ;
createNode mesh -n "pPlaneShape2Orig3" -p "pPlane3";
	rename -uid "D632DE49-404E-66EA-E2AE-C488CB282FDD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane8";
	rename -uid "CBC33DE5-4178-CCAB-1A51-83B58A3A05A7";
	setAttr ".t" -type "double3" 0 2.3050570431966246 0 ;
	setAttr ".s" -type "double3" 1.6462597411031679 1.6462597411031679 1.6462597411031679 ;
createNode mesh -n "pPlaneShape2Orig8" -p "pPlane8";
	rename -uid "CE6B1244-4BD1-20DD-CECE-7CA42C165840";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane9";
	rename -uid "E1CCD4FA-43F5-138B-097B-4BB105334223";
	setAttr ".t" -type "double3" -0.48581378285376742 2.0093612726719359 0.015155624342572338 ;
	setAttr ".r" -type "double3" 0 -71.451745017530612 0 ;
	setAttr ".s" -type "double3" 1.0221141593285197 1.0221141593285197 1.0221141593285197 ;
createNode mesh -n "pPlaneShape2Orig9" -p "pPlane9";
	rename -uid "15433E7C-4136-6974-6C67-0FB6AB984AB8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pPlane9";
	rename -uid "8B38C23F-4A1C-A8C9-921D-28B1E360EAB8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[9]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.29293817 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.057754785 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.029789394 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.057754785 ;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 0.48120236 0.81329387 0 0.24899679 1.3021425
		 0.2354383 0.48120236 0.81329387 -0.38785207 0.401254 0.44100934 0 0.46228722 0.76932257
		 0.38785207 0.401254 0.44100934 -0.42398179 0.12061756 0.15012008 0 0.19385885 0.29968223
		 0.42398179 0.12061756 0.15012008 -0.35936981 -0.16483615 -0.061928224 0 -0.12023558 -0.045760751
		 0.35936981 -0.16483615 -0.061928224 -0.22969669 -0.27145663 -0.14126709 0 -0.44485959 -0.081988677
		 0.22969669 -0.27145663 -0.14126709;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane10";
	rename -uid "E8CF5262-4D33-E287-CD9E-C98DAE05EB36";
	setAttr ".t" -type "double3" 0.17744445051932889 2.3050570431966246 -0.5010436118402759 ;
	setAttr ".r" -type "double3" 0 133.09636414875493 0 ;
	setAttr ".s" -type "double3" 1.3203128920153868 1.3203128920153868 1.3203128920153868 ;
createNode mesh -n "pPlaneShape2Orig10" -p "pPlane10";
	rename -uid "FB0B28A0-4700-1C34-7B4E-8F87AEFFB023";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pPlane10";
	rename -uid "25CB7AFF-4B9B-D063-E344-A7A43BF7EBAC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[9]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.29293817 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.057754785 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.029789394 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.057754785 ;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 0.48120236 0.81329387 0 0.24899679 1.3021425
		 0.2354383 0.48120236 0.81329387 -0.38785207 0.401254 0.44100934 0 0.46228722 0.76932257
		 0.38785207 0.401254 0.44100934 -0.42398179 0.12061756 0.15012008 0 0.19385885 0.29968223
		 0.42398179 0.12061756 0.15012008 -0.35936981 -0.16483615 -0.061928224 0 -0.12023558 -0.045760751
		 0.35936981 -0.16483615 -0.061928224 -0.22969669 -0.27145663 -0.14126709 0 -0.44485959 -0.081988677
		 0.22969669 -0.27145663 -0.14126709;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane11";
	rename -uid "4299C290-4810-2691-5C22-A7BD9093EBA5";
	setAttr ".t" -type "double3" -0.35159484104954752 2.2813570242255086 -0.42114603346268753 ;
	setAttr ".r" -type "double3" 0 214.45345854394708 0 ;
	setAttr ".s" -type "double3" 1.5498410057498861 1.5498410057498861 1.5498410057498861 ;
createNode mesh -n "pPlaneShape2Orig11" -p "pPlane11";
	rename -uid "501191E6-4AFD-04FC-7073-1EAE83CE2471";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pPlane11";
	rename -uid "C21B1C91-4D8D-A14D-7179-2385FDAEE817";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[9]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.29293817 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.057754785 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.029789394 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.057754785 ;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 0.48120236 0.81329387 0 0.24899679 1.3021425
		 0.2354383 0.48120236 0.81329387 -0.38785207 0.401254 0.44100934 0 0.46228722 0.76932257
		 0.38785207 0.401254 0.44100934 -0.42398179 0.12061756 0.15012008 0 0.19385885 0.29968223
		 0.42398179 0.12061756 0.15012008 -0.35936981 -0.16483615 -0.061928224 0 -0.12023558 -0.045760751
		 0.35936981 -0.16483615 -0.061928224 -0.22969669 -0.27145663 -0.14126709 0 -0.44485959 -0.081988677
		 0.22969669 -0.27145663 -0.14126709;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane12";
	rename -uid "DC953728-4ACB-2ABE-3A76-D1865F979998";
	setAttr ".t" -type "double3" 0.58891695604894878 2.3050570431966246 -0.15462883234869973 ;
	setAttr ".r" -type "double3" 0 91.307098699695771 0 ;
	setAttr ".s" -type "double3" 0.74950487325164439 1.6462597411031679 0.90993804729425976 ;
createNode mesh -n "pPlaneShape2Orig12" -p "pPlane12";
	rename -uid "944E25DC-44F3-A7F0-7A7A-0FA76BD6B122";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape5" -p "pPlane12";
	rename -uid "FFBF8BB1-43F4-B641-7FAF-06881B965500";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[9]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.29293817 ;
	setAttr ".pt[11]" -type "float3" 0 0 0.010209281 ;
	setAttr ".pt[12]" -type "float3" 0 0 0.057754785 ;
	setAttr ".pt[13]" -type "float3" 0 0 0.029789394 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.057754785 ;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 0.48120236 0.81329387 0 0.24899679 1.3021425
		 0.2354383 0.48120236 0.81329387 -0.38785207 0.401254 0.44100934 0 0.46228722 0.76932257
		 0.38785207 0.401254 0.44100934 -0.42398179 0.12061756 0.15012008 0 0.19385885 0.29968223
		 0.42398179 0.12061756 0.15012008 -0.35936981 -0.16483615 -0.061928224 0 -0.12023558 -0.045760751
		 0.35936981 -0.16483615 -0.061928224 -0.22969669 -0.27145663 -0.14126709 0 -0.44485959 -0.081988677
		 0.22969669 -0.27145663 -0.14126709;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane18";
	rename -uid "1F3A10D9-45FA-9AB1-4437-B48706616CDD";
	setAttr ".t" -type "double3" 0.069552812106346534 0.91860691198536437 -0.46735087568774042 ;
	setAttr ".r" -type "double3" -51.187873704202282 62.631229780149212 -99.899279889040358 ;
	setAttr ".s" -type "double3" 0.40346572393478247 0.9211755472979869 0.9211755472979869 ;
	setAttr ".rp" -type "double3" 0 -0.49197705011775911 0 ;
	setAttr ".sp" -type "double3" 0 -0.53407523849372363 0 ;
	setAttr ".spt" -type "double3" 0 0.04209818837596447 0 ;
createNode mesh -n "pPlaneShape2Orig18" -p "pPlane18";
	rename -uid "F91BB7BE-4F78-7058-C0F0-22B568BD4F21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane19";
	rename -uid "004CB6F2-4A2A-90D0-04BF-ECBCAAE9E2FB";
	setAttr ".t" -type "double3" 0.01336451946904027 0.99376212512663464 -0.44388395351653437 ;
	setAttr ".r" -type "double3" -79.285332062205256 -26.70997805712771 -201.97485454846799 ;
	setAttr ".s" -type "double3" 0.40346572393478247 0.9211755472979869 0.9211755472979869 ;
	setAttr ".rp" -type "double3" 0 -0.49197705011775911 0 ;
	setAttr ".sp" -type "double3" 0 -0.53407523849372363 0 ;
	setAttr ".spt" -type "double3" 0 0.04209818837596447 0 ;
createNode mesh -n "pPlaneShape2Orig19" -p "pPlane19";
	rename -uid "7C2A6FAD-45E9-5A62-291E-719847915EC4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt[0:2]" -type "float3"  0 0 0.073496595 0 0 0.073496595 
		0 0 0.073496595;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 -7.0179102e-017 0.6899873 0 -8.7017131e-017 0.96832061
		 0.2354383 -7.0179102e-017 0.6899873 -0.38785207 -5.1600175e-017 0.48866218 0 -5.3644191e-017 0.60944629
		 0.38785207 -5.1600175e-017 0.48866218 -0.42398179 6.016721e-019 0.19376884 0 8.2986492e-019 0.22757125
		 0.42398179 6.016721e-019 0.19376884 -0.35936981 5.5653559e-017 -0.098885737 0 5.5768616e-017 -0.086339518
		 0.35936981 5.5653559e-017 -0.098885737 -0.22969669 8.7660379e-017 -0.26564455 0 1.110223e-016 -0.38019744
		 0.22969669 8.7660379e-017 -0.26564455;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane21";
	rename -uid "7283242B-47A3-E044-5AAE-049DDADC28C2";
	setAttr ".t" -type "double3" 0.42184320259300695 1.0275716283915881 0.732106185376729 ;
	setAttr ".r" -type "double3" 102.40667690712927 44.642202342230433 -339.33533243296876 ;
	setAttr ".s" -type "double3" 0.48980903723384434 1.6462597411031679 1.6462597411031679 ;
	setAttr ".rp" -type "double3" 0 -0.42533780541365596 -0.26568928056630592 ;
	setAttr ".sp" -type "double3" 0 -0.25836615862854945 -0.16138964826307803 ;
	setAttr ".spt" -type "double3" 0 -0.16697164678511137 -0.10429963230322731 ;
createNode mesh -n "polySurfaceShape16" -p "pPlane21";
	rename -uid "39BE8AB7-48DC-7D32-5D77-A58258EC17B1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 15 ".uvst[0].uvsp[0:14]" -type "float2" 0 0 0.5 0 1 0 0 0.25
		 0.5 0.25 1 0.25 0 0.5 0.5 0.5 1 0.5 0 0.75 0.5 0.75 1 0.75 0 1 0.5 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".vt[0:14]"  -0.2354383 0.48120236 0.81329387 0 0.24899679 1.3021425
		 0.2354383 0.48120236 0.81329387 -0.38785207 0.401254 0.44100934 0 0.46228722 0.76932257
		 0.38785207 0.401254 0.44100934 -0.42398179 0.12061756 0.15012008 0 0.19385885 0.29968223
		 0.42398179 0.12061756 0.15012008 -0.35936981 -0.16483615 -0.061928224 0 -0.12023558 -0.045760751
		 0.35936981 -0.16483615 -0.061928224 -0.22969669 -0.27145663 -0.14126709 0 -0.44485959 -0.081988677
		 0.22969669 -0.27145663 -0.14126709;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 3 0 1 2 0 1 4 1 2 5 0 3 4 1 3 6 0
		 4 5 1 4 7 1 5 8 0 6 7 1 6 9 0 7 8 1 7 10 1 8 11 0 9 10 1 9 12 0 10 11 1 10 13 1 11 14 0
		 12 13 0 13 14 0;
	setAttr -s 8 -ch 32 ".fc[0:7]" -type "polyFaces" 
		f 4 0 3 -6 -2
		mu 0 4 0 1 4 3
		f 4 2 4 -8 -4
		mu 0 4 1 2 5 4
		f 4 5 8 -11 -7
		mu 0 4 3 4 7 6
		f 4 7 9 -13 -9
		mu 0 4 4 5 8 7
		f 4 10 13 -16 -12
		mu 0 4 6 7 10 9
		f 4 12 14 -18 -14
		mu 0 4 7 8 11 10
		f 4 15 18 -21 -17
		mu 0 4 9 10 13 12
		f 4 17 19 -22 -19
		mu 0 4 10 11 14 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface4";
	rename -uid "0F67139A-43CF-AD0C-0AB9-3E946415C509";
createNode mesh -n "polySurface4Shape" -p "polySurface4";
	rename -uid "96D4D889-4433-1FBD-5497-809ED7057F3D";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[0:436]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 795 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.19672136 0.8272748 0.22605796
		 0.80961037 0.22542724 0.83717865 0.20654562 0.85749096 0.18191457 0.79072118 0.20762974
		 0.79160333 0.16123709 0.83387703 0.16331995 0.80825573 0.17933108 0.85418284 0.25516999
		 0.85045612 0.21755084 0.88688987 0.25695714 0.79922116 0.22169414 0.7612353 0.16999555
		 0.75850278 0.13287219 0.79458445 0.13088517 0.846425 0.16552897 0.8838402 0.28479281
		 0.86324972 0.23010901 0.91545606 0.28626969 0.78665346 0.23319805 0.73120034 0.15776032
		 0.73005027 0.10285852 0.78253669 0.10189975 0.8590405 0.15427449 0.91477275 0.31440923
		 0.8763085 0.24193259 0.94663715 0.31600979 0.77482533 0.2467393 0.70208472 0.14564316
		 0.69918102 0.073950879 0.76955885 0.071139112 0.87079352 0.14157195 0.94357699 0.35772365
		 0.89375657 0.25972337 0.9888019 0.35972875 0.75672215 0.26438621 0.6586082 0.12836085
		 0.6570937 0.029657695 0.752235 0.028161544 0.88835371 0.12336872 0.98729879 0.41558272
		 0.20130856 0.42697924 0.12654395 0.50176817 0.13721298 0.49112946 0.21124439 0.39250779
		 0.9033075 0.4130379 0.90451026 0.4145754 0.98143768 0.37415069 0.97357762 0.43317342
		 0.90434676 0.45433259 0.97882956 0.45310557 0.9008022 0.48968315 0.96013266 0.33371532
		 0.96105784 0.37348568 0.89995176 0.45915416 0.25893721 0.42035437 0.24937153 0.52669048
		 0.27639768 0.48822969 0.28598934 0.35779166 0.24234983 0.37733817 0.26225662 0.34811497
		 0.29427648 0.31741586 0.28442776 0.39493579 0.81919712 0.37686157 0.82181138 0.38151526
		 0.73198801 0.39771897 0.73107982 0.41372037 0.73056322 0.41339195 0.81745178 0.43179768
		 0.82092971 0.42973357 0.7323103 0.45036489 0.82256502 0.44577324 0.73264933 0.41632637
		 0.31807551 0.40382445 0.31846008 0.42800558 0.32076591 0.43956524 0.32488987 0.39192495
		 0.32256061 0.42751479 0.5887168 0.42884192 0.66311866 0.41414577 0.66225666 0.41452649
		 0.58778661 0.44074547 0.58767307 0.44373649 0.66241455 0.40116358 0.58686912 0.39916891
		 0.66165984 0.38443646 0.66187936 0.38807797 0.58735442 0.42620504 0.51628017 0.41461927
		 0.51544523 0.43806878 0.51536429 0.40265092 0.51466316 0.3910321 0.51529294 0.42509586
		 0.44409519 0.41455951 0.44381967 0.43580431 0.4435586 0.40363073 0.44333658 0.39300609
		 0.44348174 0.42526501 0.38534522 0.41442162 0.38562489 0.4363097 0.38640496 0.40366861
		 0.38628063 0.39271 0.385896 0.30524516 0.32251322 0.34969443 0.41078246 0.27368104
		 0.40851858 0.25728351 0.36786091 0.29569703 0.49615473 0.25086051 0.44518808 0.20705777
		 0.50093353 0.2087971 0.45667678 0.12449682 0.4843283 0.17121661 0.4388206 0.092985332
		 0.3974205 0.15763229 0.39911363 0.13338107 0.31277791 0.17731231 0.36185288 0.21988279
		 0.29294717 0.21759111 0.34923097 0.21309882 0.40334177 0.26222664 0.57995999 0.20588529
		 0.54618716 0.14451391 0.57207036 0.19929618 0.63252848 0.061181724 0.49263254 0.048083156
		 0.42010221 0.03356126 0.4754501 0.013336122 0.45560297 0.14834833 0.25325623 0.22208089
		 0.23595609 0.29516685 0.26000792 0.22591537 0.14984582 0.045978963 0.32260898 0.09598577
		 0.31318855 0.6311633 0.17276551 0.58679539 0.16665472 0.63709098 0.2524823 0.6760928
		 0.16129793 0.67923653 0.1167229 0.63037229 0.10499401 0.58410782 0.11975579 0.62537926
		 0.021072373 0.64875543 0.56034261 0.69363213 0.49753839 0.57786179 0.50691897 0.57389855
		 0.63361543 0.46022129 0.48919201 0.50549805 0.5533185 0.70825613 0.43005317 0.57877004
		 0.4154678 0.4515326 0.42317498 0.68488181 0.36578494 0.57655466 0.33301216 0.47097445
		 0.36097741 0.63192427 0.31227022 0.57323253 0.26999676 0.51332736 0.31037384 0.92316598
		 0.88831121 0.87343085 0.87249106 0.9178279 0.9781366 0.97162801 0.88668543 0.98376876
		 0.83932507 0.92676467 0.82140493 0.86871874 0.82490075 0.97417432 0.7848947 0.92776614
		 0.74762464 0.88456154 0.76804239 0.928312 0.69630587 0.55922365 0.79035461 0.47914407
		 0.777538 0.56967723 0.66481245 0.63646603 0.77736127 0.55132926 0.85649663 0.45753774
		 0.83356106 0.64293861 0.83519524 0.55104291 0.93290752 0.46738586 0.90095633 0.62901473
		 0.89703 0.55504966 0.99224097 0.51792717 0.96306664 0.58643854 0.96232444 0.71841925
		 0.20240429 0.76537961 0.21033582 0.71915716 0.11061984 0.67241704 0.2087988 0.66615748
		 0.25575271 0.71768123 0.2650238 0.76915336 0.25816205 0.68083674 0.32601008 0.71674806
		 0.34732661 0.7542938 0.32255241 0.71631175 0.38947544 0.73521644 0.40413013 0.70152861
		 0.47491947 0.80293196 0.47071388 0.80030149 0.34204656 0.90528995 0.4757213 0.86338001
		 0.40686664 0.68799442 0.56233716 0.80359751 0.58183742 0.91590887 0.56318104 0.7478202
		 0.66936636 0.79840058 0.71308798 0.85013729 0.67061019 0.78456879 0.13693073 0.74486113
		 0.12871096 0.78092289 0.20684841 0.82451606 0.13295701 0.82800961 0.093876153 0.78682172
		 0.084275216 0.74599552 0.088105947 0.81115603 0.041066319 0.78850424 0.046694487
		 0.76749396 0.036476463 0.78964663 0.011902362 0.84075952 0.15093032 0.84187126 0.25176302
		 0.79545093 0.24034578 0.8094219 0.18980491 0.87346685 0.19998094 0.88945794 0.25413546
		 0.84702492 0.3102535 0.81158829 0.29894656 0.8825525 0.30898958 0.84887004 0.3559655
		 0.54710698 0.12819633 0.52193666 0.13737068 0.54347396 0.080704957 0.57114846 0.14319339
		 0.54658282 0.15570739 0.51172912 0.16523436 0.57994801 0.18340579 0.53945148 0.19881502
		 0.51127005 0.21015951 0.57134074 0.22550401 0.53015399 0.251865 0.107142 0.55336225
		 0.091031373 0.56923711 0.10897177 0.52280301 0.12135449 0.56998932 0.10460916 0.59663916
		 0.086579829 0.61028361 0.12502626 0.60511947 0.10095036 0.6506781 0.48093098 0.72020888
		 0.49953204 0.7051999 0.48303968 0.76388359 0.46148878 0.70715463 0.47958219 0.68429404
		 0.50492102 0.67317963;
	setAttr ".uvst[0].uvsp[250:499]" 0.4517473 0.6770156 0.47768867 0.65803802
		 0.49782813 0.64809334 0.46085161 0.63870293 0.48708582 0.59953171 0.6393795 0.59487808
		 0.67112321 0.54958487 0.66791874 0.62147105 0.6170823 0.63637608 0.69923788 0.60001951
		 0.7174105 0.64997929 0.66594362 0.66279423 0.61110872 0.67003185 0.71891552 0.69864756
		 0.66221529 0.71017098 0.62688124 0.72904181 0.69437498 0.75610411 0.64484221 0.78579044
		 0.12666717 0.21711509 0.16285321 0.19263218 0.12447705 0.25588074 0.094336763 0.18967041
		 0.12128379 0.15783733 0.14211509 0.12711488 0.10742839 0.142456 0.142432 0.085460976
		 0.65215743 0.81723779 0.69216931 0.77325517 0.6909703 0.83111984 0.64667356 0.85801798
		 0.71502948 0.82725513 0.7298764 0.86536407 0.68617618 0.88622075 0.64169955 0.89814365
		 0.73044479 0.90639973 0.68531537 0.91452593 0.64711356 0.93685907 0.7181412 0.94418448
		 0.67151535 0.9870429 0.97572303 0.20275432 0.93177545 0.25748199 0.92889297 0.1891222
		 0.97916627 0.15427595 0.9008323 0.19557434 0.88050532 0.1520505 0.93040228 0.12334901
		 0.98200488 0.10671151 0.8760283 0.10423005 0.92795718 0.090225995 0.96606457 0.053719878
		 0.89980817 0.051870227 0.95467484 0.016239317 0.38578039 0.067871071 0.35777366 0.087751597
		 0.38719034 0.019523598 0.41306415 0.088929325 0.38703942 0.12326261 0.36105877 0.12689647
		 0.41265669 0.13289389 0.39408293 0.1874949 0.069989964 0.11792345 0.089828297 0.11264343
		 0.077889428 0.16647325 0.05120001 0.11370835 0.068950936 0.10134081 0.094570264 0.090044506
		 0.040270068 0.083813466 0.069531485 0.067499869 0.089785621 0.055646867 0.04214666
		 0.050661087 0.067812249 0.02414912 0.25240582 0.094052285 0.26546019 0.082340136
		 0.25042552 0.11757392 0.24140222 0.081144527 0.25507301 0.060002204 0.26911765 0.050207224
		 0.23972066 0.053398695 0.26024824 0.014417998 0.28689387 0.19510889 0.29987332 0.18305299
		 0.29078355 0.227301 0.27181259 0.18650123 0.28401515 0.16855526 0.30218789 0.15916991
		 0.26278254 0.16462386 0.28095952 0.14870048 0.30057451 0.12988736 0.2597678 0.13233809
		 0.29023978 0.10322873 0.30678633 0.042540461 0.32213512 0.011264354 0.32106212 0.045927674
		 0.2954289 0.064121366 0.33544591 0.043435663 0.34519187 0.065484077 0.31936195 0.090594888
		 0.30363598 0.11245796 0.33836845 0.10324168 0.31405404 0.14158614 0.17248721 0.054391857
		 0.19235857 0.016145997 0.19001265 0.059068196 0.15788408 0.080458157 0.20789377 0.056358092
		 0.21915488 0.083945386 0.18762 0.10002612 0.15533109 0.10995179 0.22042076 0.11380654
		 0.18761344 0.12135663 0.16136594 0.13805857 0.21127824 0.14145055 0.17632027 0.16343406
		 0.31230012 0.55701303 0.33711866 0.50891727 0.33433595 0.5629015 0.29400554 0.58965588
		 0.35676995 0.55935085 0.3710033 0.59374666 0.3314397 0.61466122 0.29086694 0.62662446
		 0.37331864 0.63093114 0.33258733 0.64055634 0.30205318 0.66818678 0.35371718 0.67104387
		 0.30992749 0.68860042 0.33405876 0.24948116 0.33707207 0.21333374 0.35900253 0.19961531
		 0.34660918 0.22493543 0.32530832 0.22336955 0.31730926 0.19647641 0.338422 0.17199863
		 0.35794938 0.17027314 0.31976336 0.16359718 0.33665982 0.13495715 0.35114771 0.14933653
		 0.32617861 0.1454214 0.33405876 0.24948116 0.34660918 0.22493543 0.35900253 0.19961531
		 0.33707207 0.21333374 0.32530832 0.22336955 0.31730926 0.19647641 0.35794938 0.17027314
		 0.338422 0.17199863 0.31976336 0.16359718 0.35114771 0.14933653 0.33665982 0.13495715
		 0.32617861 0.1454214 0.96527153 0.58703536 0.94773358 0.59414572 0.96461493 0.50054961
		 0.98066849 0.59389555 0.94345027 0.6641565 0.96691781 0.65775937 0.98994309 0.66364413
		 0.96346682 0.73048055 0.9475823 0.70216787 0.98083586 0.70218343 0.75495267 0.87857091
		 0.77235281 0.86973274 0.75474286 0.96602488 0.74097109 0.86890125 0.76444244 0.82433629
		 0.79126501 0.81818771 0.7380048 0.8166436 0.75544369 0.7756083 0.77343738 0.77369416
		 0.73756123 0.7730068 0.93942183 0.46361506 0.95926374 0.45286834 0.93618256 0.5603599
		 0.92038864 0.45168489 0.94196242 0.35616618 0.97613984 0.34358019 0.90824497 0.34222001
		 0.93803924 0.28483456 0.96788305 0.30220819 0.92007804 0.30035484 0.82663256 0.79827631
		 0.79893523 0.81198275 0.82865578 0.73129272 0.84711391 0.8133322 0.82486504 0.87851059
		 0.790438 0.88567007 0.85569566 0.88600576 0.82104069 0.96603465 0.80500239 0.92606628
		 0.83895046 0.92627287 0.010675609 0.50880718 0.070575655 0.50880712 0.070575655 0.56870723
		 0.010675609 0.56870723 0.015783263 0.63183886 0.067999259 0.63366777 0.06617035 0.68588376
		 0.013954325 0.68405485 0.064884432 0.58146697 0.064884432 0.63187116 0.014480243
		 0.63187116 0.014480243 0.58146697 0.061522234 0.36253971 0.06197213 0.41025954 0.014252337
		 0.41070944 0.013802441 0.3629896 0.022686105 0.93985742 0.069323078 0.94157368 0.067606732
		 0.98821062 0.020969804 0.98649436 0.070820592 0.27434272 0.05087271 0.30906367 0.048131194
		 0.25745729 0.084789418 0.24120164 0.027219083 0.27463657 0.012048508 0.24062008 0.045613315
		 0.22507888 0.085242949 0.20695239 0.0080026044 0.19643742 0.041890528 0.15855369
		 0.64875543 0.56034261 0.57389855 0.63361543 0.57786179 0.50691897 0.69363213 0.49753839
		 0.50549805 0.5533185 0.46022129 0.48919201 0.57877004 0.4154678 0.70825613 0.43005317
		 0.4515326 0.42317498 0.57655466 0.33301216 0.68488181 0.36578494 0.47097445 0.36097741
		 0.57323253 0.26999676 0.63192427 0.31227022 0.51332736 0.31037384 0.92316598 0.88831121
		 0.97162801 0.88668543 0.9178279 0.9781366 0.87343085 0.87249106 0.92676467 0.82140493
		 0.98376876 0.83932507 0.86871874 0.82490075 0.92776614 0.74762464 0.97417432 0.7848947
		 0.88456154 0.76804239 0.928312 0.69630587 0.55922365 0.79035461 0.47914407 0.777538
		 0.56967723 0.66481245 0.63646603 0.77736127;
	setAttr ".uvst[0].uvsp[500:749]" 0.55132926 0.85649663 0.45753774 0.83356106
		 0.64293861 0.83519524 0.55104291 0.93290752 0.46738586 0.90095633 0.62901473 0.89703
		 0.55504966 0.99224097 0.51792717 0.96306664 0.58643854 0.96232444 0.71841925 0.20240429
		 0.67241704 0.2087988 0.71915716 0.11061984 0.76537961 0.21033582 0.71768123 0.2650238
		 0.66615748 0.25575271 0.76915336 0.25816205 0.71674806 0.34732661 0.68083674 0.32601008
		 0.7542938 0.32255241 0.71631175 0.38947544 0.73521644 0.40413013 0.80030149 0.34204656
		 0.80293196 0.47071388 0.70152861 0.47491947 0.86338001 0.40686664 0.90528995 0.4757213
		 0.80359751 0.58183742 0.68799442 0.56233716 0.91590887 0.56318104 0.79840058 0.71308798
		 0.7478202 0.66936636 0.85013729 0.67061019 0.6311633 0.17276551 0.6760928 0.16129793
		 0.63709098 0.2524823 0.58679539 0.16665472 0.63037229 0.10499401 0.67923653 0.1167229
		 0.58410782 0.11975579 0.62537926 0.021072373 0.82663256 0.79827631 0.84711391 0.8133322
		 0.82865578 0.73129272 0.79893523 0.81198275 0.790438 0.88567007 0.82486504 0.87851059
		 0.85569566 0.88600576 0.80500239 0.92606628 0.82104069 0.96603465 0.83895046 0.92627287
		 0.069989964 0.11792345 0.05120001 0.11370835 0.077889428 0.16647325 0.089828297 0.11264343
		 0.094570264 0.090044506 0.068950936 0.10134081 0.040270068 0.083813466 0.089785621
		 0.055646867 0.069531485 0.067499869 0.04214666 0.050661087 0.067812249 0.02414912
		 0.25240582 0.094052285 0.24140222 0.081144527 0.25042552 0.11757392 0.26546019 0.082340136
		 0.26911765 0.050207224 0.25507301 0.060002204 0.23972066 0.053398695 0.26024824 0.014417998
		 0.28689387 0.19510889 0.27181259 0.18650123 0.29078355 0.227301 0.29987332 0.18305299
		 0.30218789 0.15916991 0.28401515 0.16855526 0.26278254 0.16462386 0.30057451 0.12988736
		 0.28095952 0.14870048 0.2597678 0.13233809 0.29023978 0.10322873 0.30678633 0.042540461
		 0.2954289 0.064121366 0.32106212 0.045927674 0.32213512 0.011264354 0.34519187 0.065484077
		 0.33544591 0.043435663 0.30363598 0.11245796 0.31936195 0.090594888 0.33836845 0.10324168
		 0.31405404 0.14158614 0.17248721 0.054391857 0.15788408 0.080458157 0.19001265 0.059068196
		 0.19235857 0.016145997 0.21915488 0.083945386 0.20789377 0.056358092 0.15533109 0.10995179
		 0.18762 0.10002612 0.22042076 0.11380654 0.16136594 0.13805857 0.18761344 0.12135663
		 0.21127824 0.14145055 0.17632027 0.16343406 0.31230012 0.55701303 0.29400554 0.58965588
		 0.33433595 0.5629015 0.33711866 0.50891727 0.3710033 0.59374666 0.35676995 0.55935085
		 0.29086694 0.62662446 0.3314397 0.61466122 0.37331864 0.63093114 0.30205318 0.66818678
		 0.33258733 0.64055634 0.35371718 0.67104387 0.30992749 0.68860042 0.93942183 0.46361506
		 0.92038864 0.45168489 0.93618256 0.5603599 0.95926374 0.45286834 0.97613984 0.34358019
		 0.94196242 0.35616618 0.90824497 0.34222001 0.96788305 0.30220819 0.93803924 0.28483456
		 0.92007804 0.30035484 0.070820592 0.27434272 0.084789418 0.24120164 0.048131194 0.25745729
		 0.05087271 0.30906367 0.012048508 0.24062008 0.027219083 0.27463657 0.085242949 0.20695239
		 0.045613315 0.22507888 0.0080026044 0.19643742 0.041890528 0.15855369 0.061522234
		 0.36253971 0.013802441 0.3629896 0.014252337 0.41070944 0.06197213 0.41025954 0.010675609
		 0.50880718 0.010675609 0.56870723 0.070575655 0.56870723 0.070575655 0.50880712 0.064884432
		 0.58146697 0.014480243 0.58146697 0.014480243 0.63187116 0.064884432 0.63187116 0.015783263
		 0.63183886 0.013954325 0.68405485 0.06617035 0.68588376 0.067999259 0.63366777 0.022686105
		 0.93985742 0.020969804 0.98649436 0.067606732 0.98821062 0.069323078 0.94157368 0.54710698
		 0.12819633 0.57114846 0.14319339 0.54347396 0.080704957 0.52193666 0.13737068 0.51172912
		 0.16523436 0.54658282 0.15570739 0.57994801 0.18340579 0.51127005 0.21015951 0.53945148
		 0.19881502 0.57134074 0.22550401 0.53015399 0.251865 0.65215743 0.81723779 0.64667356
		 0.85801798 0.6909703 0.83111984 0.69216931 0.77325517 0.7298764 0.86536407 0.71502948
		 0.82725513 0.64169955 0.89814365 0.68617618 0.88622075 0.73044479 0.90639973 0.64711356
		 0.93685907 0.68531537 0.91452593 0.7181412 0.94418448 0.67151535 0.9870429 0.97572303
		 0.20275432 0.97916627 0.15427595 0.92889297 0.1891222 0.93177545 0.25748199 0.88050532
		 0.1520505 0.9008323 0.19557434 0.98200488 0.10671151 0.93040228 0.12334901 0.8760283
		 0.10423005 0.96606457 0.053719878 0.92795718 0.090225995 0.89980817 0.051870227 0.95467484
		 0.016239317 0.38578039 0.067871071 0.41306415 0.088929325 0.38719034 0.019523598
		 0.35777366 0.087751597 0.36105877 0.12689647 0.38703942 0.12326261 0.41265669 0.13289389
		 0.39408293 0.1874949 0.96527153 0.58703536 0.98066849 0.59389555 0.96461493 0.50054961
		 0.94773358 0.59414572 0.94345027 0.6641565 0.96691781 0.65775937 0.98994309 0.66364413
		 0.96346682 0.73048055 0.9475823 0.70216787 0.98083586 0.70218343 0.107142 0.55336225
		 0.12135449 0.56998932 0.10897177 0.52280301 0.091031373 0.56923711 0.086579829 0.61028361
		 0.10460916 0.59663916 0.12502626 0.60511947 0.10095036 0.6506781 0.48093098 0.72020888
		 0.46148878 0.70715463 0.48303968 0.76388359 0.49953204 0.7051999 0.50492102 0.67317963
		 0.47958219 0.68429404 0.4517473 0.6770156 0.49782813 0.64809334 0.47768867 0.65803802
		 0.46085161 0.63870293 0.48708582 0.59953171 0.6393795 0.59487808 0.6170823 0.63637608
		 0.66791874 0.62147105 0.67112321 0.54958487 0.7174105 0.64997929 0.69923788 0.60001951
		 0.61110872 0.67003185 0.66594362 0.66279423 0.71891552 0.69864756 0.62688124 0.72904181
		 0.66221529 0.71017098 0.69437498 0.75610411 0.64484221 0.78579044 0.12666717 0.21711509
		 0.094336763 0.18967041 0.12447705 0.25588074 0.16285321 0.19263218 0.14211509 0.12711488
		 0.12128379 0.15783733 0.10742839 0.142456;
	setAttr ".uvst[0].uvsp[750:794]" 0.142432 0.085460976 0.75495267 0.87857091
		 0.74097109 0.86890125 0.75474286 0.96602488 0.77235281 0.86973274 0.76444244 0.82433629
		 0.79126501 0.81818771 0.7380048 0.8166436 0.77343738 0.77369416 0.75544369 0.7756083
		 0.73756123 0.7730068 0.6393795 0.59487808 0.6170823 0.63637608 0.66791874 0.62147105
		 0.67112321 0.54958487 0.7174105 0.64997929 0.69923788 0.60001951 0.61110872 0.67003185
		 0.66594362 0.66279423 0.71891552 0.69864756 0.62688124 0.72904181 0.66221529 0.71017098
		 0.69437498 0.75610411 0.64484221 0.78579044 0.84075952 0.15093032 0.84187126 0.25176302
		 0.79545093 0.24034578 0.8094219 0.18980491 0.87346685 0.19998094 0.88945794 0.25413546
		 0.84702492 0.3102535 0.81158829 0.29894656 0.8825525 0.30898958 0.84887004 0.3559655
		 0.78456879 0.13693073 0.74486113 0.12871096 0.78092289 0.20684841 0.82451606 0.13295701
		 0.82800961 0.093876153 0.78682172 0.084275216 0.74599552 0.088105947 0.81115603 0.041066319
		 0.78850424 0.046694487 0.76749396 0.036476463 0.78964663 0.011902362;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 780 ".vt";
	setAttr ".vt[0:165]"  0.54729152 -0.51349401 -0.54729152 1.3091516e-009 -0.51349401 -0.77398705
		 -0.54729152 -0.51349401 -0.54729152 -0.77398705 -0.51349401 6.5457578e-010 -0.54729152 -0.51349401 0.54729146
		 1.3091516e-009 -0.51349401 0.77398711 0.54729152 -0.51349401 0.54729146 0.77398717 -0.51349401 6.5457578e-010
		 0.6043691 -0.09648633 -0.6043691 3.1870957e-009 -0.09648633 -0.85470694 -0.6043691 -0.09648633 -0.6043691
		 -0.85470694 -0.09648633 1.5935478e-009 -0.6043691 -0.09648633 0.6043691 3.1870957e-009 -0.09648633 0.854707
		 0.60436916 -0.09648633 0.60436916 0.85470706 -0.09648633 1.5935478e-009 0.56567639 0.24096978 -0.56567639
		 1.3454073e-009 0.24096978 -0.79998714 -0.56567639 0.24096978 -0.56567639 -0.79998714 0.24096978 6.7270367e-010
		 -0.56567639 0.24096978 0.56567639 1.3454073e-009 0.24096978 0.7999872 0.56567639 0.24096978 0.56567639
		 0.79998726 0.24096978 6.7270367e-010 0.42322585 0.54246283 -0.42322585 9.6429154e-010 0.54246283 -0.59853172
		 -0.42322588 0.54246283 -0.42322585 -0.59853172 0.54246283 4.8214577e-010 -0.42322588 0.54246283 0.42322585
		 9.6429154e-010 0.54246283 0.59853172 0.42322588 0.54246283 0.42322588 0.59853178 0.54246283 4.8214577e-010
		 0.051546 -1.043438673 -0.077839203 -0.29755011 -0.87786591 0.29755014 -0.4207994 -0.87786591 3.5313147e-010
		 -0.29755011 -0.87786591 -0.29755014 7.0626294e-010 -0.87786591 -0.4207994 0.29755014 -0.87786591 -0.29755014
		 0.42079943 -0.87786591 3.5313147e-010 0.29755014 -0.87786591 0.29755014 7.0626294e-010 -0.87786591 0.4207994
		 0.18502963 -4.052257538 -0.18748307 0.17109597 -3.72422814 0.033440948 -0.14570701 -3.86581731 0.2236948
		 -0.13177371 -4.19385147 0.002769351 -0.16166291 -0.87319916 -0.0085301101 0.0074089058 -0.88446707 0.15858823
		 0.16166291 -0.80249077 0.0085300058 -0.0074089766 -0.79122126 -0.15858823 0.078751519 -3.96403265 0.27805063
		 0.13580075 -4.16810036 0.18892542 0.24608558 -4.065848351 0.01680918 0.1890372 -3.8617835 0.10593426
		 0.24617599 -1.55314088 -0.28906548 0.18852411 -1.61345935 -0.23775685 0.2459695 -1.60038495 -0.15901509
		 0.30361339 -1.54006588 -0.2103118 0.42821282 -3.86840868 0.23847556 0.42782459 -3.88656497 0.29996866
		 0.46647429 -3.93557858 0.28436226 0.46686172 -3.91742229 0.22286904 0.035959132 -1.22958255 -0.041098841
		 0.10316475 -1.18445218 -0.10496064 0.031324968 -1.18502474 -0.18294144 -0.035883136 -1.23015547 -0.11907591
		 0.6653887 -2.27599907 -0.04809007 0.72882473 -2.24879599 -0.085457027 0.70385689 -2.28411913 -0.15190582
		 0.64042103 -2.3113215 -0.11453927 0.81329262 -2.61791015 0.067998543 0.8754645 -2.60580111 0.038487267
		 0.854137 -2.63575339 -0.022094794 0.79196537 -2.64786196 0.0074160881 0.85436642 -2.98057771 0.17865855
		 0.91223115 -2.98395395 0.15660791 0.89264393 -3.0027308464 0.099320009 0.8347795 -2.99935412 0.12137033
		 0.78727049 -3.34381199 0.26203036 0.83813453 -3.36218452 0.24597074 0.82210398 -3.36872458 0.19121358
		 0.77124047 -3.35035133 0.20727301 0.477844 -1.98114955 -0.1179497 0.53973496 -1.93978751 -0.16179135
		 0.50430799 -1.96999884 -0.23423445 0.44241509 -2.011360168 -0.19039014 0.64674723 -3.6151886 0.28795347
		 0.69150412 -3.64888144 0.27212045 0.68368256 -3.64307356 0.21399526 0.63892639 -3.60938001 0.22982824
		 0.42322585 0.54232579 -0.43855742 -2.4746201e-009 0.49078515 -0.66391498 -0.42322588 0.54105562 -0.43855742
		 -0.53683186 0.6244415 -0.0017689756 -0.42322588 0.5462091 0.42322585 9.6429154e-010 0.5462091 0.59853172
		 0.42322588 0.5462091 0.42322588 0.59853178 0.58878541 4.8214577e-010 0.2223943 0.76255631 -0.23394895
		 5.2742855e-010 0.75801313 -0.34400436 -0.2223943 0.76255637 -0.23394895 -0.31451303 0.77141392 2.6371427e-010
		 -0.2223943 0.76548302 0.22239429 5.2742855e-010 0.76548302 0.31451303 0.2223943 0.76548302 0.22239429
		 0.31451303 0.76548302 2.6371427e-010 2.2986744e-010 0.84839243 1.1493372e-010 -0.73826277 0.25909889 -0.30798328
		 -0.72448665 0.43951946 -0.00027214258 -0.73826277 0.25989169 0.30554095 -0.98141378 0.079322755 1.6801968e-009
		 -0.43802834 0.34593943 0.68246329 -0.13407496 0.33280268 0.73998076 -0.35690686 0.24505109 0.77730525
		 -0.24646926 0.16525441 0.83245945 0.65144843 0.33978152 0.36779395 0.78974253 0.33544308 -4.7471791e-009
		 0.65144837 0.33978152 -0.36779395 1.08481133 -0.0094153285 -8.2386888e-009 0.28952879 0.21826315 0.70547646
		 0.39208451 0.40276146 0.54619187 -1.023808479 -1.20402277 0.64519382 -0.76176971 -1.036463857 0.21105407
		 -0.68930429 -0.99454415 0.45235839 -0.51303256 -1.05185473 0.6109814 -0.57587683 -1.0043257475 0.064599618
		 -0.37494007 -0.93504226 0.23768423 -0.30033076 -1.008210659 0.48437959 0.010827444 -1.020348191 -0.0016442463
		 -1.1688751 -1.16078734 -1.10685945 -1.69745111 -1.31257284 -0.93862414 -1.52646625 -1.13328636 -0.4196299
		 -0.75618947 -1.087571859 -1.17058945 -1.13539457 -0.98317879 -0.6571275 -1.3523829 -1.053636789 -0.041803628
		 -0.40271541 -1.011784077 -1.062237144 -0.7029866 -0.7821508 -0.42038962 -1.07933116 -0.9685052 0.17729282
		 -0.16598958 -0.95483136 -0.78660655 -0.30389041 -0.9013136 -0.18332537 -0.72972071 -0.94088 0.25360286
		 -0.059566002 -0.97277403 -0.39520159 -0.033423051 -1.054960608 -0.014867922 -0.37961259 -0.95393836 0.15507708
		 -0.034870893 -1.43348587 -1.31803858 0.16728386 -1.16998577 -1.082087398 -0.028312301 -1.052053452 -1.031187415
		 -0.28369218 -1.057708263 -0.93335062 0.28050393 -1.010991812 -0.76184821 -0.013910837 -0.9153266 -0.68474245
		 -0.31074694 -1.0075918436 -0.6975913 0.22841173 -0.99992502 -0.48973006 -0.0064208638 -0.99024463 -0.29093823
		 -0.23156099 -1.0075255632 -0.40059686 -0.0020997482 -1.059201479 -0.031686388 1.36460745 -1.45008206 -0.92436528
		 1.19274926 -1.039337635 -0.21193188 1.0061073303 -0.97265708 -0.65814185 0.73285538 -1.039337635 -1.0084912777
		 0.97467303 -0.98376405 0.00094676018 0.67452681 -0.80802846 -0.40443572 0.54068774 -1.011783838 -0.83337164
		 0.65649176 -0.98807752 0.11017227 0.29027635 -1.0058012009 -0.16763064 0.23037064 -0.98848921 -0.62789106
		 0.25925881 -0.99670315 0.062593699 0.03031604 -1.035307169 -0.012717258;
	setAttr ".vt[166:331]" 0.071625464 -1.00093781948 -0.23946594 1.07324028 -1.35260963 0.67491913
		 0.61052293 -1.039672375 0.66162753 0.78983468 -0.99930495 0.4953765 0.85525203 -1.044371247 0.25896823
		 0.39899525 -0.99755496 0.55574667 0.50236756 -0.90688205 0.31587601 0.66652173 -1.0026915073 0.11557835
		 0.13921069 -1.023949027 0.30804005 0.13235146 -1.0013644695 0.094827384 0.3452369 -1.022945166 0.0016762912
		 -0.052341938 -1.048384905 -0.01300345 -0.31971329 -1.30360889 1.59111989 0.0024685711 -1.55364156 1.82643259
		 0.32465041 -1.30360889 1.59111989 -0.52828151 -1.15312409 1.27102327 0.0024685711 -1.039408088 1.35089993
		 0.53321868 -1.15312409 1.27102327 -0.57772261 -1.064686656 0.82602131 0.0024685711 -0.80690372 0.75634313
		 0.58265978 -1.064686656 0.82602131 -0.25773078 -0.95451653 0.28418761 -0.00046422007 -0.96464592 0.048441373
		 0.25668302 -0.95590329 0.27937931 -0.69708806 0.40801394 0.54787582 -0.5596016 0.63089919 0.16794685
		 -0.50003278 0.68463278 0.37226421 -0.32703716 0.68045461 0.50722128 -0.448805 0.76739299 0.054289967
		 -0.30693039 0.8508029 0.21849906 -0.19057745 0.81663489 0.40924037 -0.17872581 0.84970713 -0.023291513
		 -0.13665977 0.87246764 0.093818948 -0.027948081 0.85678864 0.16104357 0.018417269 0.8401835 -0.012580439
		 0.75329471 0.37602878 -0.27985916 0.7727741 0.23551548 -0.50648624 0.53801638 0.44431567 -0.53878468
		 0.38531637 0.74118507 -0.017988963 0.23968112 0.7932198 -0.14364493 0.12987608 0.77785194 -0.29835713
		 0.037054658 0.84538186 -0.014005307 0.31351137 0.63791025 -0.47881567 0.48944482 0.65046942 -0.28989294
		 0.6285494 0.54489803 -0.09615615 0.65660495 0.95906639 -0.85300595 0.36232471 1.053874373 -0.71581995
		 0.38906887 1.0075126886 -0.86226404 0.28782862 0.90635514 -0.92798227 0.23327434 1.025445938 -0.61008227
		 0.22810175 1.0010682344 -0.81851268 0.098842978 0.82234001 -0.89913625 0.15216629 0.81278288 -0.50395119
		 0.205183 0.76891458 -0.66207147 -0.013269525 0.691872 -0.77311778 -0.020518262 0.62443805 -0.5111149
		 -0.020122927 0.62781417 -0.50927013 0.23279828 1.26765883 -0.41909659 0.055817571 1.064410448 -0.47683865
		 0.15718073 1.13611054 -0.49746442 0.19663741 1.027873993 -0.53943443 0.16803144 0.83606482 -0.54158837
		 0.097077832 0.89792645 -0.46401596 -0.022609968 0.85785925 -0.45452213 -0.45229068 1.29774237 -0.37582743
		 -0.29520309 1.12528479 -0.61490637 -0.28210729 1.22090745 -0.52681386 -0.15542082 1.2096796 -0.50097138
		 -0.22159088 0.96827936 -0.65250194 -0.17196284 1.062573195 -0.54809833 -0.032700565 1.085622787 -0.50255978
		 -0.16692793 0.85039425 -0.58756214 -0.14208961 0.92818975 -0.48533648 0.0006307438 0.88483608 -0.47194147
		 -0.025604781 0.62919033 -0.50951201 -0.093911961 1.32679939 -0.12214579 0.051197086 1.4270215 0.11376391
		 0.19630612 1.31854975 -0.13404389 -0.20945632 1.19408 -0.29212677 0.051197086 1.36164856 -0.29726672
		 0.31185049 1.17119813 -0.32512784 -0.23064765 1.058574677 -0.4147647 0.054430567 1.16336215 -0.44465435
		 0.34337789 1.0052192211 -0.50116885 -0.091961637 0.76458549 -0.42330146 0.066524051 0.8980943 -0.33312827
		 0.25507501 0.72065282 -0.54810679 0.061054707 0.49779373 -0.48584718 0.054475788 0.49801517 -0.48635584
		 -0.68203008 0.95700753 -0.43089157 -0.38483569 0.85388136 -0.69421488 -0.49061033 0.98683143 -0.52972639
		 -0.27901858 1.033578753 -0.43504763 -0.12313768 0.80062211 -0.38800782 -0.23694232 0.79133749 -0.41917974
		 -0.11452255 0.64998257 -0.52475411 0.54372627 0.84452367 -1.091269135 0.65235662 0.5791322 -1.24828136
		 0.36551246 0.73599571 -1.24779272 0.4508231 0.92354167 -0.89958179 0.43683314 0.7911315 -1.14988458
		 0.1572405 0.74475694 -1.15743268 0.34683368 0.86684656 -0.7085191 0.25779599 0.74435842 -0.91360646
		 0.025902871 0.67140746 -0.9903897 0.22809905 0.74988949 -0.56468797 0.22475298 0.6345619 -0.79645973
		 -0.034652945 0.5959723 -0.81349337 0.062502548 0.49624366 -0.49199164 -0.26926452 0.71683359 -1.3393054
		 -0.5753355 0.49275005 -1.39749706 -0.52174175 0.81553447 -1.19695485 -0.050590422 0.75590378 -1.19172025
		 -0.37932745 0.76951039 -1.24174678 -0.46651182 0.91849971 -0.95721751 0.075791031 0.68724012 -0.97048986
		 -0.21650195 0.73778784 -0.93095911 -0.37887487 0.86498237 -0.71414232 0.097088203 0.60055149 -0.66905987
		 -0.18414545 0.61733544 -0.79234689 -0.19861014 0.72279656 -0.53327918 0.05717288 0.49526525 -0.48888624
		 0.80992144 0.90034389 -0.58303559 0.40869302 0.97710621 -0.51979661 0.54617959 0.90869129 -0.62801808
		 0.44462132 0.81181812 -0.75554389 0.24955781 0.83850181 -0.45265591 0.28584659 0.76204681 -0.57475591
		 0.24955815 0.66955453 -0.69261253 0.065131068 0.49858725 -0.48788863 0.13223253 0.70618927 1.07353723
		 0.25657707 0.82304931 0.8286649 0.33660537 0.77694345 0.90118152 0.39432505 0.68986583 0.89057726
		 0.27226287 0.81719232 0.7030589 0.37846869 0.77414215 0.81062138 0.47788724 0.63478255 0.77045608
		 0.24878748 0.67439538 0.58299994 0.29632962 0.6219362 0.69097519 0.46705705 0.55567831 0.63219202
		 0.33763522 0.51274568 0.48804772 0.34130931 0.52099299 0.46787947 0.19287056 1.019163966 0.62405288
		 0.30530369 0.86533463 0.54479122 0.26490638 0.91393554 0.61469448 0.25696102 0.82818538 0.64650059
		 0.23839031 0.68676114 0.60329509 0.24252716 0.74313039 0.53155589 0.30077031 0.71689463 0.46155089
		 0.56855893 1.040709376 0.25403407 0.57896423 0.8858999 0.4501881 0.53749663 0.96731865 0.41520199
		 0.45207584 0.96335053 0.46135414 0.5416466 0.76605308 0.49370378 0.47146532 0.84880817 0.46720663
		 0.3723889 0.87266552 0.51133692 0.4667778 0.61903584 0.48622048 0.41288513 0.75738323 0.43492201
		 0.27778652 0.73412168 0.50842065 0.3462705 0.51817977 0.4647783 0.26515302 0.51195943 0.49310464
		 0.6709348 0.78310299 0.28099176 0.66738796 0.81703913 0.094587892 0.56382865 0.88146818 0.23962247
		 0.62970436 0.703592 0.37753472 0.60702223 0.82446808 0.26854038;
	setAttr ".vt[332:497]" 0.45326164 0.86563504 0.30938455 0.3239927 0.71035564 0.36491302
		 0.43857759 0.66712105 0.33976239 0.41618159 0.56016672 0.43960524 0.3188808 0.63158572 1.063102484
		 0.32013226 0.41458461 1.17637157 0.48825678 0.53583825 1.046169281 0.27874923 0.71479821 0.92026347
		 0.40350217 0.58705509 1.035066128 0.55777276 0.55706757 0.89236856 0.23573031 0.69788617 0.75842255
		 0.3796182 0.58431631 0.81164843 0.54074585 0.52546239 0.72792917 0.22633924 0.6279 0.60820031
		 0.33207589 0.51991862 0.71506941 0.47386336 0.49532679 0.59425569 0.26515302 0.51195943 0.49310464
		 0.88188517 0.52240884 0.77109033 1.064056277 0.35552591 0.62436157 0.95565355 0.61716843 0.5758065
		 0.69002271 0.56501806 0.80640274 0.89681315 0.57512808 0.66774535 0.81154585 0.72112143 0.48469955
		 0.50438738 0.53863382 0.7441265 0.64855099 0.58615887 0.57931709 0.63723087 0.7092787 0.39245555
		 0.33484966 0.51055378 0.58327782 0.55267107 0.51329499 0.50867957 0.43729219 0.62271476 0.3719568
		 0.26515299 0.51195943 0.49310467 0.028905228 0.78964567 0.8341912 -0.079687655 0.72918391 0.92933303
		 0.073349893 0.71294355 0.90077168 0.11418666 0.80095232 0.69899404 0.088484325 0.73481268 0.82045001
		 0.20192179 0.64975166 0.82797885 0.15830921 0.70960784 0.56783295 0.19466054 0.6377303 0.64454758
		 0.26765817 0.55586231 0.68046403 0.21313456 0.62133473 0.50010794 0.28520441 0.51531208 0.58120799
		 0.26515302 0.51195943 0.49310464 0.028905228 0.78964567 0.8341912 -0.079687655 0.72918391 0.92933303
		 0.073349893 0.71294355 0.90077168 0.11418666 0.80095232 0.69899404 0.088484325 0.73481268 0.82045001
		 0.20192179 0.64975166 0.82797885 0.15830921 0.70960784 0.56783295 0.19466054 0.6377303 0.64454758
		 0.26765817 0.55586231 0.68046403 0.21313456 0.62133473 0.50010794 0.28520441 0.51531208 0.58120799
		 1.20322955 0.20886844 -0.47594428 0.20386906 0.66398191 -0.5157243 0.079325765 0.5253275 -0.51855171
		 0.19119659 0.59136665 -0.65812057 0.75863755 0.46763414 -0.66338307 0.81690311 0.50774181 -0.59577525
		 0.77281594 0.54887861 -0.50406533 0.39233798 0.60857964 -0.76108843 0.44569522 0.67791808 -0.65543318
		 0.41307145 0.72738576 -0.52811342 -0.55700481 -0.10319042 -0.97722626 -0.012935907 0.50464988 -0.81707108
		 -0.15705396 0.53878707 -0.78548783 -0.25315917 0.60158378 -0.68672937 0.011989146 0.5414027 -0.55737358
		 -0.081261888 0.54092103 -0.52269495 -0.14155322 0.60335946 -0.47406372 -0.39128888 0.3996138 -0.84129423
		 -0.35654432 0.33706534 -0.90358484 -0.24865186 0.34205753 -0.91868705 -0.64711881 1.52431309 0.50842738
		 -0.11194156 1.27025199 0.49646094 -0.17455605 1.30269384 0.5977174 -0.17461377 1.21041608 0.6796363
		 0.19223015 0.78279877 0.35865861 0.10942353 0.802297 0.53141952 0.083348058 0.67884398 0.67689425
		 0.3040348 0.58955789 0.40405074 0.19041352 0.44612241 0.43982172 0.16448861 0.49539477 0.55522615
		 1.17046666 -0.15307993 0.90911734 0.76423824 0.10675231 0.80877656 0.93954039 0.13557592 0.78707439
		 0.9214046 0.1660298 0.64288801 0.45263198 0.35045055 0.67297196 0.62381899 0.42750242 0.59533572
		 0.68699956 0.43884552 0.42559785 0.34575734 0.48725027 0.506419 0.24153423 0.62972629 0.33647609
		 0.46668786 0.53286093 0.37877724 0 0.79599774 0.16158964 7.1760214e-017 1.11917698 0.16158964
		 -7.1760214e-017 0.79599774 -0.16158964 0 1.11917698 -0.16158964 -0.29709011 0.71423829 -0.072881192
		 -0.35792822 0.98286211 -0.15019712 -0.26587772 0.64213538 -0.34795344 -0.32671583 0.91075921 -0.42526937
		 0.2187088 0.76377827 -0.060342818 0.2187088 1.028772473 -0.060342818 0.13574751 0.76377827 -0.31201595
		 0.13574751 1.028772473 -0.31201595 0.16167299 0.72508591 0.30117774 0.15340124 0.97512007 0.35303909
		 0.20105506 0.77760279 0.054264501 0.19278331 1.027637005 0.10612585 -0.076516196 0.60152417 0.49732381
		 -0.1088454 0.84814584 0.55595553 0.042566556 0.66847825 0.28135726 0.010237362 0.91509992 0.33998895
		 0.17427605 1.13369524 0.23482184 -0.017481484 1.23349464 0.1911848 0.020224817 1.12078822 0.38791335
		 0.31433836 1.017292619 0.25456887 0.18516916 1.13563001 0.40673804 0.042930491 0.98674881 0.53503203
		 0.12518477 0.77666748 0.64246327 0.24950603 0.95799148 0.48316121 0.35815296 0.84832752 0.28294104
		 0.26108038 0.5703615 0.49630949 -1.1688751 -1.16078734 -1.10685945 -1.69745111 -1.31257284 -0.93862414
		 -1.52646625 -1.13328636 -0.4196299 -0.75618947 -1.087571859 -1.17058945 -1.13539457 -0.98317879 -0.6571275
		 -1.3523829 -1.053636789 -0.041803628 -0.40271541 -1.011784077 -1.062237144 -0.7029866 -0.7821508 -0.42038962
		 -1.07933116 -0.9685052 0.17729282 -0.16598958 -0.95483136 -0.78660655 -0.30389041 -0.9013136 -0.18332537
		 -0.72972071 -0.94088 0.25360286 -0.059566002 -0.97277403 -0.39520159 -0.033423051 -1.054960608 -0.014867922
		 -0.37961259 -0.95393836 0.15507708 -0.034870893 -1.43348587 -1.31803858 0.16728386 -1.16998577 -1.082087398
		 -0.028312301 -1.052053452 -1.031187415 -0.28369218 -1.057708263 -0.93335062 0.28050393 -1.010991812 -0.76184821
		 -0.013910837 -0.9153266 -0.68474245 -0.31074694 -1.0075918436 -0.6975913 0.22841173 -0.99992502 -0.48973006
		 -0.0064208638 -0.99024463 -0.29093823 -0.23156099 -1.0075255632 -0.40059686 -0.0020997482 -1.059201479 -0.031686388
		 1.36460745 -1.45008206 -0.92436528 1.19274926 -1.039337635 -0.21193188 1.0061073303 -0.97265708 -0.65814185
		 0.73285538 -1.039337635 -1.0084912777 0.97467303 -0.98376405 0.00094676018 0.67452681 -0.80802846 -0.40443572
		 0.54068774 -1.011783838 -0.83337164 0.65649176 -0.98807752 0.11017227 0.29027635 -1.0058012009 -0.16763064
		 0.23037064 -0.98848921 -0.62789106 0.25925881 -0.99670315 0.062593699 0.03031604 -1.035307169 -0.012717258
		 0.071625464 -1.00093781948 -0.23946594 1.07324028 -1.35260963 0.67491913 0.61052293 -1.039672375 0.66162753
		 0.78983468 -0.99930495 0.4953765 0.85525203 -1.044371247 0.25896823;
	setAttr ".vt[498:663]" 0.39899525 -0.99755496 0.55574667 0.50236756 -0.90688205 0.31587601
		 0.66652173 -1.0026915073 0.11557835 0.13921069 -1.023949027 0.30804005 0.13235146 -1.0013644695 0.094827384
		 0.3452369 -1.022945166 0.0016762912 -0.052341938 -1.048384905 -0.01300345 -0.31971329 -1.30360889 1.59111989
		 0.0024685711 -1.55364156 1.82643259 0.32465041 -1.30360889 1.59111989 -0.52828151 -1.15312409 1.27102327
		 0.0024685711 -1.039408088 1.35089993 0.53321868 -1.15312409 1.27102327 -0.57772261 -1.064686656 0.82602131
		 0.0024685711 -0.80690372 0.75634313 0.58265978 -1.064686656 0.82602131 -0.25773078 -0.95451653 0.28418761
		 -0.00046422007 -0.96464592 0.048441373 0.25668302 -0.95590329 0.27937931 -1.023808479 -1.20402277 0.64519382
		 -0.76176971 -1.036463857 0.21105407 -0.68930429 -0.99454415 0.45235839 -0.51303256 -1.05185473 0.6109814
		 -0.57587683 -1.0043257475 0.064599618 -0.37494007 -0.93504226 0.23768423 -0.30033076 -1.008210659 0.48437959
		 0.010827444 -1.020348191 -0.0016442463 1.17046666 -0.15307993 0.90911734 0.76423824 0.10675231 0.80877656
		 0.93954039 0.13557592 0.78707439 0.9214046 0.1660298 0.64288801 0.45263198 0.35045055 0.67297196
		 0.62381899 0.42750242 0.59533572 0.68699956 0.43884552 0.42559785 0.34575734 0.48725027 0.506419
		 0.24153423 0.62972629 0.33647609 0.46668786 0.53286093 0.37877724 0.13223253 0.70618927 1.07353723
		 0.25657707 0.82304931 0.8286649 0.33660537 0.77694345 0.90118152 0.39432505 0.68986583 0.89057726
		 0.27226287 0.81719232 0.7030589 0.37846869 0.77414215 0.81062138 0.47788724 0.63478255 0.77045608
		 0.24878748 0.67439538 0.58299994 0.29632962 0.6219362 0.69097519 0.46705705 0.55567831 0.63219202
		 0.33763522 0.51274568 0.48804772 0.34130931 0.52099299 0.46787947 0.19287056 1.019163966 0.62405288
		 0.30530369 0.86533463 0.54479122 0.26490638 0.91393554 0.61469448 0.25696102 0.82818538 0.64650059
		 0.23839031 0.68676114 0.60329509 0.24252716 0.74313039 0.53155589 0.30077031 0.71689463 0.46155089
		 0.56855893 1.040709376 0.25403407 0.57896423 0.8858999 0.4501881 0.53749663 0.96731865 0.41520199
		 0.45207584 0.96335053 0.46135414 0.5416466 0.76605308 0.49370378 0.47146532 0.84880817 0.46720663
		 0.3723889 0.87266552 0.51133692 0.4667778 0.61903584 0.48622048 0.41288513 0.75738323 0.43492201
		 0.27778652 0.73412168 0.50842065 0.3462705 0.51817977 0.4647783 0.26515302 0.51195943 0.49310464
		 0.6709348 0.78310299 0.28099176 0.66738796 0.81703913 0.094587892 0.56382865 0.88146818 0.23962247
		 0.62970436 0.703592 0.37753472 0.60702223 0.82446808 0.26854038 0.45326164 0.86563504 0.30938455
		 0.3239927 0.71035564 0.36491302 0.43857759 0.66712105 0.33976239 0.41618159 0.56016672 0.43960524
		 0.3188808 0.63158572 1.063102484 0.32013226 0.41458461 1.17637157 0.48825678 0.53583825 1.046169281
		 0.27874923 0.71479821 0.92026347 0.40350217 0.58705509 1.035066128 0.55777276 0.55706757 0.89236856
		 0.23573031 0.69788617 0.75842255 0.3796182 0.58431631 0.81164843 0.54074585 0.52546239 0.72792917
		 0.22633924 0.6279 0.60820031 0.33207589 0.51991862 0.71506941 0.47386336 0.49532679 0.59425569
		 0.26515302 0.51195943 0.49310464 0.88188517 0.52240884 0.77109033 1.064056277 0.35552591 0.62436157
		 0.95565355 0.61716843 0.5758065 0.69002271 0.56501806 0.80640274 0.89681315 0.57512808 0.66774535
		 0.81154585 0.72112143 0.48469955 0.50438738 0.53863382 0.7441265 0.64855099 0.58615887 0.57931709
		 0.63723087 0.7092787 0.39245555 0.33484966 0.51055378 0.58327782 0.55267107 0.51329499 0.50867957
		 0.43729219 0.62271476 0.3719568 0.26515299 0.51195943 0.49310467 -0.64711881 1.52431309 0.50842738
		 -0.11194156 1.27025199 0.49646094 -0.17455605 1.30269384 0.5977174 -0.17461377 1.21041608 0.6796363
		 0.19223015 0.78279877 0.35865861 0.10942353 0.802297 0.53141952 0.083348058 0.67884398 0.67689425
		 0.3040348 0.58955789 0.40405074 0.19041352 0.44612241 0.43982172 0.16448861 0.49539477 0.55522615
		 0.17427605 1.13369524 0.23482184 -0.017481484 1.23349464 0.1911848 0.020224817 1.12078822 0.38791335
		 0.31433836 1.017292619 0.25456887 0.18516916 1.13563001 0.40673804 0.042930491 0.98674881 0.53503203
		 0.12518477 0.77666748 0.64246327 0.24950603 0.95799148 0.48316121 0.35815296 0.84832752 0.28294104
		 0.26108038 0.5703615 0.49630949 0.16167299 0.72508591 0.30117774 0.15340124 0.97512007 0.35303909
		 0.20105506 0.77760279 0.054264501 0.19278331 1.027637005 0.10612585 0 0.79599774 0.16158964
		 7.1760214e-017 1.11917698 0.16158964 -7.1760214e-017 0.79599774 -0.16158964 0 1.11917698 -0.16158964
		 0.2187088 0.76377827 -0.060342818 0.2187088 1.028772473 -0.060342818 0.13574751 0.76377827 -0.31201595
		 0.13574751 1.028772473 -0.31201595 -0.29709011 0.71423829 -0.072881192 -0.35792822 0.98286211 -0.15019712
		 -0.26587772 0.64213538 -0.34795344 -0.32671583 0.91075921 -0.42526937 -0.076516196 0.60152417 0.49732381
		 -0.1088454 0.84814584 0.55595553 0.042566556 0.66847825 0.28135726 0.010237362 0.91509992 0.33998895
		 0.65660495 0.95906639 -0.85300595 0.36232471 1.053874373 -0.71581995 0.38906887 1.0075126886 -0.86226404
		 0.28782862 0.90635514 -0.92798227 0.23327434 1.025445938 -0.61008227 0.22810175 1.0010682344 -0.81851268
		 0.098842978 0.82234001 -0.89913625 0.15216629 0.81278288 -0.50395119 0.205183 0.76891458 -0.66207147
		 -0.013269525 0.691872 -0.77311778 -0.020518262 0.62443805 -0.5111149 0.54372627 0.84452367 -1.091269135
		 0.65235662 0.5791322 -1.24828136 0.36551246 0.73599571 -1.24779272 0.4508231 0.92354167 -0.89958179
		 0.43683314 0.7911315 -1.14988458 0.1572405 0.74475694 -1.15743268 0.34683368 0.86684656 -0.7085191
		 0.25779599 0.74435842 -0.91360646 0.025902871 0.67140746 -0.9903897 0.22809905 0.74988949 -0.56468797
		 0.22475298 0.6345619 -0.79645973 -0.034652945 0.5959723 -0.81349337;
	setAttr ".vt[664:779]" 0.062502548 0.49624366 -0.49199164 -0.26926452 0.71683359 -1.3393054
		 -0.5753355 0.49275005 -1.39749706 -0.52174175 0.81553447 -1.19695485 -0.050590422 0.75590378 -1.19172025
		 -0.37932745 0.76951039 -1.24174678 -0.46651182 0.91849971 -0.95721751 0.075791031 0.68724012 -0.97048986
		 -0.21650195 0.73778784 -0.93095911 -0.37887487 0.86498237 -0.71414232 0.097088203 0.60055149 -0.66905987
		 -0.18414545 0.61733544 -0.79234689 -0.19861014 0.72279656 -0.53327918 0.05717288 0.49526525 -0.48888624
		 0.80992144 0.90034389 -0.58303559 0.40869302 0.97710621 -0.51979661 0.54617959 0.90869129 -0.62801808
		 0.44462132 0.81181812 -0.75554389 0.24955781 0.83850181 -0.45265591 0.28584659 0.76204681 -0.57475591
		 0.24955815 0.66955453 -0.69261253 0.065131068 0.49858725 -0.48788863 1.20322955 0.20886844 -0.47594428
		 0.20386906 0.66398191 -0.5157243 0.079325765 0.5253275 -0.51855171 0.19119659 0.59136665 -0.65812057
		 0.75863755 0.46763414 -0.66338307 0.81690311 0.50774181 -0.59577525 0.77281594 0.54887861 -0.50406533
		 0.39233798 0.60857964 -0.76108843 0.44569522 0.67791808 -0.65543318 0.41307145 0.72738576 -0.52811342
		 -0.020122927 0.62781417 -0.50927013 0.23279828 1.26765883 -0.41909659 0.055817571 1.064410448 -0.47683865
		 0.15718073 1.13611054 -0.49746442 0.19663741 1.027873993 -0.53943443 0.16803144 0.83606482 -0.54158837
		 0.097077832 0.89792645 -0.46401596 -0.022609968 0.85785925 -0.45452213 -0.45229068 1.29774237 -0.37582743
		 -0.29520309 1.12528479 -0.61490637 -0.28210729 1.22090745 -0.52681386 -0.15542082 1.2096796 -0.50097138
		 -0.22159088 0.96827936 -0.65250194 -0.17196284 1.062573195 -0.54809833 -0.032700565 1.085622787 -0.50255978
		 -0.16692793 0.85039425 -0.58756214 -0.14208961 0.92818975 -0.48533648 0.0006307438 0.88483608 -0.47194147
		 -0.025604781 0.62919033 -0.50951201 -0.093911961 1.32679939 -0.12214579 0.051197086 1.4270215 0.11376391
		 0.19630612 1.31854975 -0.13404389 -0.20945632 1.19408 -0.29212677 0.051197086 1.36164856 -0.29726672
		 0.31185049 1.17119813 -0.32512784 -0.23064765 1.058574677 -0.4147647 0.054430567 1.16336215 -0.44465435
		 0.34337789 1.0052192211 -0.50116885 -0.091961637 0.76458549 -0.42330146 0.066524051 0.8980943 -0.33312827
		 0.25507501 0.72065282 -0.54810679 0.061054707 0.49779373 -0.48584718 0.054475788 0.49801517 -0.48635584
		 -0.68203008 0.95700753 -0.43089157 -0.38483569 0.85388136 -0.69421488 -0.49061033 0.98683143 -0.52972639
		 -0.27901858 1.033578753 -0.43504763 -0.12313768 0.80062211 -0.38800782 -0.23694232 0.79133749 -0.41917974
		 -0.11452255 0.64998257 -0.52475411 -0.55700481 -0.10319042 -0.97722626 -0.012935907 0.50464988 -0.81707108
		 -0.15705396 0.53878707 -0.78548783 -0.25315917 0.60158378 -0.68672937 0.011989146 0.5414027 -0.55737358
		 -0.081261888 0.54092103 -0.52269495 -0.14155322 0.60335946 -0.47406372 -0.39128888 0.3996138 -0.84129423
		 -0.35654432 0.33706534 -0.90358484 -0.24865186 0.34205753 -0.91868705 -0.093911961 1.32679939 -0.12214579
		 0.051197086 1.4270215 0.11376391 0.19630612 1.31854975 -0.13404389 -0.20945632 1.19408 -0.29212677
		 0.051197086 1.36164856 -0.29726672 0.31185049 1.17119813 -0.32512784 -0.23064765 1.058574677 -0.4147647
		 0.054430567 1.16336215 -0.44465435 0.34337789 1.0052192211 -0.50116885 -0.091961637 0.76458549 -0.42330146
		 0.066524051 0.8980943 -0.33312827 0.25507501 0.72065282 -0.54810679 0.061054707 0.49779373 -0.48584718
		 -0.41876525 0.28423038 -0.79393011 -0.59569657 0.15141709 -0.76819378 -0.60789055 0.34173298 -0.5869348
		 -0.18503584 0.63463247 -0.55586046 -0.27290994 0.68165231 -0.42311236 -0.3839215 0.66801071 -0.31072068
		 -0.14427951 0.75063175 -0.27910066 -0.54467905 0.52475959 -0.42572919 -0.41412801 0.53272581 -0.59675795
		 -0.26539493 0.44657478 -0.72967154 0.35521564 0.068432465 -0.87719715 0.50344634 0.29055876 -0.67316461
		 0.36559382 0.34237722 -0.75276077 0.18266782 0.37392813 -0.78429484 0.51417589 0.42943919 -0.60105872
		 0.34951538 0.52477968 -0.6421504 0.16860943 0.51785046 -0.71243584 0.39522636 0.55857384 -0.43670887
		 0.30986917 0.58347714 -0.49099946 0.20216709 0.59310669 -0.48426989 0.26176736 0.59431916 -0.35514858;
	setAttr -s 1148 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 0 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 16 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 24 0 0 8 1 1 9 1 2 10 1 3 11 1 4 12 1 5 13 1 6 14 1 7 15 1 8 16 1 9 17 1 10 18 1
		 11 19 1 12 20 1 13 21 1 14 22 1 15 23 1 16 24 1 17 25 1 18 26 1 19 27 1 20 28 1 21 29 1
		 22 30 1 23 31 1 37 32 0 35 32 0 33 32 0 39 32 0 33 4 1 34 3 1 33 34 1 35 2 1 34 35 1
		 36 1 1 35 36 1 37 0 1 36 37 1 38 7 1 37 38 1 39 6 1 38 39 1 40 5 1 39 40 1 40 33 1
		 41 42 0 42 43 0 43 44 0 44 41 0 45 64 0 46 61 0 47 62 0 48 63 0 45 46 0 46 47 0 47 48 0
		 48 45 0 49 43 0 50 44 0 49 50 1 51 41 0 50 51 1 52 42 1 51 52 1 52 49 1 53 54 1 54 55 1
		 55 56 1 56 53 1 55 81 0 57 52 0 58 49 0 57 58 1 59 50 0 58 59 1 60 51 0 59 60 1 60 57 1
		 61 55 0 62 56 0 61 62 1 63 53 0 62 63 1 64 54 0 63 64 1 64 61 1 65 69 0 66 70 0 65 66 1
		 67 71 0 66 67 1 68 72 0 67 68 1 68 65 1 69 73 0 70 74 0 69 70 1 71 75 0 70 71 1 72 76 0
		 71 72 1 72 69 1 73 77 0 74 78 0 73 74 1 75 79 0 74 75 1 76 80 0 75 76 1 76 73 1 77 85 0
		 78 86 0 77 78 1 79 87 0 78 79 1 80 88 0 79 80 1 80 77 1 56 82 0 53 83 0 54 84 0 81 65 0
		 82 66 0 81 82 1 83 67 0 82 83 1 84 68 0 83 84 1 84 81 1 85 58 0 86 59 0 85 86 1 87 60 0
		 86 87 1 88 57 0;
	setAttr ".ed[166:331]" 87 88 1 88 85 1 89 90 0 90 91 0 91 92 1 92 93 1 93 94 1
		 94 95 1 95 96 1 96 89 1 97 98 1 98 99 1 99 100 1 100 101 1 101 102 1 102 103 1 103 104 1
		 104 97 1 89 97 1 90 98 1 91 99 1 92 100 1 93 101 1 94 102 1 95 103 1 96 104 1 98 105 1
		 100 105 1 102 105 1 104 105 1 91 106 0 92 107 1 106 107 0 93 108 0 107 108 0 106 109 0
		 108 109 0 93 110 0 94 111 0 110 111 0 110 112 0 111 113 0 112 113 0 95 114 0 96 115 1
		 114 115 1 89 116 0 115 116 1 114 117 0 116 117 0 94 118 0 95 119 0 118 119 0 121 120 0
		 120 123 0 121 122 1 121 124 0 122 123 1 122 125 1 123 126 0 124 125 1 124 127 0 125 126 1
		 127 126 0 128 129 0 128 131 0 129 130 0 129 132 1 130 133 0 131 132 1 131 134 0 132 133 1
		 132 135 1 133 136 0 134 135 1 134 137 0 135 136 1 135 138 1 136 139 0 137 138 1 137 140 0
		 138 139 1 138 141 1 139 142 0 140 141 0 141 142 0 144 143 0 143 146 0 144 145 1 144 147 0
		 145 146 1 145 148 1 146 149 0 147 148 1 147 150 0 148 149 1 148 151 1 149 152 0 150 151 1
		 150 153 0 151 152 1 153 152 0 155 154 0 154 157 0 155 156 1 155 158 0 156 157 1 156 159 1
		 157 160 0 158 159 1 158 161 0 159 160 1 159 162 1 160 163 0 161 162 1 161 164 0 162 163 1
		 162 165 1 163 166 0 164 165 0 165 166 0 168 167 0 167 170 0 168 169 1 168 171 0 169 170 1
		 169 172 1 170 173 0 171 172 1 171 174 0 172 173 1 172 175 1 173 176 0 174 175 1 174 177 0
		 175 176 1 177 176 0 178 179 0 178 181 0 179 180 0 179 182 1 180 183 0 181 182 1 181 184 0
		 182 183 1 182 185 1 183 186 0 184 185 1 184 187 0 185 186 1 185 188 1 186 189 0 187 188 0
		 188 189 0 191 190 0 190 193 0 191 192 1 191 194 0 192 193 1 192 195 1 193 196 0 194 195 1
		 194 197 0 195 196 1 195 198 1 196 199 0;
	setAttr ".ed[332:497]" 197 198 1 197 200 0 198 199 1 200 199 0 201 202 0 201 210 0
		 202 203 0 202 209 1 203 208 0 208 206 0 204 205 1 204 207 0 205 206 1 207 206 0 209 205 1
		 208 209 1 210 204 0 209 210 1 212 211 0 211 214 0 212 213 1 212 215 0 213 214 1 213 216 1
		 214 217 0 215 216 1 215 218 0 216 217 1 216 219 1 217 220 0 218 219 1 218 221 0 219 220 1
		 221 220 0 224 223 0 223 226 0 224 225 1 224 229 0 225 226 1 225 228 1 226 227 0 222 227 0
		 227 228 1 229 222 0 228 229 1 231 230 0 230 233 0 231 232 1 231 234 0 232 233 1 232 235 1
		 233 236 0 234 235 1 234 237 0 235 236 1 235 238 1 236 239 0 237 238 1 237 240 0 238 239 1
		 240 239 0 241 242 0 241 244 0 242 243 0 242 245 1 243 246 0 244 245 1 244 247 0 245 246 1
		 245 248 1 246 249 0 247 248 1 247 250 0 248 249 1 248 251 1 249 252 0 250 251 1 250 253 0
		 251 252 1 252 253 0 256 255 0 255 258 0 256 257 1 256 261 0 257 258 1 257 260 1 258 259 0
		 254 259 0 259 260 1 261 254 0 260 261 1 262 263 0 262 265 0 263 264 0 263 266 1 264 267 0
		 265 266 1 265 268 0 266 267 1 266 269 1 267 270 0 268 269 1 268 271 0 269 270 1 269 272 1
		 270 273 0 271 272 1 271 274 0 272 273 1 273 274 0 275 276 0 275 278 0 276 277 0 276 279 1
		 277 280 0 278 279 1 278 281 0 279 280 1 279 282 1 280 283 0 281 282 1 281 284 0 282 283 1
		 282 285 1 283 286 0 284 285 1 284 287 0 285 286 1 286 287 0 289 288 0 288 291 0 289 290 1
		 289 292 0 290 291 1 290 293 1 291 294 0 292 293 1 292 295 0 293 294 1 294 295 0 297 296 0
		 296 299 0 297 298 1 297 300 0 298 299 1 298 301 1 299 302 0 300 301 1 300 303 0 301 302 1
		 301 304 1 302 305 0 303 304 1 303 306 0 304 305 1 306 305 0 309 308 0 308 311 0 309 310 1
		 309 314 0 310 311 1 310 313 1 311 312 0 307 312 0 312 313 1 314 307 0;
	setAttr ".ed[498:663]" 313 314 1 316 315 0 315 318 0 316 317 1 316 319 0 317 318 1
		 317 320 1 318 321 0 319 320 1 319 322 0 320 321 1 320 323 1 321 324 0 322 323 1 322 325 0
		 323 324 1 325 324 0 327 328 0 327 330 0 328 329 0 328 331 1 329 332 0 330 331 1 330 335 0
		 331 332 1 331 334 1 332 333 0 326 333 0 333 334 1 335 326 0 334 335 1 336 337 0 336 339 0
		 337 338 0 337 340 1 338 341 0 339 340 1 339 342 0 340 341 1 340 343 1 341 344 0 342 343 1
		 342 345 0 343 344 1 343 346 1 344 347 0 345 346 1 345 348 0 346 347 1 348 347 0 349 350 0
		 349 352 0 350 351 0 350 353 1 351 354 0 352 353 1 352 355 0 353 354 1 353 356 1 354 357 0
		 355 356 1 355 358 0 356 357 1 356 359 1 357 360 0 358 359 1 358 361 0 359 360 1 361 360 0
		 362 363 0 362 365 0 363 364 0 363 366 1 364 367 0 365 366 1 365 368 0 366 367 1 366 369 1
		 367 370 0 368 369 1 368 371 0 369 370 1 369 373 0 370 372 0 371 373 0 373 372 0 374 375 0
		 374 377 0 375 376 0 375 378 1 376 379 0 377 378 1 377 380 0 378 379 1 378 381 1 379 382 0
		 380 381 1 380 383 0 381 382 1 381 373 0 382 384 0 383 373 0 373 384 0 391 385 0 385 389 0
		 392 388 0 386 387 0 387 388 0 389 390 1 391 394 0 390 391 1 389 392 0 390 393 1 393 387 1
		 392 393 1 394 386 0 393 394 1 404 395 0 395 402 0 402 398 0 396 397 1 396 399 0 397 398 1
		 397 400 1 398 401 0 399 400 0 400 401 0 403 397 1 402 403 1 404 396 0 403 404 1 406 405 0
		 405 408 0 406 407 1 406 409 0 407 408 1 407 410 1 408 411 0 409 410 1 409 412 0 410 411 1
		 410 413 1 411 414 0 412 413 0 413 414 0 416 415 0 415 418 0 416 417 1 416 419 0 417 418 1
		 417 420 1 418 421 0 419 420 1 419 422 0 420 421 1 420 423 1 421 424 0 422 423 0 423 424 0
		 425 426 0 425 427 0 426 428 0 427 428 0 429 430 0 429 431 0 430 432 0;
	setAttr ".ed[664:829]" 431 432 0 433 434 0 433 435 0 434 436 0 435 436 0 437 438 0
		 437 439 0 438 440 0 439 440 0 441 442 0 441 443 0 442 444 0 443 444 0 445 446 0 445 448 0
		 446 447 0 446 449 1 447 450 0 448 449 1 448 453 0 449 450 1 449 452 1 450 451 0 451 452 1
		 452 453 1 451 454 0 453 454 0 455 456 0 455 458 0 456 457 0 456 459 1 457 460 0 458 459 1
		 458 461 0 459 460 1 459 462 1 460 463 0 461 462 1 461 464 0 462 463 1 462 465 1 463 466 0
		 464 465 1 464 467 0 465 466 1 465 468 1 466 469 0 467 468 0 468 469 0 471 470 0 470 473 0
		 471 472 1 471 474 0 472 473 1 472 475 1 473 476 0 474 475 1 474 477 0 475 476 1 475 478 1
		 476 479 0 477 478 1 477 480 0 478 479 1 480 479 0 482 481 0 481 484 0 482 483 1 482 485 0
		 483 484 1 483 486 1 484 487 0 485 486 1 485 488 0 486 487 1 486 489 1 487 490 0 488 489 1
		 488 491 0 489 490 1 489 492 1 490 493 0 491 492 0 492 493 0 495 494 0 494 497 0 495 496 1
		 495 498 0 496 497 1 496 499 1 497 500 0 498 499 1 498 501 0 499 500 1 499 502 1 500 503 0
		 501 502 1 501 504 0 502 503 1 504 503 0 505 506 0 505 508 0 506 507 0 506 509 1 507 510 0
		 508 509 1 508 511 0 509 510 1 509 512 1 510 513 0 511 512 1 511 514 0 512 513 1 512 515 1
		 513 516 0 514 515 0 515 516 0 518 517 0 517 520 0 518 519 1 518 521 0 519 520 1 519 522 1
		 520 523 0 521 522 1 521 524 0 522 523 1 524 523 0 526 525 0 525 528 0 526 527 1 526 529 0
		 527 528 1 527 530 1 528 531 0 529 530 1 529 532 0 530 531 1 530 533 1 531 534 0 532 533 0
		 533 534 0 536 535 0 535 538 0 536 537 1 536 539 0 537 538 1 537 540 1 538 541 0 539 540 1
		 539 542 0 540 541 1 540 543 1 541 544 0 542 543 1 542 545 0 543 544 1 545 544 0 548 547 0
		 547 550 0 548 549 1 548 553 0 549 550 1 549 552 1 550 551 0 546 551 0;
	setAttr ".ed[830:995]" 551 552 1 553 546 0 552 553 1 555 554 0 554 557 0 555 556 1
		 555 558 0 556 557 1 556 559 1 557 560 0 558 559 1 558 561 0 559 560 1 559 562 1 560 563 0
		 561 562 1 561 564 0 562 563 1 564 563 0 566 567 0 566 569 0 567 568 0 567 570 1 568 571 0
		 569 570 1 569 574 0 570 571 1 570 573 1 571 572 0 565 572 0 572 573 1 574 565 0 573 574 1
		 575 576 0 575 578 0 576 577 0 576 579 1 577 580 0 578 579 1 578 581 0 579 580 1 579 582 1
		 580 583 0 581 582 1 581 584 0 582 583 1 582 585 1 583 586 0 584 585 1 584 587 0 585 586 1
		 587 586 0 588 589 0 588 591 0 589 590 0 589 592 1 590 593 0 591 592 1 591 594 0 592 593 1
		 592 595 1 593 596 0 594 595 1 594 597 0 595 596 1 595 598 1 596 599 0 597 598 1 597 600 0
		 598 599 1 600 599 0 602 601 0 601 604 0 602 603 1 602 605 0 603 604 1 603 606 1 604 607 0
		 605 606 1 605 608 0 606 607 1 606 609 1 607 610 0 608 609 0 609 610 0 611 612 0 611 614 0
		 612 613 0 612 615 1 613 616 0 614 615 1 614 619 0 615 616 1 615 618 1 616 617 0 617 618 1
		 618 619 1 617 620 0 619 620 0 621 622 0 621 623 0 622 624 0 623 624 0 625 626 0 625 627 0
		 626 628 0 627 628 0 629 630 0 629 631 0 630 632 0 631 632 0 633 634 0 633 635 0 634 636 0
		 635 636 0 637 638 0 637 639 0 638 640 0 639 640 0 642 641 0 641 644 0 642 643 1 642 645 0
		 643 644 1 643 646 1 644 647 0 645 646 1 645 648 0 646 647 1 646 649 1 647 650 0 648 649 1
		 648 651 0 649 650 1 651 650 0 652 653 0 652 655 0 653 654 0 653 656 1 654 657 0 655 656 1
		 655 658 0 656 657 1 656 659 1 657 660 0 658 659 1 658 661 0 659 660 1 659 662 1 660 663 0
		 661 662 1 661 664 0 662 663 1 663 664 0 665 666 0 665 668 0 666 667 0 666 669 1 667 670 0
		 668 669 1 668 671 0 669 670 1 669 672 1 670 673 0 671 672 1 671 674 0;
	setAttr ".ed[996:1147]" 672 673 1 672 675 1 673 676 0 674 675 1 674 677 0 675 676 1
		 676 677 0 679 678 0 678 681 0 679 680 1 679 682 0 680 681 1 680 683 1 681 684 0 682 683 1
		 682 685 0 683 684 1 684 685 0 692 686 0 686 690 0 693 689 0 687 688 0 688 689 0 690 691 1
		 692 695 0 691 692 1 690 693 0 691 694 1 694 688 1 693 694 1 695 687 0 694 695 1 698 697 0
		 697 700 0 698 699 1 698 703 0 699 700 1 699 702 1 700 701 0 696 701 0 701 702 1 703 696 0
		 702 703 1 705 704 0 704 707 0 705 706 1 705 708 0 706 707 1 706 709 1 707 710 0 708 709 1
		 708 711 0 709 710 1 709 712 1 710 713 0 711 712 1 711 714 0 712 713 1 714 713 0 715 716 0
		 715 718 0 716 717 0 716 719 1 717 720 0 718 719 1 718 721 0 719 720 1 719 722 1 720 723 0
		 721 722 1 721 724 0 722 723 1 722 725 1 723 726 0 724 725 1 724 727 0 725 726 1 726 727 0
		 730 729 0 729 732 0 730 731 1 730 735 0 731 732 1 731 734 1 732 733 0 728 733 0 733 734 1
		 735 728 0 734 735 1 745 736 0 736 743 0 743 739 0 737 738 1 737 740 0 738 739 1 738 741 1
		 739 742 0 740 741 0 741 742 0 744 738 1 743 744 1 745 737 0 744 745 1 746 747 0 746 749 0
		 747 748 0 747 750 1 748 751 0 749 750 1 749 752 0 750 751 1 750 753 1 751 754 0 752 753 1
		 752 755 0 753 754 1 753 756 1 754 757 0 755 756 1 755 758 0 756 757 1 757 758 0 759 760 0
		 759 768 0 760 761 0 760 767 1 761 766 0 766 764 0 762 763 1 762 765 0 763 764 1 765 764 0
		 767 763 1 766 767 1 768 762 0 767 768 1 770 769 0 769 772 0 770 771 1 770 773 0 771 772 1
		 771 774 1 772 775 0 773 774 1 773 776 0 774 775 1 774 777 1 775 778 0 776 777 1 776 779 0
		 777 778 1 779 778 0;
	setAttr -s 437 -ch 1748 ".fc[0:436]" -type "polyFaces" 
		f 4 -58 66 68 56
		mu 0 4 0 1 2 3
		f 4 -59 62 64 57
		mu 0 4 0 4 5 1
		f 4 -60 74 75 58
		mu 0 4 0 6 7 4
		f 4 -57 70 72 59
		mu 0 4 0 3 8 6
		f 4 -1 -68 -69 65
		mu 0 4 9 10 3 2
		f 4 -2 -66 -67 63
		mu 0 4 11 9 2 1
		f 4 -3 -64 -65 61
		mu 0 4 12 11 1 5
		f 4 -4 -62 -63 60
		mu 0 4 13 12 5 4
		f 4 -5 -61 -76 73
		mu 0 4 14 13 4 7
		f 4 -6 -74 -75 71
		mu 0 4 15 14 7 6
		f 4 -7 -72 -73 69
		mu 0 4 16 15 6 8
		f 4 -8 -70 -71 67
		mu 0 4 10 16 8 3
		f 4 0 33 -9 -33
		mu 0 4 10 9 17 18
		f 4 1 34 -10 -34
		mu 0 4 9 11 19 17
		f 4 2 35 -11 -35
		mu 0 4 11 12 20 19
		f 4 3 36 -12 -36
		mu 0 4 12 13 21 20
		f 4 4 37 -13 -37
		mu 0 4 13 14 22 21
		f 4 5 38 -14 -38
		mu 0 4 14 15 23 22
		f 4 6 39 -15 -39
		mu 0 4 15 16 24 23
		f 4 7 32 -16 -40
		mu 0 4 16 10 18 24
		f 4 8 41 -17 -41
		mu 0 4 18 17 25 26
		f 4 9 42 -18 -42
		mu 0 4 17 19 27 25
		f 4 10 43 -19 -43
		mu 0 4 19 20 28 27
		f 4 11 44 -20 -44
		mu 0 4 20 21 29 28
		f 4 12 45 -21 -45
		mu 0 4 21 22 30 29
		f 4 13 46 -22 -46
		mu 0 4 22 23 31 30
		f 4 14 47 -23 -47
		mu 0 4 23 24 32 31
		f 4 15 40 -24 -48
		mu 0 4 24 18 26 32
		f 4 16 49 -25 -49
		mu 0 4 26 25 33 34
		f 4 17 50 -26 -50
		mu 0 4 25 27 35 33
		f 4 18 51 -27 -51
		mu 0 4 27 28 36 35
		f 4 19 52 -28 -52
		mu 0 4 28 29 37 36
		f 4 20 53 -29 -53
		mu 0 4 29 30 38 37
		f 4 21 54 -30 -54
		mu 0 4 30 31 39 38
		f 4 22 55 -31 -55
		mu 0 4 31 32 40 39
		f 4 23 48 -32 -56
		mu 0 4 32 26 34 40
		f 4 -78 -77 -80 -79
		mu 0 4 41 42 43 44
		f 4 116 -82 -85 80
		mu 0 4 45 46 47 48
		f 4 -83 -86 81 111
		mu 0 4 49 50 47 46
		f 4 -84 -87 82 113
		mu 0 4 51 52 50 49
		f 4 -81 -88 83 115
		mu 0 4 45 48 53 54
		f 4 -90 -91 88 78
		mu 0 4 44 55 56 41
		f 4 -92 -93 89 79
		mu 0 4 57 58 55 44
		f 4 -94 -95 91 76
		mu 0 4 59 60 61 62
		f 4 -89 -96 93 77
		mu 0 4 41 56 60 59
		f 4 -97 150 158 -152
		mu 0 4 63 64 65 66
		f 4 -101 -98 151 159
		mu 0 4 67 68 63 66
		f 4 -99 100 154 -150
		mu 0 4 69 68 67 70
		f 4 -100 149 156 -151
		mu 0 4 71 69 70 72
		f 4 -103 -104 101 95
		mu 0 4 56 73 74 60
		f 4 -105 -106 102 90
		mu 0 4 55 75 73 56
		f 4 -107 -108 104 92
		mu 0 4 58 76 75 55
		f 4 -102 -109 106 94
		mu 0 4 60 74 77 61
		f 4 -111 -112 109 98
		mu 0 4 69 49 46 68
		f 4 -113 -114 110 99
		mu 0 4 71 51 49 69
		f 4 -115 -116 112 96
		mu 0 4 63 45 54 64
		f 4 -110 -117 114 97
		mu 0 4 68 46 45 63
		f 4 -119 -120 117 127
		mu 0 4 78 79 80 81
		f 4 -121 -122 118 129
		mu 0 4 82 83 79 78
		f 4 -123 -124 120 131
		mu 0 4 84 85 86 87
		f 4 -118 -125 122 132
		mu 0 4 81 80 85 84
		f 4 -127 -128 125 135
		mu 0 4 88 78 81 89
		f 4 -129 -130 126 137
		mu 0 4 90 82 78 88
		f 4 -131 -132 128 139
		mu 0 4 91 84 87 92
		f 4 -126 -133 130 140
		mu 0 4 89 81 84 91
		f 4 -135 -136 133 143
		mu 0 4 93 88 89 94
		f 4 -137 -138 134 145
		mu 0 4 95 90 88 93
		f 4 -139 -140 136 147
		mu 0 4 96 91 92 97
		f 4 -134 -141 138 148
		mu 0 4 94 89 91 96
		f 4 -143 -144 141 162
		mu 0 4 98 93 94 99
		f 4 -145 -146 142 164
		mu 0 4 100 95 93 98
		f 4 -147 -148 144 166
		mu 0 4 101 96 97 102
		f 4 167 -142 -149 146
		mu 0 4 101 99 94 96
		f 4 -154 -155 152 119
		mu 0 4 79 70 67 80
		f 4 -156 -157 153 121
		mu 0 4 83 72 70 79
		f 4 -158 -159 155 123
		mu 0 4 85 66 65 86
		f 4 -153 -160 157 124
		mu 0 4 80 67 66 85
		f 4 -162 -163 160 105
		mu 0 4 75 98 99 73
		f 4 -164 -165 161 107
		mu 0 4 76 100 98 75
		f 4 -166 -167 163 108
		mu 0 4 74 101 102 77
		f 4 -161 -168 165 103
		mu 0 4 73 99 101 74
		f 4 168 185 -177 -185
		mu 0 4 103 104 105 106
		f 4 169 186 -178 -186
		mu 0 4 104 107 108 105
		f 4 170 187 -179 -187
		mu 0 4 107 109 110 108
		f 4 171 188 -180 -188
		mu 0 4 109 111 112 110
		f 4 172 189 -181 -189
		mu 0 4 111 113 114 112
		f 4 173 190 -182 -190
		mu 0 4 113 115 116 114
		f 4 174 191 -183 -191
		mu 0 4 115 117 118 116
		f 4 175 184 -184 -192
		mu 0 4 117 103 106 118
		f 4 -193 177 178 193
		mu 0 4 119 105 108 110
		f 4 -194 179 180 194
		mu 0 4 119 110 112 114
		f 4 -195 181 182 195
		mu 0 4 119 114 116 118
		f 4 -196 183 176 192
		mu 0 4 119 118 106 105
		f 4 -171 196 198 -198
		mu 0 4 109 107 120 121
		f 4 -172 197 200 -200
		mu 0 4 111 109 121 122
		f 4 -203 -201 -199 201
		mu 0 4 123 122 121 120
		f 4 -173 203 205 -205
		mu 0 4 113 111 124 125
		f 4 -206 206 208 -208
		mu 0 4 125 124 126 127
		f 4 -175 209 211 -211
		mu 0 4 117 115 128 129
		f 4 -176 210 213 -213
		mu 0 4 103 117 129 130
		f 4 -216 -214 -212 214
		mu 0 4 131 130 129 128
		f 4 -174 216 218 -218
		mu 0 4 115 113 132 133
		f 4 223 -221 -220 221
		mu 0 4 134 135 136 137
		f 4 222 226 -225 -222
		mu 0 4 137 138 139 134
		f 4 224 228 -226 -224
		mu 0 4 134 139 140 135
		f 4 229 -229 -227 227
		mu 0 4 141 140 139 138
		f 4 231 235 -234 -231
		mu 0 4 142 143 144 145
		f 4 233 237 -235 -233
		mu 0 4 145 144 146 147
		f 4 236 240 -239 -236
		mu 0 4 143 148 149 144
		f 4 238 242 -240 -238
		mu 0 4 144 149 150 146
		f 4 241 245 -244 -241
		mu 0 4 148 151 152 149
		f 4 243 247 -245 -243
		mu 0 4 149 152 153 150
		f 4 246 250 -249 -246
		mu 0 4 151 154 155 152
		f 4 248 251 -250 -248
		mu 0 4 152 155 156 153
		f 4 256 -254 -253 254
		mu 0 4 157 158 159 160
		f 4 255 259 -258 -255
		mu 0 4 160 161 162 157
		f 4 257 261 -259 -257
		mu 0 4 157 162 163 158
		f 4 260 264 -263 -260
		mu 0 4 161 164 165 162
		f 4 262 266 -264 -262
		mu 0 4 162 165 166 163
		f 4 267 -267 -265 265
		mu 0 4 167 166 165 164
		f 4 -271 268 269 -273
		mu 0 4 168 169 170 171
		f 4 270 273 -276 -272
		mu 0 4 169 168 172 173
		f 4 272 274 -278 -274
		mu 0 4 168 171 174 172
		f 4 275 278 -281 -277
		mu 0 4 173 172 175 176
		f 4 277 279 -283 -279
		mu 0 4 172 174 177 175
		f 4 280 283 -286 -282
		mu 0 4 176 175 178 179
		f 4 282 284 -287 -284
		mu 0 4 175 177 180 178
		f 4 291 -289 -288 289
		mu 0 4 181 182 183 184
		f 4 290 294 -293 -290
		mu 0 4 184 185 186 181
		f 4 292 296 -294 -292
		mu 0 4 181 186 187 182
		f 4 295 299 -298 -295
		mu 0 4 185 188 189 186
		f 4 297 301 -299 -297
		mu 0 4 186 189 190 187
		f 4 302 -302 -300 300
		mu 0 4 191 190 189 188
		f 4 304 308 -307 -304
		mu 0 4 192 193 194 195
		f 4 306 310 -308 -306
		mu 0 4 195 194 196 197
		f 4 309 313 -312 -309
		mu 0 4 193 198 199 194
		f 4 311 315 -313 -311
		mu 0 4 194 199 200 196
		f 4 -314 314 318 -317
		mu 0 4 199 198 201 202
		f 4 -316 316 319 -318
		mu 0 4 200 199 202 203
		f 4 324 -322 -321 322
		mu 0 4 204 205 206 207
		f 4 323 327 -326 -323
		mu 0 4 207 208 209 204
		f 4 325 329 -327 -325
		mu 0 4 204 209 210 205
		f 4 328 332 -331 -328
		mu 0 4 208 211 212 209
		f 4 330 334 -332 -330
		mu 0 4 209 212 213 210
		f 4 335 -335 -333 333
		mu 0 4 214 213 212 211
		f 4 339 349 -338 336
		mu 0 4 215 216 217 218
		f 4 340 347 -340 338
		mu 0 4 219 220 216 215
		f 4 -343 -349 -350 346
		mu 0 4 221 222 217 216
		f 4 341 -345 -347 -348
		mu 0 4 220 223 221 216
		f 4 -344 342 344 -346
		mu 0 4 224 222 221 223
		f 4 -353 350 351 -355
		mu 0 4 225 226 227 228
		f 4 352 355 -358 -354
		mu 0 4 226 225 229 230
		f 4 354 356 -360 -356
		mu 0 4 225 228 231 229
		f 4 357 360 -363 -359
		mu 0 4 230 229 232 233
		f 4 359 361 -365 -361
		mu 0 4 229 231 234 232
		f 4 -364 362 364 -366
		mu 0 4 235 233 232 234
		f 4 -369 366 367 -371
		mu 0 4 236 237 238 239
		f 4 371 376 -370 368
		mu 0 4 236 240 241 237
		f 4 372 374 -372 370
		mu 0 4 239 242 240 236
		f 4 -376 -377 -375 -374
		mu 0 4 243 241 240 242
		f 4 -380 377 378 -382
		mu 0 4 244 245 246 247
		f 4 379 382 -385 -381
		mu 0 4 245 244 248 249
		f 4 381 383 -387 -383
		mu 0 4 244 247 250 248
		f 4 384 387 -390 -386
		mu 0 4 249 248 251 252
		f 4 386 388 -392 -388
		mu 0 4 248 250 253 251
		f 4 -391 389 391 -393
		mu 0 4 254 252 251 253
		f 4 393 396 -399 -395
		mu 0 4 255 256 257 258
		f 4 395 397 -401 -397
		mu 0 4 256 259 260 257
		f 4 398 401 -404 -400
		mu 0 4 258 257 261 262
		f 4 400 402 -406 -402
		mu 0 4 257 260 263 261
		f 4 403 406 -409 -405
		mu 0 4 262 261 264 265
		f 4 405 407 -411 -407
		mu 0 4 261 263 266 264
		f 4 -410 408 410 411
		mu 0 4 267 265 264 266
		f 4 -415 412 413 -417
		mu 0 4 268 269 270 271
		f 4 417 422 -416 414
		mu 0 4 268 272 273 269
		f 4 418 420 -418 416
		mu 0 4 271 274 272 268
		f 4 -422 -423 -421 -420
		mu 0 4 275 273 272 274
		f 4 423 426 -429 -425
		mu 0 4 276 277 278 279
		f 4 425 427 -431 -427
		mu 0 4 277 280 281 278
		f 4 428 431 -434 -430
		mu 0 4 279 278 282 283
		f 4 430 432 -436 -432
		mu 0 4 278 281 284 282
		f 4 433 436 -439 -435
		mu 0 4 283 282 285 286
		f 4 435 437 -441 -437
		mu 0 4 282 284 287 285
		f 4 -440 438 440 441
		mu 0 4 288 286 285 287
		f 4 442 445 -448 -444
		mu 0 4 289 290 291 292
		f 4 444 446 -450 -446
		mu 0 4 290 293 294 291
		f 4 447 450 -453 -449
		mu 0 4 292 291 295 296
		f 4 449 451 -455 -451
		mu 0 4 291 294 297 295
		f 4 452 455 -458 -454
		mu 0 4 296 295 298 299
		f 4 454 456 -460 -456
		mu 0 4 295 297 300 298
		f 4 -459 457 459 460
		mu 0 4 301 299 298 300
		f 4 -464 461 462 -466
		mu 0 4 302 303 304 305
		f 4 463 466 -469 -465
		mu 0 4 303 302 306 307
		f 4 465 467 -471 -467
		mu 0 4 302 305 308 306
		f 4 -470 468 470 471
		mu 0 4 309 307 306 308
		f 4 -475 472 473 -477
		mu 0 4 310 311 312 313
		f 4 474 477 -480 -476
		mu 0 4 311 310 314 315
		f 4 476 478 -482 -478
		mu 0 4 310 313 316 314
		f 4 479 482 -485 -481
		mu 0 4 315 314 317 318
		f 4 481 483 -487 -483
		mu 0 4 314 316 319 317
		f 4 -486 484 486 -488
		mu 0 4 320 318 317 319
		f 4 -491 488 489 -493
		mu 0 4 321 322 323 324
		f 4 493 498 -492 490
		mu 0 4 321 325 326 322
		f 4 494 496 -494 492
		mu 0 4 324 327 325 321
		f 4 -498 -499 -497 -496
		mu 0 4 328 326 325 327
		f 4 -502 499 500 -504
		mu 0 4 329 330 331 332
		f 4 501 504 -507 -503
		mu 0 4 330 329 333 334
		f 4 503 505 -509 -505
		mu 0 4 329 332 335 333
		f 4 506 509 -512 -508
		mu 0 4 334 333 336 337
		f 4 508 510 -514 -510
		mu 0 4 333 335 338 336
		f 4 -513 511 513 -515
		mu 0 4 339 337 336 338
		f 4 515 518 -521 -517
		mu 0 4 340 341 342 343
		f 4 517 519 -523 -519
		mu 0 4 341 344 345 342
		f 4 523 528 -522 520
		mu 0 4 342 346 347 343
		f 4 524 526 -524 522
		mu 0 4 345 348 346 342
		f 4 -528 -529 -527 -526
		mu 0 4 349 347 346 348
		f 4 529 532 -535 -531
		mu 0 4 350 351 352 353
		f 4 531 533 -537 -533
		mu 0 4 351 354 355 352
		f 4 534 537 -540 -536
		mu 0 4 353 352 356 357
		f 4 536 538 -542 -538
		mu 0 4 352 355 358 356
		f 4 539 542 -545 -541
		mu 0 4 357 356 359 360
		f 4 541 543 -547 -543
		mu 0 4 356 358 361 359
		f 4 -546 544 546 -548
		mu 0 4 362 360 359 361
		f 4 548 551 -554 -550
		mu 0 4 363 364 365 366
		f 4 550 552 -556 -552
		mu 0 4 364 367 368 365
		f 4 553 556 -559 -555
		mu 0 4 366 365 369 370
		f 4 555 557 -561 -557
		mu 0 4 365 368 371 369
		f 4 558 561 -564 -560
		mu 0 4 370 369 372 373
		f 4 560 562 -566 -562
		mu 0 4 369 371 374 372
		f 4 -565 563 565 -567
		mu 0 4 375 373 372 374
		f 4 570 -573 -569 567
		mu 0 4 376 377 378 379
		f 4 571 -575 -571 569
		mu 0 4 380 381 377 376
		f 4 572 575 -578 -574
		mu 0 4 378 377 382 383
		f 4 574 576 -580 -576
		mu 0 4 377 381 384 382
		f 4 577 580 -583 -579
		mu 0 4 383 382 385 386
		f 4 579 581 -584 -581
		mu 0 4 382 384 387 385
		f 4 -585 585 589 -588
		mu 0 4 388 389 390 391
		f 4 -587 587 591 -589
		mu 0 4 392 388 391 393
		f 4 590 594 -593 -590
		mu 0 4 390 394 395 391
		f 4 592 596 -594 -592
		mu 0 4 391 395 396 393
		f 4 595 599 -598 -595
		mu 0 4 394 397 398 395
		f 4 597 600 -599 -597
		mu 0 4 395 398 399 396
		f 4 608 601 602 606
		mu 0 4 400 401 402 403
		f 4 -608 -609 610 614
		mu 0 4 404 401 400 405
		f 4 -607 609 612 -611
		mu 0 4 400 403 406 405
		f 4 -605 -614 -615 611
		mu 0 4 407 408 404 405
		f 4 603 -606 -612 -613
		mu 0 4 406 409 407 405
		f 4 628 615 616 626
		mu 0 4 410 411 412 413
		f 4 -619 -628 -629 625
		mu 0 4 414 415 411 410
		f 4 617 -621 -626 -627
		mu 0 4 413 416 414 410
		f 4 618 621 -624 -620
		mu 0 4 415 414 417 418
		f 4 620 622 -625 -622
		mu 0 4 414 416 419 417
		f 4 -632 629 630 -634
		mu 0 4 420 421 422 423
		f 4 634 -637 -633 631
		mu 0 4 420 424 425 421
		f 4 635 -639 -635 633
		mu 0 4 423 426 424 420
		f 4 636 639 -642 -638
		mu 0 4 425 424 427 428
		f 4 638 640 -643 -640
		mu 0 4 424 426 429 427
		f 4 -646 643 644 -648
		mu 0 4 430 431 432 433
		f 4 648 -651 -647 645
		mu 0 4 430 434 435 431
		f 4 649 -653 -649 647
		mu 0 4 433 436 434 430
		f 4 650 653 -656 -652
		mu 0 4 435 434 437 438
		f 4 652 654 -657 -654
		mu 0 4 434 436 439 437
		f 4 657 659 -661 -659
		mu 0 4 440 441 442 443
		f 4 661 663 -665 -663
		mu 0 4 444 445 446 447
		f 4 665 667 -669 -667
		mu 0 4 448 449 450 451
		f 4 669 671 -673 -671
		mu 0 4 452 453 454 455
		f 4 673 675 -677 -675
		mu 0 4 456 457 458 459
		f 4 677 680 -683 -679
		mu 0 4 460 461 462 463
		f 4 679 681 -685 -681
		mu 0 4 461 464 465 462
		f 4 685 688 -684 682
		mu 0 4 462 466 467 463
		f 4 686 687 -686 684
		mu 0 4 465 468 466 462
		f 4 -691 -689 -688 689
		mu 0 4 469 467 466 468
		f 4 691 694 -697 -693
		mu 0 4 470 471 472 473
		f 4 693 695 -699 -695
		mu 0 4 471 474 475 472
		f 4 696 699 -702 -698
		mu 0 4 473 472 476 477
		f 4 698 700 -704 -700
		mu 0 4 472 475 478 476
		f 4 701 704 -707 -703
		mu 0 4 477 476 479 480
		f 4 703 705 -709 -705
		mu 0 4 476 478 481 479
		f 4 706 709 -712 -708
		mu 0 4 480 479 482 483
		f 4 708 710 -713 -710
		mu 0 4 479 481 484 482
		f 4 -716 713 714 -718
		mu 0 4 485 486 487 488
		f 4 715 718 -721 -717
		mu 0 4 486 485 489 490
		f 4 717 719 -723 -719
		mu 0 4 485 488 491 489
		f 4 720 723 -726 -722
		mu 0 4 490 489 492 493
		f 4 722 724 -728 -724
		mu 0 4 489 491 494 492
		f 4 -727 725 727 -729
		mu 0 4 495 493 492 494
		f 4 -732 729 730 -734
		mu 0 4 496 497 498 499
		f 4 731 734 -737 -733
		mu 0 4 497 496 500 501
		f 4 733 735 -739 -735
		mu 0 4 496 499 502 500
		f 4 736 739 -742 -738
		mu 0 4 501 500 503 504
		f 4 738 740 -744 -740
		mu 0 4 500 502 505 503
		f 4 741 744 -747 -743
		mu 0 4 504 503 506 507
		f 4 743 745 -748 -745
		mu 0 4 503 505 508 506
		f 4 -751 748 749 -753
		mu 0 4 509 510 511 512
		f 4 750 753 -756 -752
		mu 0 4 510 509 513 514
		f 4 752 754 -758 -754
		mu 0 4 509 512 515 513
		f 4 755 758 -761 -757
		mu 0 4 514 513 516 517
		f 4 757 759 -763 -759
		mu 0 4 513 515 518 516
		f 4 -762 760 762 -764
		mu 0 4 519 517 516 518
		f 4 764 767 -770 -766
		mu 0 4 520 521 522 523
		f 4 766 768 -772 -768
		mu 0 4 521 524 525 522
		f 4 769 772 -775 -771
		mu 0 4 523 522 526 527
		f 4 771 773 -777 -773
		mu 0 4 522 525 528 526
		f 4 777 -780 -776 774
		mu 0 4 526 529 530 527
		f 4 778 -781 -778 776
		mu 0 4 528 531 529 526
		f 4 -784 781 782 -786
		mu 0 4 532 533 534 535
		f 4 783 786 -789 -785
		mu 0 4 533 532 536 537
		f 4 785 787 -791 -787
		mu 0 4 532 535 538 536
		f 4 -790 788 790 -792
		mu 0 4 539 537 536 538
		f 4 796 -794 -793 794
		mu 0 4 540 541 542 543
		f 4 -795 795 799 -798
		mu 0 4 540 543 544 545
		f 4 -797 797 801 -799
		mu 0 4 541 540 545 546
		f 4 800 804 -803 -800
		mu 0 4 544 547 548 545
		f 4 802 805 -804 -802
		mu 0 4 545 548 549 546
		f 4 810 -808 -807 808
		mu 0 4 550 551 552 553
		f 4 809 813 -812 -809
		mu 0 4 553 554 555 550
		f 4 811 815 -813 -811
		mu 0 4 550 555 556 551
		f 4 814 818 -817 -814
		mu 0 4 554 557 558 555
		f 4 816 820 -818 -816
		mu 0 4 555 558 559 556
		f 4 821 -821 -819 819
		mu 0 4 560 559 558 557
		f 4 826 -824 -823 824
		mu 0 4 561 562 563 564
		f 4 -825 825 -833 -828
		mu 0 4 561 564 565 566
		f 4 -827 827 -831 -829
		mu 0 4 562 561 566 567
		f 4 829 830 832 831
		mu 0 4 568 567 566 565
		f 4 837 -835 -834 835
		mu 0 4 569 570 571 572
		f 4 836 840 -839 -836
		mu 0 4 572 573 574 569
		f 4 838 842 -840 -838
		mu 0 4 569 574 575 570
		f 4 841 845 -844 -841
		mu 0 4 573 576 577 574
		f 4 843 847 -845 -843
		mu 0 4 574 577 578 575
		f 4 848 -848 -846 846
		mu 0 4 579 578 577 576
		f 4 850 854 -853 -850
		mu 0 4 580 581 582 583
		f 4 852 856 -854 -852
		mu 0 4 583 582 584 585
		f 4 -855 855 -863 -858
		mu 0 4 582 581 586 587
		f 4 -857 857 -861 -859
		mu 0 4 584 582 587 588
		f 4 859 860 862 861
		mu 0 4 589 588 587 586
		f 4 864 868 -867 -864
		mu 0 4 590 591 592 593
		f 4 866 870 -868 -866
		mu 0 4 593 592 594 595
		f 4 869 873 -872 -869
		mu 0 4 591 596 597 592
		f 4 871 875 -873 -871
		mu 0 4 592 597 598 594
		f 4 874 878 -877 -874
		mu 0 4 596 599 600 597
		f 4 876 880 -878 -876
		mu 0 4 597 600 601 598
		f 4 881 -881 -879 879
		mu 0 4 602 601 600 599
		f 4 883 887 -886 -883
		mu 0 4 603 604 605 606
		f 4 885 889 -887 -885
		mu 0 4 606 605 607 608
		f 4 888 892 -891 -888
		mu 0 4 604 609 610 605
		f 4 890 894 -892 -890
		mu 0 4 605 610 611 607
		f 4 893 897 -896 -893
		mu 0 4 609 612 613 610
		f 4 895 899 -897 -895
		mu 0 4 610 613 614 611
		f 4 900 -900 -898 898
		mu 0 4 615 614 613 612
		f 4 905 -903 -902 903
		mu 0 4 616 617 618 619
		f 4 -904 904 908 -907
		mu 0 4 616 619 620 621
		f 4 -906 906 910 -908
		mu 0 4 617 616 621 622
		f 4 909 913 -912 -909
		mu 0 4 620 623 624 621
		f 4 911 914 -913 -911
		mu 0 4 621 624 625 622
		f 4 916 920 -919 -916
		mu 0 4 626 627 628 629
		f 4 918 922 -920 -918
		mu 0 4 629 628 630 631
		f 4 -921 921 -927 -924
		mu 0 4 628 627 632 633
		f 4 -923 923 -926 -925
		mu 0 4 630 628 633 634
		f 4 -928 925 926 928
		mu 0 4 635 634 633 632
		f 4 930 932 -932 -930
		mu 0 4 636 637 638 639
		f 4 934 936 -936 -934
		mu 0 4 640 641 642 643
		f 4 938 940 -940 -938
		mu 0 4 644 645 646 647
		f 4 942 944 -944 -942
		mu 0 4 648 649 650 651
		f 4 946 948 -948 -946
		mu 0 4 652 653 654 655
		f 4 953 -951 -950 951
		mu 0 4 656 657 658 659
		f 4 952 956 -955 -952
		mu 0 4 659 660 661 656
		f 4 954 958 -956 -954
		mu 0 4 656 661 662 657
		f 4 957 961 -960 -957
		mu 0 4 660 663 664 661
		f 4 959 963 -961 -959
		mu 0 4 661 664 665 662
		f 4 964 -964 -962 962
		mu 0 4 666 665 664 663
		f 4 966 970 -969 -966
		mu 0 4 667 668 669 670
		f 4 968 972 -970 -968
		mu 0 4 670 669 671 672
		f 4 971 975 -974 -971
		mu 0 4 668 673 674 669
		f 4 973 977 -975 -973
		mu 0 4 669 674 675 671
		f 4 976 980 -979 -976
		mu 0 4 673 676 677 674
		f 4 978 982 -980 -978
		mu 0 4 674 677 678 675
		f 4 -984 -983 -981 981
		mu 0 4 679 678 677 676
		f 4 985 989 -988 -985
		mu 0 4 680 681 682 683
		f 4 987 991 -989 -987
		mu 0 4 683 682 684 685
		f 4 990 994 -993 -990
		mu 0 4 681 686 687 682
		f 4 992 996 -994 -992
		mu 0 4 682 687 688 684
		f 4 995 999 -998 -995
		mu 0 4 686 689 690 687
		f 4 997 1001 -999 -997
		mu 0 4 687 690 691 688
		f 4 -1003 -1002 -1000 1000
		mu 0 4 692 691 690 689
		f 4 1007 -1005 -1004 1005
		mu 0 4 693 694 695 696
		f 4 1006 1010 -1009 -1006
		mu 0 4 696 697 698 693
		f 4 1008 1012 -1010 -1008
		mu 0 4 693 698 699 694
		f 4 -1014 -1013 -1011 1011
		mu 0 4 700 699 698 697
		f 4 -1020 -1016 -1015 -1022
		mu 0 4 701 702 703 704
		f 4 -1028 -1024 1021 1020
		mu 0 4 705 706 701 704
		f 4 1023 -1026 -1023 1019
		mu 0 4 701 706 707 702
		f 4 -1025 1027 1026 1017
		mu 0 4 708 706 705 709
		f 4 1025 1024 1018 -1017
		mu 0 4 707 706 708 710
		f 4 1032 -1030 -1029 1030
		mu 0 4 711 712 713 714
		f 4 -1031 1031 -1039 -1034
		mu 0 4 711 714 715 716
		f 4 -1033 1033 -1037 -1035
		mu 0 4 712 711 716 717
		f 4 1035 1036 1038 1037
		mu 0 4 718 717 716 715
		f 4 1043 -1041 -1040 1041
		mu 0 4 719 720 721 722
		f 4 1042 1046 -1045 -1042
		mu 0 4 722 723 724 719
		f 4 1044 1048 -1046 -1044
		mu 0 4 719 724 725 720
		f 4 1047 1051 -1050 -1047
		mu 0 4 723 726 727 724
		f 4 1049 1053 -1051 -1049
		mu 0 4 724 727 728 725
		f 4 1054 -1054 -1052 1052
		mu 0 4 729 728 727 726
		f 4 1056 1060 -1059 -1056
		mu 0 4 730 731 732 733
		f 4 1058 1062 -1060 -1058
		mu 0 4 733 732 734 735
		f 4 1061 1065 -1064 -1061
		mu 0 4 731 736 737 732
		f 4 1063 1067 -1065 -1063
		mu 0 4 732 737 738 734
		f 4 1066 1070 -1069 -1066
		mu 0 4 736 739 740 737
		f 4 1068 1072 -1070 -1068
		mu 0 4 737 740 741 738
		f 4 -1074 -1073 -1071 1071
		mu 0 4 742 741 740 739
		f 4 1078 -1076 -1075 1076
		mu 0 4 743 744 745 746
		f 4 -1077 1077 -1085 -1080
		mu 0 4 743 746 747 748
		f 4 -1079 1079 -1083 -1081
		mu 0 4 744 743 748 749
		f 4 1081 1082 1084 1083
		mu 0 4 750 749 748 747
		f 4 -1097 -1087 -1086 -1099
		mu 0 4 751 752 753 754
		f 4 -1096 1098 1097 1088
		mu 0 4 755 751 754 756
		f 4 1096 1095 1090 -1088
		mu 0 4 752 751 755 757
		f 4 1089 1093 -1092 -1089
		mu 0 4 756 758 759 755
		f 4 1091 1094 -1093 -1091
		mu 0 4 755 759 760 757
		f 4 1100 1104 -1103 -1100
		mu 0 4 761 762 763 764
		f 4 1102 1106 -1104 -1102
		mu 0 4 764 763 765 766
		f 4 1105 1109 -1108 -1105
		mu 0 4 762 767 768 763
		f 4 1107 1111 -1109 -1107
		mu 0 4 763 768 769 765
		f 4 1110 1114 -1113 -1110
		mu 0 4 767 770 771 768
		f 4 1112 1116 -1114 -1112
		mu 0 4 768 771 772 769
		f 4 -1118 -1117 -1115 1115
		mu 0 4 773 772 771 770
		f 4 1121 1131 -1120 1118
		mu 0 4 774 775 776 777
		f 4 1122 1129 -1122 1120
		mu 0 4 778 779 775 774
		f 4 -1125 -1131 -1132 1128
		mu 0 4 780 781 776 775
		f 4 1123 -1127 -1129 -1130
		mu 0 4 779 782 780 775
		f 4 -1126 1124 1126 -1128
		mu 0 4 783 781 780 782
		f 4 1136 -1134 -1133 1134
		mu 0 4 784 785 786 787
		f 4 1135 1139 -1138 -1135
		mu 0 4 787 788 789 784
		f 4 1137 1141 -1139 -1137
		mu 0 4 784 789 790 785
		f 4 1140 1144 -1143 -1140
		mu 0 4 788 791 792 789
		f 4 1142 1146 -1144 -1142
		mu 0 4 789 792 793 790
		f 4 1147 -1147 -1145 1145
		mu 0 4 794 793 792 791;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "84708371-4765-0C6C-A02F-6987F696A07C";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "74848D50-4C83-363A-827B-AEAA44EFB79F";
createNode displayLayer -n "defaultLayer";
	rename -uid "A6AC51A4-4F04-90CC-2ABC-F58D4B0846E6";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7A93AFF2-4B6B-CF68-68D8-5BBCC0DF96C3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8D89BE4A-42F1-B04C-7956-DAA404D1453D";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "26DCA871-418E-A504-E9E4-14B8298E32F4";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "F6381D1E-43F6-6525-C6BA-01AD4158FE55";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "B678283D-409A-1A7B-9C5A-D381DE65C5FD";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "8EBE3587-40D4-542F-37FE-0DBD86E14AA0";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "43DDFF13-46CF-74F0-2F58-119DFC40D226";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 247\n                -height 395\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 247\n            -height 395\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 247\n                -height 395\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 247\n            -height 395\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 247\n                -height 395\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 247\n            -height 395\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1096\n                -height 851\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1096\n            -height 851\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1096\\n    -height 851\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1096\\n    -height 851\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2F235B61-4A13-9321-523D-8E9EFC62667F";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode blinn -n "blinn1";
	rename -uid "B1B7BD6C-4670-B516-9518-6DA8624C02EF";
	setAttr ".rfl" 0;
createNode shadingEngine -n "blinn1SG";
	rename -uid "F3CEFF41-4F9B-45DA-94BC-6288EC6F0D74";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "09195C8D-42A3-A3A0-5498-16AAF4FF777F";
createNode file -n "file1";
	rename -uid "1527E117-4F41-901C-F388-B796FAFBC2C2";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "6811BA4B-4B74-4085-CBCD-62B7E6807DA7";
createNode psdFileTex -n "psdFileTex1";
	rename -uid "28C491AF-49F5-4418-58A4-4084C39BFC31";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant.psd";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "81360678-42A8-EA3D-7D6E-C8A873B71D9B";
createNode file -n "file2";
	rename -uid "55FEA6A8-494E-0A81-E124-6FB4C5FA5E3D";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_di.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "16908AD0-45A2-28D7-8DB2-62A222541F0A";
createNode file -n "file3";
	rename -uid "82FDEFA8-4808-8950-64B3-F39DC3B1DAE4";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_di.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "880C19FD-45BA-878B-3C9D-BF95BCF34733";
createNode bump2d -n "bump2d1";
	rename -uid "684E8D8F-470E-075F-7DAD-A2B931F4F6E5";
	setAttr ".vc1" -type "float3" 0 9.9999997e-006 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file4";
	rename -uid "39E80E0F-4848-E8C8-06BA-7CB3A7CEC3C9";
	setAttr ".ail" yes;
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_di_NRM.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "DAACF014-4C86-52EE-807F-BCBC4DEDB351";
createNode bump2d -n "bump2d2";
	rename -uid "75559F85-4DB2-55F3-2205-57890B408393";
	setAttr ".bi" 1;
	setAttr ".vc1" -type "float3" 0 2.9999999e-005 0 ;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode file -n "file5";
	rename -uid "5AC9D831-463A-EA13-3FB9-E0A2657D4875";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_di_SPEC.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "79838548-4E2C-9ED8-694B-948C12EE52A4";
createNode file -n "file6";
	rename -uid "9D7593AD-44DA-6717-9410-A0A37C8D4B22";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_di_SPEC.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "602E3EF5-48FB-AD84-75B0-FA8EB3BB8276";
createNode file -n "file7";
	rename -uid "B89F1D98-41F4-4C51-6A5C-C088D3E09B4D";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_em.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "ED049688-44A2-BCD4-25F7-1B964CAD378B";
createNode file -n "file8";
	rename -uid "17906145-4D66-9F09-A932-9AA9F0F5CADA";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_di.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "7B3EC704-493C-E886-EAEF-9DA5F4C0206F";
createNode file -n "file9";
	rename -uid "7B8E4136-4126-6A3D-ACAF-B0B900EB08C8";
	setAttr ".ag" 0.10000000149011612;
	setAttr ".dc" -type "float3" 0 0 0 ;
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Desktop/lampPlant_em.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "8FF4CD83-4E9A-DEE4-1CCA-F9A61D29A214";
createNode textureBakeSet -n "textureBakeSet1";
	rename -uid "438F2C4B-46DE-9414-C76B-3F89707ED119";
	setAttr ".mor" 512;
	setAttr ".clm" 3;
	setAttr ".xres" 1024;
	setAttr ".yres" 1024;
	setAttr ".format" 3;
	setAttr ".fillseams" 5;
createNode partition -n "textureBakePartition";
	rename -uid "16EFE2A5-40D2-2874-8E67-EAB0EA8DC985";
	setAttr -s 2 ".st";
createNode textureBakeSet -n "initialTextureBakeSet";
	rename -uid "9AA6844C-435B-214C-43AF-0D90FC91CADC";
createNode vertexBakeSet -n "initialVertexBakeSet";
	rename -uid "F0BDA578-4737-6713-A313-39870F19CAD2";
	addAttr -ci true -sn "fs" -ln "filterSize" -min -1 -at "double";
	addAttr -ci true -sn "fns" -ln "filterNormalTolerance" -min 0 -max 180 -at "double";
	setAttr ".fs" 0.001;
	setAttr ".fns" 5;
createNode partition -n "vertexBakePartition";
	rename -uid "42BE5040-42E1-7A74-BB45-0F99638703FC";
createNode shadingEngine -n "baked_blinn1SG_polySurface4SG";
	rename -uid "9F3E9EC5-4696-8033-D766-E992C4CCB26B";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "0570D858-4AB6-A1B9-CFA1-A19A7DB34CEC";
createNode groupId -n "groupId1";
	rename -uid "CBFF6A6C-4BF1-4D78-7042-629921C7924B";
	setAttr ".ihi" 0;
createNode lambert -n "lambert2";
	rename -uid "735B31F1-40E5-A8F0-D020-72AA4A84FCE4";
	setAttr ".c" -type "float3" 0 0 0 ;
createNode file -n "baked_blinn1SG_polySurface4_fnbake1";
	rename -uid "F69C1BB6-4038-D06D-0447-30AE788326CB";
	setAttr ".ftn" -type "string" "C:/Users/jl4312/Documents/maya/projects/default//renderData/mentalray/lightMap/baked-blinn1SG-polySurface4.jpg";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "A574B66E-4ADA-3917-A79B-AD90A4FBF1C4";
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 12 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 11 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId1.id" "polySurface4Shape.iog.og[1].gid";
connectAttr "baked_blinn1SG_polySurface4SG.mwc" "polySurface4Shape.iog.og[1].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "baked_blinn1SG_polySurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "baked_blinn1SG_polySurface4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "file2.oc" "blinn1.c";
connectAttr "file7.oc" "blinn1.ic";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "file2.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "psdFileTex1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "psdFileTex1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "psdFileTex1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "psdFileTex1.ws";
connectAttr "place2dTexture2.c" "psdFileTex1.c";
connectAttr "place2dTexture2.tf" "psdFileTex1.tf";
connectAttr "place2dTexture2.rf" "psdFileTex1.rf";
connectAttr "place2dTexture2.mu" "psdFileTex1.mu";
connectAttr "place2dTexture2.mv" "psdFileTex1.mv";
connectAttr "place2dTexture2.s" "psdFileTex1.s";
connectAttr "place2dTexture2.wu" "psdFileTex1.wu";
connectAttr "place2dTexture2.wv" "psdFileTex1.wv";
connectAttr "place2dTexture2.re" "psdFileTex1.re";
connectAttr "place2dTexture2.of" "psdFileTex1.of";
connectAttr "place2dTexture2.r" "psdFileTex1.ro";
connectAttr "place2dTexture2.n" "psdFileTex1.n";
connectAttr "place2dTexture2.vt1" "psdFileTex1.vt1";
connectAttr "place2dTexture2.vt2" "psdFileTex1.vt2";
connectAttr "place2dTexture2.vt3" "psdFileTex1.vt3";
connectAttr "place2dTexture2.vc1" "psdFileTex1.vc1";
connectAttr "place2dTexture2.o" "psdFileTex1.uv";
connectAttr "place2dTexture2.ofs" "psdFileTex1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture3.c" "file2.c";
connectAttr "place2dTexture3.tf" "file2.tf";
connectAttr "place2dTexture3.rf" "file2.rf";
connectAttr "place2dTexture3.mu" "file2.mu";
connectAttr "place2dTexture3.mv" "file2.mv";
connectAttr "place2dTexture3.s" "file2.s";
connectAttr "place2dTexture3.wu" "file2.wu";
connectAttr "place2dTexture3.wv" "file2.wv";
connectAttr "place2dTexture3.re" "file2.re";
connectAttr "place2dTexture3.of" "file2.of";
connectAttr "place2dTexture3.r" "file2.ro";
connectAttr "place2dTexture3.n" "file2.n";
connectAttr "place2dTexture3.vt1" "file2.vt1";
connectAttr "place2dTexture3.vt2" "file2.vt2";
connectAttr "place2dTexture3.vt3" "file2.vt3";
connectAttr "place2dTexture3.vc1" "file2.vc1";
connectAttr "place2dTexture3.o" "file2.uv";
connectAttr "place2dTexture3.ofs" "file2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture4.c" "file3.c";
connectAttr "place2dTexture4.tf" "file3.tf";
connectAttr "place2dTexture4.rf" "file3.rf";
connectAttr "place2dTexture4.mu" "file3.mu";
connectAttr "place2dTexture4.mv" "file3.mv";
connectAttr "place2dTexture4.s" "file3.s";
connectAttr "place2dTexture4.wu" "file3.wu";
connectAttr "place2dTexture4.wv" "file3.wv";
connectAttr "place2dTexture4.re" "file3.re";
connectAttr "place2dTexture4.of" "file3.of";
connectAttr "place2dTexture4.r" "file3.ro";
connectAttr "place2dTexture4.n" "file3.n";
connectAttr "place2dTexture4.vt1" "file3.vt1";
connectAttr "place2dTexture4.vt2" "file3.vt2";
connectAttr "place2dTexture4.vt3" "file3.vt3";
connectAttr "place2dTexture4.vc1" "file3.vc1";
connectAttr "place2dTexture4.o" "file3.uv";
connectAttr "place2dTexture4.ofs" "file3.fs";
connectAttr "file3.oa" "bump2d1.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture5.c" "file4.c";
connectAttr "place2dTexture5.tf" "file4.tf";
connectAttr "place2dTexture5.rf" "file4.rf";
connectAttr "place2dTexture5.mu" "file4.mu";
connectAttr "place2dTexture5.mv" "file4.mv";
connectAttr "place2dTexture5.s" "file4.s";
connectAttr "place2dTexture5.wu" "file4.wu";
connectAttr "place2dTexture5.wv" "file4.wv";
connectAttr "place2dTexture5.re" "file4.re";
connectAttr "place2dTexture5.of" "file4.of";
connectAttr "place2dTexture5.r" "file4.ro";
connectAttr "place2dTexture5.n" "file4.n";
connectAttr "place2dTexture5.vt1" "file4.vt1";
connectAttr "place2dTexture5.vt2" "file4.vt2";
connectAttr "place2dTexture5.vt3" "file4.vt3";
connectAttr "place2dTexture5.vc1" "file4.vc1";
connectAttr "place2dTexture5.o" "file4.uv";
connectAttr "place2dTexture5.ofs" "file4.fs";
connectAttr "file4.oa" "bump2d2.bv";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture6.c" "file5.c";
connectAttr "place2dTexture6.tf" "file5.tf";
connectAttr "place2dTexture6.rf" "file5.rf";
connectAttr "place2dTexture6.mu" "file5.mu";
connectAttr "place2dTexture6.mv" "file5.mv";
connectAttr "place2dTexture6.s" "file5.s";
connectAttr "place2dTexture6.wu" "file5.wu";
connectAttr "place2dTexture6.wv" "file5.wv";
connectAttr "place2dTexture6.re" "file5.re";
connectAttr "place2dTexture6.of" "file5.of";
connectAttr "place2dTexture6.r" "file5.ro";
connectAttr "place2dTexture6.n" "file5.n";
connectAttr "place2dTexture6.vt1" "file5.vt1";
connectAttr "place2dTexture6.vt2" "file5.vt2";
connectAttr "place2dTexture6.vt3" "file5.vt3";
connectAttr "place2dTexture6.vc1" "file5.vc1";
connectAttr "place2dTexture6.o" "file5.uv";
connectAttr "place2dTexture6.ofs" "file5.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture7.c" "file6.c";
connectAttr "place2dTexture7.tf" "file6.tf";
connectAttr "place2dTexture7.rf" "file6.rf";
connectAttr "place2dTexture7.mu" "file6.mu";
connectAttr "place2dTexture7.mv" "file6.mv";
connectAttr "place2dTexture7.s" "file6.s";
connectAttr "place2dTexture7.wu" "file6.wu";
connectAttr "place2dTexture7.wv" "file6.wv";
connectAttr "place2dTexture7.re" "file6.re";
connectAttr "place2dTexture7.of" "file6.of";
connectAttr "place2dTexture7.r" "file6.ro";
connectAttr "place2dTexture7.n" "file6.n";
connectAttr "place2dTexture7.vt1" "file6.vt1";
connectAttr "place2dTexture7.vt2" "file6.vt2";
connectAttr "place2dTexture7.vt3" "file6.vt3";
connectAttr "place2dTexture7.vc1" "file6.vc1";
connectAttr "place2dTexture7.o" "file6.uv";
connectAttr "place2dTexture7.ofs" "file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture8.c" "file7.c";
connectAttr "place2dTexture8.tf" "file7.tf";
connectAttr "place2dTexture8.rf" "file7.rf";
connectAttr "place2dTexture8.mu" "file7.mu";
connectAttr "place2dTexture8.mv" "file7.mv";
connectAttr "place2dTexture8.s" "file7.s";
connectAttr "place2dTexture8.wu" "file7.wu";
connectAttr "place2dTexture8.wv" "file7.wv";
connectAttr "place2dTexture8.re" "file7.re";
connectAttr "place2dTexture8.of" "file7.of";
connectAttr "place2dTexture8.r" "file7.ro";
connectAttr "place2dTexture8.n" "file7.n";
connectAttr "place2dTexture8.vt1" "file7.vt1";
connectAttr "place2dTexture8.vt2" "file7.vt2";
connectAttr "place2dTexture8.vt3" "file7.vt3";
connectAttr "place2dTexture8.vc1" "file7.vc1";
connectAttr "place2dTexture8.o" "file7.uv";
connectAttr "place2dTexture8.ofs" "file7.fs";
connectAttr "file8.oc" "file7.cg";
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture9.c" "file8.c";
connectAttr "place2dTexture9.tf" "file8.tf";
connectAttr "place2dTexture9.rf" "file8.rf";
connectAttr "place2dTexture9.mu" "file8.mu";
connectAttr "place2dTexture9.mv" "file8.mv";
connectAttr "place2dTexture9.s" "file8.s";
connectAttr "place2dTexture9.wu" "file8.wu";
connectAttr "place2dTexture9.wv" "file8.wv";
connectAttr "place2dTexture9.re" "file8.re";
connectAttr "place2dTexture9.of" "file8.of";
connectAttr "place2dTexture9.r" "file8.ro";
connectAttr "place2dTexture9.n" "file8.n";
connectAttr "place2dTexture9.vt1" "file8.vt1";
connectAttr "place2dTexture9.vt2" "file8.vt2";
connectAttr "place2dTexture9.vt3" "file8.vt3";
connectAttr "place2dTexture9.vc1" "file8.vc1";
connectAttr "place2dTexture9.o" "file8.uv";
connectAttr "place2dTexture9.ofs" "file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture10.c" "file9.c";
connectAttr "place2dTexture10.tf" "file9.tf";
connectAttr "place2dTexture10.rf" "file9.rf";
connectAttr "place2dTexture10.mu" "file9.mu";
connectAttr "place2dTexture10.mv" "file9.mv";
connectAttr "place2dTexture10.s" "file9.s";
connectAttr "place2dTexture10.wu" "file9.wu";
connectAttr "place2dTexture10.wv" "file9.wv";
connectAttr "place2dTexture10.re" "file9.re";
connectAttr "place2dTexture10.of" "file9.of";
connectAttr "place2dTexture10.r" "file9.ro";
connectAttr "place2dTexture10.n" "file9.n";
connectAttr "place2dTexture10.vt1" "file9.vt1";
connectAttr "place2dTexture10.vt2" "file9.vt2";
connectAttr "place2dTexture10.vt3" "file9.vt3";
connectAttr "place2dTexture10.vc1" "file9.vc1";
connectAttr "place2dTexture10.o" "file9.uv";
connectAttr "place2dTexture10.ofs" "file9.fs";
connectAttr "polySurface4Shape.iog" "textureBakeSet1.dsm" -na;
connectAttr "textureBakeSet1.pa" "textureBakePartition.st" -na;
connectAttr "initialTextureBakeSet.pa" "textureBakePartition.st" -na;
connectAttr "initialVertexBakeSet.pa" "vertexBakePartition.st" -na;
connectAttr "lambert2.oc" "baked_blinn1SG_polySurface4SG.ss";
connectAttr "groupId1.msg" "baked_blinn1SG_polySurface4SG.gn" -na;
connectAttr "polySurface4Shape.iog.og[1]" "baked_blinn1SG_polySurface4SG.dsm" -na
		;
connectAttr "baked_blinn1SG_polySurface4SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "baked_blinn1SG_polySurface4_fnbake1.msg" "materialInfo2.t" -na;
connectAttr "baked_blinn1SG_polySurface4_fnbake1.oc" "materialInfo2.tc";
connectAttr "baked_blinn1SG_polySurface4_fnbake1.oc" "lambert2.ic";
connectAttr "place2dTexture11.o" "baked_blinn1SG_polySurface4_fnbake1.uv";
connectAttr "place2dTexture11.ofs" "baked_blinn1SG_polySurface4_fnbake1.fs";
connectAttr "place2dTexture11.c" "baked_blinn1SG_polySurface4_fnbake1.c";
connectAttr "place2dTexture11.tf" "baked_blinn1SG_polySurface4_fnbake1.tf";
connectAttr "place2dTexture11.rf" "baked_blinn1SG_polySurface4_fnbake1.rf";
connectAttr "place2dTexture11.mu" "baked_blinn1SG_polySurface4_fnbake1.mu";
connectAttr "place2dTexture11.mv" "baked_blinn1SG_polySurface4_fnbake1.mv";
connectAttr "place2dTexture11.s" "baked_blinn1SG_polySurface4_fnbake1.s";
connectAttr "place2dTexture11.wu" "baked_blinn1SG_polySurface4_fnbake1.wu";
connectAttr "place2dTexture11.wv" "baked_blinn1SG_polySurface4_fnbake1.wv";
connectAttr "place2dTexture11.re" "baked_blinn1SG_polySurface4_fnbake1.re";
connectAttr "place2dTexture11.vt1" "baked_blinn1SG_polySurface4_fnbake1.vt1";
connectAttr "place2dTexture11.vt2" "baked_blinn1SG_polySurface4_fnbake1.vt2";
connectAttr "place2dTexture11.vt3" "baked_blinn1SG_polySurface4_fnbake1.vt3";
connectAttr "place2dTexture11.vc1" "baked_blinn1SG_polySurface4_fnbake1.vc1";
connectAttr "place2dTexture11.n" "baked_blinn1SG_polySurface4_fnbake1.n";
connectAttr "place2dTexture11.of" "baked_blinn1SG_polySurface4_fnbake1.of";
connectAttr "place2dTexture11.r" "baked_blinn1SG_polySurface4_fnbake1.ro";
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "baked_blinn1SG_polySurface4SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "psdFileTex1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "baked_blinn1SG_polySurface4_fnbake1.msg" ":defaultTextureList1.tx" 
		-na;
// End of lampPlant.ma
