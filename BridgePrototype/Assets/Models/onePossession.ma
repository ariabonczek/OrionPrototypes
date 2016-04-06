//Maya ASCII 2016 scene
//Name: cube.ma
//Last modified: Sun, Apr 03, 2016 01:30:44 PM
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
	rename -uid "9BE2AB2C-411C-3371-CC14-A4929DFE90E5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.985942207225067 -0.45544825894712471 5.6529497044708821 ;
	setAttr ".r" -type "double3" 1.4616472521244139 2203.7999999994236 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0F1C3218-4A01-B120-9058-6895793B8CA2";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.2305031663725359;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.40771747380495071 0.88270241022109985 -0.42390859127044678 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F92DE594-434F-8473-5DB2-BD91C04F9FE9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.34762423364528428 100.1 -0.35676091428526158 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "07A948CE-4060-B3B7-FDA8-3E94BFC621E7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 25.2923352214377;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "48C6C408-4BAB-B983-B1F8-BFAE954C6008";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.025257049227666001 0.05051409845533178 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4F00D37A-46DC-C232-DEE0-06AFCDD0B631";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.8021573337340122;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "F0CAEDC6-42A7-0793-61BC-CA8467A0DEC7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DCDB6CCA-4B94-FB42-E434-73805EFF922D";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 18.760175538789827;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "gem:imagePlane1";
	rename -uid "1356579F-41F5-4861-3D76-87A8B7F6291F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.738279627448604 11.14681061476861 -83.753079003029939 ;
createNode imagePlane -n "gem:imagePlaneShape1" -p "gem:imagePlane1";
	rename -uid "942EE2F4-41BC-137F-A342-A3B8DF94A6E7";
	setAttr -k off ".v";
	setAttr ".fc" 204;
	setAttr ".imn" -type "string" "C:/Users/jl4312/Downloads/Exercise_26_GemSteps.jpg";
	setAttr ".cov" -type "short2" 3300 3804 ;
	setAttr ".dlc" no;
	setAttr ".w" 33;
	setAttr ".h" 38.040000000000006;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "gem:pCylinder2";
	rename -uid "8F6BBC98-45B3-4C67-8ADC-49BACEB6D873";
	setAttr ".t" -type "double3" 0 -0.29004392061682926 0 ;
	setAttr ".s" -type "double3" 0.34693851504069034 0.34693851504069034 0.34693851504069034 ;
createNode mesh -n "gem:pCylinderShape2" -p "gem:pCylinder2";
	rename -uid "AA8A8B44-4B44-761C-C479-F0AB6A932DFF";
	setAttr -k off ".v";
	setAttr ".mb" no;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".vis" no;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".op" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "group1";
	rename -uid "7604E17E-486B-7D24-B395-DBA73CDDD38F";
createNode transform -n "group2";
	rename -uid "BEC0C45E-4BBD-7051-741D-68A634DF4F58";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "group3";
	rename -uid "BD8D3FC1-46E5-7849-B0CE-25884153D5BE";
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
createNode transform -n "group4";
	rename -uid "D951F7CA-434B-BC0E-1CFF-959F469D024A";
	setAttr ".r" -type "double3" 0 -89.999999999999957 0 ;
createNode transform -n "group5";
	rename -uid "FFCCC150-4514-0F1B-6514-D6A729130046";
	setAttr ".t" -type "double3" 0 1.5397998189213509 0 ;
createNode transform -n "group7" -p "group5";
	rename -uid "097408E8-44AB-8437-BEE7-84906864A07C";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "pCube4" -p "group7";
	rename -uid "EFE5F984-410B-EF7A-A7FE-15BD2E209C0F";
	setAttr ".t" -type "double3" -0.63768451265733006 -0.68766869461372648 -0.63768451265733006 ;
	setAttr ".r" -type "double3" 89.999999999999986 45 0 ;
	setAttr ".s" -type "double3" 0.14141842430880189 0.21633609170180013 0.14141842430880189 ;
	setAttr ".rp" -type "double3" 0 -0.064407481320010368 0 ;
	setAttr ".rpt" -type "double3" -0.04554296680052522 0.06440748132001034 -0.045542966800525213 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.23331205689181272 0 ;
createNode mesh -n "polySurfaceShape3" -p "|group5|group7|pCube4";
	rename -uid "B15F97E6-4814-CD3C-1671-2CA04B222634";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1875 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.5 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625 0.75
		 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25 0.125
		 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.27777779 0.99980557 -0.27777779 0.27777779 0.99980557 -0.27777779
		 -0.33303654 -0.67735124 -0.33303654 0.33303654 -0.67735124 -0.33303654 -0.375 1.19300342 0
		 0.375 1.19300342 0 0 1.19300342 -0.375 -0.375 0.2487966 -0.375 0.375 0.2487966 -0.375
		 0 -0.67191482 -0.4495993 -0.4495993 -0.67191482 -1.2710465e-016 0.4495993 -0.67191482 -1.2710465e-016
		 0 1.69203281 0 0 0.28123286 -0.5 0.5 0.28123286 0 -0.5 0.28123286 0;
	setAttr -s 25 ".ed[0:24]"  0 6 1 6 1 1 2 9 0 9 3 0 4 0 1 5 1 1 0 7 1
		 7 2 1 1 8 1 8 3 1 2 10 0 3 11 0 12 4 0 5 12 0 6 12 1 6 13 1 13 7 1 8 13 1 9 13 1
		 11 14 0 8 14 1 5 14 0 10 15 0 15 7 1 4 15 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -14 5 -2 14
		mu 0 4 0 2 3 4
		f 4 -13 -15 -1 -5
		mu 0 4 1 0 4 5
		f 4 0 15 16 -7
		mu 0 4 5 4 6 7
		f 4 1 8 17 -16
		mu 0 4 4 3 8 6
		f 4 -18 9 -4 18
		mu 0 4 6 8 9 10
		f 4 -17 -19 -3 -8
		mu 0 4 7 6 10 11
		f 4 -12 -10 20 -20
		mu 0 4 12 14 15 13
		f 4 -21 -9 -6 21
		mu 0 4 13 15 16 17
		f 4 10 22 23 7
		mu 0 4 18 19 20 21
		f 4 -24 -25 4 6
		mu 0 4 21 20 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group7";
	rename -uid "1793A02C-4EAF-2CB8-AF6A-C48E085F8E56";
	setAttr ".t" -type "double3" -0.67682615050271855 -0.68766869461372648 -0.64665621096439618 ;
	setAttr ".r" -type "double3" 90 9.9283082683322714 -8.0722749912325601e-016 ;
	setAttr ".s" -type "double3" 0.081519737979519238 0.12470554383023454 0.081519737979519238 ;
	setAttr ".rp" -type "double3" 0 -0.037127276921591561 0 ;
	setAttr ".rpt" -type "double3" -0.0064013289551367271 0.037127276921591554 -0.03657126849345909 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.26059226129023155 0 ;
createNode mesh -n "polySurfaceShape2" -p "|group5|group7|pCube5";
	rename -uid "44F9BAFB-4953-E87A-1455-D882A4AF8890";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25
		 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -0.055258743 -0.39957345 
		0.055258743 0.055258743 -0.39957345 0.055258743 0 0.72202778 0 0 0.72202778 0 0 0.72202778 
		0 0 0.72202778 0 -0.055258743 -0.39957345 -0.055258743 0.055258743 -0.39957345 -0.055258743 
		0 0.2487966 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.2487966 
		0 0 0.2487966 0 0 -0.29691482 -0.074599296 -0.074599296 -0.29691482 -1.2710465e-016 
		0.074599296 -0.29691482 -1.2710465e-016 0 -0.29691482 0.074599296 0 0.2487966 0 0 
		0.28123286 0 0 1.1920328 0 0 0.28123286 0 0 0.28123286 0 0 0.28123286 0;
	setAttr -s 25 ".vt[0:24]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0.5 0 0 -0.5 0 0;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 17 23 1 23 8 1 14 23 1 11 23 1 16 24 1 24 13 1
		 19 24 1 10 24 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 -24 36 37 -11
		mu 0 4 4 21 22 5
		f 4 -23 -20 38 -37
		mu 0 4 21 23 24 22
		f 4 -39 -19 -16 39
		mu 0 4 22 24 25 26
		f 4 -38 -40 -15 -12
		mu 0 4 5 22 26 6
		f 4 20 40 41 17
		mu 0 4 27 28 29 30
		f 4 21 8 42 -41
		mu 0 4 28 0 3 29
		f 4 -43 9 12 43
		mu 0 4 29 3 8 31
		f 4 -42 -44 13 16
		mu 0 4 30 29 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group7";
	rename -uid "06E067B1-42CC-F5AC-394F-F996D35186D8";
	setAttr ".t" -type "double3" -0.64652461266840477 -0.68766869461372671 -0.67762977805027758 ;
	setAttr ".r" -type "double3" 90.000000000000426 81.328414055088885 2.1095325710497216e-014 ;
	setAttr ".s" -type "double3" 0.081519737979519225 0.12470554383023451 0.081519737979519225 ;
	setAttr ".rp" -type "double3" 0 -0.037127276921591498 0 ;
	setAttr ".rpt" -type "double3" -0.036702866789450422 0.037127276921591769 -0.0055977014075776921 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.26059226129023161 0 ;
createNode mesh -n "polySurfaceShape1" -p "|group5|group7|pCube6";
	rename -uid "A5A4B4D6-4872-FB16-4A0D-C6AD21E53C8F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25
		 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -0.055258743 -0.39957345 
		0.055258743 0.055258743 -0.39957345 0.055258743 0 0.72202778 0 0 0.72202778 0 0 0.72202778 
		0 0 0.72202778 0 -0.055258743 -0.39957345 -0.055258743 0.055258743 -0.39957345 -0.055258743 
		0 0.2487966 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.2487966 
		0 0 0.2487966 0 0 -0.29691482 -0.074599296 -0.074599296 -0.29691482 -1.2710465e-016 
		0.074599296 -0.29691482 -1.2710465e-016 0 -0.29691482 0.074599296 0 0.2487966 0 0 
		0.28123286 0 0 1.1920328 0 0 0.28123286 0 0 0.28123286 0 0 0.28123286 0;
	setAttr -s 25 ".vt[0:24]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0.5 0 0 -0.5 0 0;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 17 23 1 23 8 1 14 23 1 11 23 1 16 24 1 24 13 1
		 19 24 1 10 24 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 -24 36 37 -11
		mu 0 4 4 21 22 5
		f 4 -23 -20 38 -37
		mu 0 4 21 23 24 22
		f 4 -39 -19 -16 39
		mu 0 4 22 24 25 26
		f 4 -38 -40 -15 -12
		mu 0 4 5 22 26 6
		f 4 20 40 41 17
		mu 0 4 27 28 29 30
		f 4 21 8 42 -41
		mu 0 4 28 0 3 29
		f 4 -43 9 12 43
		mu 0 4 29 3 8 31
		f 4 -42 -44 13 16
		mu 0 4 30 29 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group8" -p "group5";
	rename -uid "4E2FA6C0-4315-73BB-FCE3-7ABAFBBFB281";
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
createNode transform -n "pCube4" -p "group8";
	rename -uid "DA217D7B-4EAA-CBEC-CBE8-86A089B492DE";
	setAttr ".t" -type "double3" -0.63768451265733006 -0.68766869461372648 -0.63768451265733006 ;
	setAttr ".r" -type "double3" 89.999999999999986 45 0 ;
	setAttr ".s" -type "double3" 0.14141842430880189 0.21633609170180013 0.14141842430880189 ;
	setAttr ".rp" -type "double3" 0 -0.064407481320010368 0 ;
	setAttr ".rpt" -type "double3" -0.04554296680052522 0.06440748132001034 -0.045542966800525213 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.23331205689181272 0 ;
createNode mesh -n "polySurfaceShape3" -p "|group5|group8|pCube4";
	rename -uid "0976F8D9-470C-A491-BBA3-F1958355FADE";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1875 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.5 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625 0.75
		 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25 0.125
		 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.27777779 0.99980557 -0.27777779 0.27777779 0.99980557 -0.27777779
		 -0.33303654 -0.67735124 -0.33303654 0.33303654 -0.67735124 -0.33303654 -0.375 1.19300342 0
		 0.375 1.19300342 0 0 1.19300342 -0.375 -0.375 0.2487966 -0.375 0.375 0.2487966 -0.375
		 0 -0.67191482 -0.4495993 -0.4495993 -0.67191482 -1.2710465e-016 0.4495993 -0.67191482 -1.2710465e-016
		 0 1.69203281 0 0 0.28123286 -0.5 0.5 0.28123286 0 -0.5 0.28123286 0;
	setAttr -s 25 ".ed[0:24]"  0 6 1 6 1 1 2 9 0 9 3 0 4 0 1 5 1 1 0 7 1
		 7 2 1 1 8 1 8 3 1 2 10 0 3 11 0 12 4 0 5 12 0 6 12 1 6 13 1 13 7 1 8 13 1 9 13 1
		 11 14 0 8 14 1 5 14 0 10 15 0 15 7 1 4 15 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -14 5 -2 14
		mu 0 4 0 2 3 4
		f 4 -13 -15 -1 -5
		mu 0 4 1 0 4 5
		f 4 0 15 16 -7
		mu 0 4 5 4 6 7
		f 4 1 8 17 -16
		mu 0 4 4 3 8 6
		f 4 -18 9 -4 18
		mu 0 4 6 8 9 10
		f 4 -17 -19 -3 -8
		mu 0 4 7 6 10 11
		f 4 -12 -10 20 -20
		mu 0 4 12 14 15 13
		f 4 -21 -9 -6 21
		mu 0 4 13 15 16 17
		f 4 10 22 23 7
		mu 0 4 18 19 20 21
		f 4 -24 -25 4 6
		mu 0 4 21 20 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "group8";
	rename -uid "EF87F9AA-4541-2E6E-0DE3-DFB0E4EB1041";
	setAttr ".t" -type "double3" -0.67682615050271855 -0.68766869461372648 -0.64665621096439618 ;
	setAttr ".r" -type "double3" 90 9.9283082683322714 -8.0722749912325601e-016 ;
	setAttr ".s" -type "double3" 0.081519737979519238 0.12470554383023454 0.081519737979519238 ;
	setAttr ".rp" -type "double3" 0 -0.037127276921591561 0 ;
	setAttr ".rpt" -type "double3" -0.0064013289551367271 0.037127276921591554 -0.03657126849345909 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.26059226129023155 0 ;
createNode mesh -n "polySurfaceShape2" -p "|group5|group8|pCube5";
	rename -uid "F91E2BBF-4AD2-823F-10A4-889F90AC3646";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25
		 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -0.055258743 -0.39957345 
		0.055258743 0.055258743 -0.39957345 0.055258743 0 0.72202778 0 0 0.72202778 0 0 0.72202778 
		0 0 0.72202778 0 -0.055258743 -0.39957345 -0.055258743 0.055258743 -0.39957345 -0.055258743 
		0 0.2487966 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.2487966 
		0 0 0.2487966 0 0 -0.29691482 -0.074599296 -0.074599296 -0.29691482 -1.2710465e-016 
		0.074599296 -0.29691482 -1.2710465e-016 0 -0.29691482 0.074599296 0 0.2487966 0 0 
		0.28123286 0 0 1.1920328 0 0 0.28123286 0 0 0.28123286 0 0 0.28123286 0;
	setAttr -s 25 ".vt[0:24]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0.5 0 0 -0.5 0 0;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 17 23 1 23 8 1 14 23 1 11 23 1 16 24 1 24 13 1
		 19 24 1 10 24 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 -24 36 37 -11
		mu 0 4 4 21 22 5
		f 4 -23 -20 38 -37
		mu 0 4 21 23 24 22
		f 4 -39 -19 -16 39
		mu 0 4 22 24 25 26
		f 4 -38 -40 -15 -12
		mu 0 4 5 22 26 6
		f 4 20 40 41 17
		mu 0 4 27 28 29 30
		f 4 21 8 42 -41
		mu 0 4 28 0 3 29
		f 4 -43 9 12 43
		mu 0 4 29 3 8 31
		f 4 -42 -44 13 16
		mu 0 4 30 29 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "group8";
	rename -uid "7B84C1D9-41F9-6595-8B6F-7F8C598E081F";
	setAttr ".t" -type "double3" -0.64652461266840477 -0.68766869461372671 -0.67762977805027758 ;
	setAttr ".r" -type "double3" 90.000000000000426 81.328414055088885 2.1095325710497216e-014 ;
	setAttr ".s" -type "double3" 0.081519737979519225 0.12470554383023451 0.081519737979519225 ;
	setAttr ".rp" -type "double3" 0 -0.037127276921591498 0 ;
	setAttr ".rpt" -type "double3" -0.036702866789450422 0.037127276921591769 -0.0055977014075776921 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.26059226129023161 0 ;
createNode mesh -n "polySurfaceShape1" -p "|group5|group8|pCube6";
	rename -uid "6CD8A313-486D-A476-6BF0-A89F99CFF34F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25
		 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -0.055258743 -0.39957345 
		0.055258743 0.055258743 -0.39957345 0.055258743 0 0.72202778 0 0 0.72202778 0 0 0.72202778 
		0 0 0.72202778 0 -0.055258743 -0.39957345 -0.055258743 0.055258743 -0.39957345 -0.055258743 
		0 0.2487966 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.2487966 
		0 0 0.2487966 0 0 -0.29691482 -0.074599296 -0.074599296 -0.29691482 -1.2710465e-016 
		0.074599296 -0.29691482 -1.2710465e-016 0 -0.29691482 0.074599296 0 0.2487966 0 0 
		0.28123286 0 0 1.1920328 0 0 0.28123286 0 0 0.28123286 0 0 0.28123286 0;
	setAttr -s 25 ".vt[0:24]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0.5 0 0 -0.5 0 0;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 17 23 1 23 8 1 14 23 1 11 23 1 16 24 1 24 13 1
		 19 24 1 10 24 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 -24 36 37 -11
		mu 0 4 4 21 22 5
		f 4 -23 -20 38 -37
		mu 0 4 21 23 24 22
		f 4 -39 -19 -16 39
		mu 0 4 22 24 25 26
		f 4 -38 -40 -15 -12
		mu 0 4 5 22 26 6
		f 4 20 40 41 17
		mu 0 4 27 28 29 30
		f 4 21 8 42 -41
		mu 0 4 28 0 3 29
		f 4 -43 9 12 43
		mu 0 4 29 3 8 31
		f 4 -42 -44 13 16
		mu 0 4 30 29 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group9" -p "group5";
	rename -uid "18A7C60E-4C4E-8DFC-3364-33AC7D210DCE";
	setAttr ".r" -type "double3" 0 -89.999999999999957 0 ;
createNode transform -n "pCube4" -p "|group5|group9";
	rename -uid "175157F0-4597-03EB-5CCD-E49371343C82";
	setAttr ".t" -type "double3" -0.63768451265733006 -0.68766869461372648 -0.63768451265733006 ;
	setAttr ".r" -type "double3" 89.999999999999986 45 0 ;
	setAttr ".s" -type "double3" 0.14141842430880189 0.21633609170180013 0.14141842430880189 ;
	setAttr ".rp" -type "double3" 0 -0.064407481320010368 0 ;
	setAttr ".rpt" -type "double3" -0.04554296680052522 0.06440748132001034 -0.045542966800525213 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.23331205689181272 0 ;
createNode mesh -n "polySurfaceShape3" -p "|group5|group9|pCube4";
	rename -uid "51D578FA-464D-3801-86C7-65871741E916";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.1875 0.0625 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.5 0.375 0.375 0.375
		 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625 0.75
		 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25 0.125
		 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.27777779 0.99980557 -0.27777779 0.27777779 0.99980557 -0.27777779
		 -0.33303654 -0.67735124 -0.33303654 0.33303654 -0.67735124 -0.33303654 -0.375 1.19300342 0
		 0.375 1.19300342 0 0 1.19300342 -0.375 -0.375 0.2487966 -0.375 0.375 0.2487966 -0.375
		 0 -0.67191482 -0.4495993 -0.4495993 -0.67191482 -1.2710465e-016 0.4495993 -0.67191482 -1.2710465e-016
		 0 1.69203281 0 0 0.28123286 -0.5 0.5 0.28123286 0 -0.5 0.28123286 0;
	setAttr -s 25 ".ed[0:24]"  0 6 1 6 1 1 2 9 0 9 3 0 4 0 1 5 1 1 0 7 1
		 7 2 1 1 8 1 8 3 1 2 10 0 3 11 0 12 4 0 5 12 0 6 12 1 6 13 1 13 7 1 8 13 1 9 13 1
		 11 14 0 8 14 1 5 14 0 10 15 0 15 7 1 4 15 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 -14 5 -2 14
		mu 0 4 0 2 3 4
		f 4 -13 -15 -1 -5
		mu 0 4 1 0 4 5
		f 4 0 15 16 -7
		mu 0 4 5 4 6 7
		f 4 1 8 17 -16
		mu 0 4 4 3 8 6
		f 4 -18 9 -4 18
		mu 0 4 6 8 9 10
		f 4 -17 -19 -3 -8
		mu 0 4 7 6 10 11
		f 4 -12 -10 20 -20
		mu 0 4 12 14 15 13
		f 4 -21 -9 -6 21
		mu 0 4 13 15 16 17
		f 4 10 22 23 7
		mu 0 4 18 19 20 21
		f 4 -24 -25 4 6
		mu 0 4 21 20 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5" -p "|group5|group9";
	rename -uid "EB6D5485-4098-6F14-A668-D6ABD347EB53";
	setAttr ".t" -type "double3" -0.67682615050271855 -0.68766869461372648 -0.64665621096439618 ;
	setAttr ".r" -type "double3" 90 9.9283082683322714 -8.0722749912325601e-016 ;
	setAttr ".s" -type "double3" 0.081519737979519238 0.12470554383023454 0.081519737979519238 ;
	setAttr ".rp" -type "double3" 0 -0.037127276921591561 0 ;
	setAttr ".rpt" -type "double3" -0.0064013289551367271 0.037127276921591554 -0.03657126849345909 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.26059226129023155 0 ;
createNode mesh -n "polySurfaceShape2" -p "|group5|group9|pCube5";
	rename -uid "8D9D6226-493A-B0AE-ABE5-A38222C537F6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25
		 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -0.055258743 -0.39957345 
		0.055258743 0.055258743 -0.39957345 0.055258743 0 0.72202778 0 0 0.72202778 0 0 0.72202778 
		0 0 0.72202778 0 -0.055258743 -0.39957345 -0.055258743 0.055258743 -0.39957345 -0.055258743 
		0 0.2487966 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.2487966 
		0 0 0.2487966 0 0 -0.29691482 -0.074599296 -0.074599296 -0.29691482 -1.2710465e-016 
		0.074599296 -0.29691482 -1.2710465e-016 0 -0.29691482 0.074599296 0 0.2487966 0 0 
		0.28123286 0 0 1.1920328 0 0 0.28123286 0 0 0.28123286 0 0 0.28123286 0;
	setAttr -s 25 ".vt[0:24]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0.5 0 0 -0.5 0 0;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 17 23 1 23 8 1 14 23 1 11 23 1 16 24 1 24 13 1
		 19 24 1 10 24 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 -24 36 37 -11
		mu 0 4 4 21 22 5
		f 4 -23 -20 38 -37
		mu 0 4 21 23 24 22
		f 4 -39 -19 -16 39
		mu 0 4 22 24 25 26
		f 4 -38 -40 -15 -12
		mu 0 4 5 22 26 6
		f 4 20 40 41 17
		mu 0 4 27 28 29 30
		f 4 21 8 42 -41
		mu 0 4 28 0 3 29
		f 4 -43 9 12 43
		mu 0 4 29 3 8 31
		f 4 -42 -44 13 16
		mu 0 4 30 29 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube6" -p "|group5|group9";
	rename -uid "B5EACA17-440F-E051-AA3C-6A9F35758E99";
	setAttr ".t" -type "double3" -0.64652461266840477 -0.68766869461372671 -0.67762977805027758 ;
	setAttr ".r" -type "double3" 90.000000000000426 81.328414055088885 2.1095325710497216e-014 ;
	setAttr ".s" -type "double3" 0.081519737979519225 0.12470554383023451 0.081519737979519225 ;
	setAttr ".rp" -type "double3" 0 -0.037127276921591498 0 ;
	setAttr ".rpt" -type "double3" -0.036702866789450422 0.037127276921591769 -0.0055977014075776921 ;
	setAttr ".sp" -type "double3" 0 -0.29771953821182334 0 ;
	setAttr ".spt" -type "double3" 0 0.26059226129023161 0 ;
createNode mesh -n "polySurfaceShape1" -p "|group5|group9|pCube6";
	rename -uid "94C82FA5-48D2-6953-D256-31B89525273F";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 33 ".uvst[0].uvsp[0:32]" -type "float2" 0.375 0 0.5 0 0.5
		 0.125 0.375 0.125 0.625 0 0.625 0.125 0.625 0.25 0.5 0.25 0.375 0.25 0.5 0.375 0.375
		 0.375 0.625 0.375 0.625 0.5 0.5 0.5 0.375 0.5 0.5 0.625 0.375 0.625 0.625 0.625 0.625
		 0.75 0.5 0.75 0.375 0.75 0.75 0 0.75 0.125 0.875 0 0.875 0.125 0.875 0.25 0.75 0.25
		 0.125 0 0.25 0 0.25 0.125 0.125 0.125 0.25 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt[0:24]" -type "float3"  -0.055258743 -0.39957345 
		0.055258743 0.055258743 -0.39957345 0.055258743 0 0.72202778 0 0 0.72202778 0 0 0.72202778 
		0 0 0.72202778 0 -0.055258743 -0.39957345 -0.055258743 0.055258743 -0.39957345 -0.055258743 
		0 0.2487966 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.81800342 0 0 0.2487966 
		0 0 0.2487966 0 0 -0.29691482 -0.074599296 -0.074599296 -0.29691482 -1.2710465e-016 
		0.074599296 -0.29691482 -1.2710465e-016 0 -0.29691482 0.074599296 0 0.2487966 0 0 
		0.28123286 0 0 1.1920328 0 0 0.28123286 0 0 0.28123286 0 0 0.28123286 0;
	setAttr -s 25 ".vt[0:24]"  -0.27777779 -0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779
		 -0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 0.27777779 -0.27777779 0.27777779 -0.27777779
		 0.27777779 0.27777779 -0.27777779 -0.27777779 -0.27777779 -0.27777779 0.27777779 -0.27777779 -0.27777779
		 0.375 0 0.375 0 0.375 0.375 -0.375 0.375 0 0.375 0.375 0 0 0.375 -0.375 -0.375 0 -0.375
		 0.375 0 -0.375 0 -0.375 -0.375 -0.375 -0.375 0 0.375 -0.375 0 0 -0.375 0.375 -0.375 0 0.375
		 0 0 0.5 0 0.5 0 0 0 -0.5 0.5 0 0 -0.5 0 0;
	setAttr -s 44 ".ed[0:43]"  0 18 1 18 1 1 2 9 1 9 3 1 4 12 1 12 5 1 6 15 1
		 15 7 1 0 19 1 19 2 1 1 8 1 8 3 1 2 10 1 10 4 1 3 11 1 11 5 1 4 13 1 13 6 1 5 14 1
		 14 7 1 6 16 1 16 0 1 7 17 1 17 1 1 18 20 1 20 19 1 8 20 1 9 20 1 9 21 1 21 10 1 11 21 1
		 12 21 1 12 22 1 22 13 1 14 22 1 15 22 1 17 23 1 23 8 1 14 23 1 11 23 1 16 24 1 24 13 1
		 19 24 1 10 24 1;
	setAttr -s 20 -ch 80 ".fc[0:19]" -type "polyFaces" 
		f 4 0 24 25 -9
		mu 0 4 0 1 2 3
		f 4 1 10 26 -25
		mu 0 4 1 4 5 2
		f 4 -27 11 -4 27
		mu 0 4 2 5 6 7
		f 4 -26 -28 -3 -10
		mu 0 4 3 2 7 8
		f 4 2 28 29 -13
		mu 0 4 8 7 9 10
		f 4 3 14 30 -29
		mu 0 4 7 6 11 9
		f 4 -31 15 -6 31
		mu 0 4 9 11 12 13
		f 4 -30 -32 -5 -14
		mu 0 4 10 9 13 14
		f 4 4 32 33 -17
		mu 0 4 14 13 15 16
		f 4 5 18 34 -33
		mu 0 4 13 12 17 15
		f 4 -35 19 -8 35
		mu 0 4 15 17 18 19
		f 4 -34 -36 -7 -18
		mu 0 4 16 15 19 20
		f 4 -24 36 37 -11
		mu 0 4 4 21 22 5
		f 4 -23 -20 38 -37
		mu 0 4 21 23 24 22
		f 4 -39 -19 -16 39
		mu 0 4 22 24 25 26
		f 4 -38 -40 -15 -12
		mu 0 4 5 22 26 6
		f 4 20 40 41 17
		mu 0 4 27 28 29 30
		f 4 21 8 42 -41
		mu 0 4 28 0 3 29
		f 4 -43 9 12 43
		mu 0 4 29 3 8 31
		f 4 -42 -44 13 16
		mu 0 4 30 29 31 32;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group9";
	rename -uid "9F465029-4CB2-14E3-DD87-C3B6A3DF503A";
createNode transform -n "polySurface4" -p "|group9";
	rename -uid "831E009B-4ED7-F1A9-10CB-9CA980B02BFA";
createNode transform -n "polySurface9";
	rename -uid "3778BD8B-4AF9-8011-C38D-DFAD71AE0811";
createNode transform -n "group10" -p "polySurface9";
	rename -uid "7DC95747-4D09-ABBD-FA00-3A9F5FE317B0";
createNode transform -n "group11" -p "polySurface9";
	rename -uid "0EFCB0CE-40C6-8A8F-FB4F-4F9605155CE6";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "group12" -p "polySurface9";
	rename -uid "19F22583-4963-6A57-F30D-F6877371CDD3";
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
createNode transform -n "group13" -p "polySurface9";
	rename -uid "58BB665B-45F3-CB24-D7F5-BFA921182279";
	setAttr ".r" -type "double3" 0 -89.999999999999957 0 ;
createNode transform -n "group14" -p "polySurface9";
	rename -uid "88315CFE-4D60-F913-D7CA-29850BF1E73C";
createNode transform -n "group17" -p "group14";
	rename -uid "0922EB0A-4DB8-D06D-77D7-09A4B4E1E338";
createNode transform -n "group18" -p "group14";
	rename -uid "02673164-41A7-5873-43A6-329BE55FEFEA";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode transform -n "group19" -p "group14";
	rename -uid "F827EDDD-443E-BC46-E593-BE9F94FFD30F";
	setAttr ".r" -type "double3" 0 179.99999999999997 0 ;
createNode transform -n "group15" -p "polySurface9";
	rename -uid "FF810A67-45F7-DF46-445C-08A9275069CC";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.96411976470335903 1 0.86816731972066175 ;
createNode transform -n "group21";
	rename -uid "26D03153-4965-46A8-28E1-5AA9DF7DC184";
	setAttr ".r" -type "double3" 0 0 90 ;
createNode transform -n "polySurface10";
	rename -uid "608B2097-4C15-CAF1-FFEF-F2B4CF63DA2A";
createNode mesh -n "polySurface10Shape" -p "polySurface10";
	rename -uid "70B10DE1-4858-9440-113B-71ABB7AB4EA0";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:64]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 1 "f[65:154]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.53764302768244043 0.15506930716402895 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 241 ".uvst[0].uvsp[0:240]" -type "float2" 0.55417764 0.80988902
		 0.56901717 0.77400202 0.58161855 0.78241497 0.59004664 0.79500628 0.59300828 0.80986559
		 0.59006453 0.82472843 0.58165169 0.83732975 0.56906044 0.84575796 0.55420113 0.84871948
		 0.53933823 0.84577584 0.52673686 0.83736283 0.51830876 0.82477158 0.51534724 0.8099122
		 0.51829088 0.79504943 0.52670383 0.78244811 0.53929508 0.7740199 0.5541544 0.77105838
		 0.54854786 0.61220723 0.49834305 0.57522255 0.52594054 0.55608684 0.53434169 0.62613916
		 0.47867271 0.60244197 0.47268936 0.63548732 0.53414774 0.64603579 0.47802734 0.66864318
		 0.49716294 0.69624072 0.54807961 0.66024202 0.52438241 0.71591097 0.55742776 0.72189438
		 0.5679763 0.66043603 0.59058356 0.71655631 0.61818117 0.6974206 0.58218247 0.64650404
		 0.64383471 0.63715589 0.63785148 0.6702013 0.58237648 0.62660748 0.63849688 0.60400009
		 0.61936104 0.57640249 0.56844455 0.61240131 0.59214169 0.5567323 0.55909634 0.55074894
		 0.52394462 0.88300252 0.49816671 0.86596733 0.53345609 0.86000073 0.57495964 0.85997576
		 0.55422544 0.88914824 0.60428953 0.83061057 0.61025631 0.86589992 0.60426462 0.78910702
		 0.63343692 0.80984122 0.57489944 0.75977707 0.61018872 0.75381035 0.53339577 0.7598021
		 0.55413008 0.73062968 0.50406599 0.78916717 0.49809936 0.75387794 0.50409091 0.83067083
		 0.47491851 0.80993658 0.55826205 0.63632166 0.48110059 0.84020996 0.48106417 0.77965581
		 0.52385676 0.73681176 0.58441079 0.73677528 0.62725484 0.7795679 0.62729132 0.84012198
		 0.58449876 0.8829661 0.24314821 0.75397283 0.34910715 0.7540493 0.34905577 0.76702988
		 0.24304461 0.76688677 0.023906946 0.53116119 0.2353723 0.52901143 0.2408306 0.54152715
		 0.023694336 0.54414225 0.29134959 0.69779444 0.29066551 0.59744841 0.34933758 0.6979683
		 0.17940292 0.47911572 0.079084575 0.47970924 0.34866095 0.87341458 0.2424438 0.87302399
		 0.92533857 0.14941268 0.92537349 0.092193499 0.98441243 0.092231266 0.98437583 0.15041785
		 0.98261678 0.25165391 0.92357916 0.25060737 0.020097921 0.55147815 0.07919088 0.54997879
		 0.081796251 0.65114748 0.022706138 0.65269023 0.011250257 0.53209805 0.24571836 0.52907127
		 0.0096755624 0.4233627 0.022666931 0.42338446 0.078981936 0.42352763 0.019781219
		 0.97883797 0.021272561 0.92261744 0.080353007 0.92417884 0.078836098 0.98144192 0.17258805
		 0.22943495 0.17250425 0.16884974 0.23079383 0.17099564 0.23311281 0.22935295 0.29414785
		 0.48003083 0.40535831 0.48007956 0.45360768 0.52914256 0.45849538 0.5418548 0.40644407
		 0.59758008 0.97871202 0.36601952 0.91966993 0.36511153 0.85789704 0.24836582 0.85398841
		 0.36286929 0.67549944 0.53149307 0.67673218 0.42374447 0.68966687 0.42373541 0.68820846
		 0.53238624 0.67572939 0.54431385 0.46396959 0.52915579 0.62026417 0.48197168 0.52003229
		 0.48121202 0.62044477 0.42383769 0.45506024 0.75476813 0.40525067 0.69818735 0.45487905
		 0.87381619 0.455073 0.76767844 0.84166002 0.3351652 0.84170651 0.39245537 0.78273118
		 0.39250195 0.78268468 0.33431071 0.78418899 0.23306246 0.84316421 0.23396033 0.97711658
		 0.46726057 0.91807503 0.46630672 0.98445004 0.03598588 0.92541176 0.034840219 0.11194235
		 0.22951718 0.11408442 0.17116506 0.40544617 0.36728662 0.45379251 0.31828558 0.46416062
		 0.31828758 0.52020884 0.36626983 0.78773963 0.11673312 0.8466599 0.11943515 0.90885842
		 0.23596495 0.91235375 0.12144016 0.2419703 0.99223042 0.24201858 0.97928405 0.34826571
		 0.97967726 0.34821755 0.99262369 0.024271041 0.31562611 0.024081737 0.30264428 0.24090028
		 0.30566454 0.23542482 0.31817514 0.24577343 0.31812334 0.29173058 0.14945981 0.29083765
		 0.24981336 0.24379086 0.093011409 0.34963179 0.14942259 0.34941882 0.093539558 0.29419017
		 0.36720791 0.1793558 0.36800471 0.079330117 0.36718741 0.1610018 0.56352013 0.22004569
		 0.56416249 0.21845508 0.62232918 0.15943742 0.62071896 0.21717107 0.89422524 0.21646988
		 0.99547863 0.15742362 0.99504638 0.15812469 0.89383769 0.14750929 0.65058869 0.14848332
		 0.76514822 0.082769655 0.76570839 0.022753557 0.86639982 0.023660725 0.76516396 0.081864901
		 0.86691231 0.011616498 0.31464821 0.23095202 0.28771639 0.17266846 0.29002029 0.67534721
		 0.31599563 0.68805611 0.31508684 0.67558169 0.30317438 0.45869458 0.30558169 0.62012982
		 0.36552885 0.40663701 0.24981759 0.40542245 0.14913756 0.455046 0.092334613 0.45451272
		 0.98007524 0.8417505 0.44974485 0.78277624 0.45069408 0.79241776 0.015580405 0.85133553
		 0.018328536 0.092406392 0.89448619 0.09127605 0.77991778 0.15699494 0.77926832 0.21692479
		 0.67855185 0.21604311 0.77979875 0.15787446 0.67805612 0.45446473 0.99302167 0.11424255
		 0.28786328 0.74435472 0.48338491 0.86360776 0.48338491 0.86360776 0.60263801 0.74435472
		 0.60263801 0.87108314 0.73020685 0.87108314 0.61095369 0.9903363 0.61095369 0.9903363
		 0.73020685 0.74435472 0.60790396 0.86360776 0.60790396 0.86360776 0.72715706 0.74435472
		 0.72715706 0.87108314 0.73726153 0.9903363 0.73726153 0.9903363 0.85651457 0.87108314
		 0.85651457 0.47901738 0.032459095 0.59827042 0.032459095 0.59827042 0.15171219 0.47901738
		 0.15171219 0.74435472 0.73463446 0.86360776 0.73463446 0.86360776 0.85388756 0.74435472
		 0.85388756 0.8690815 0.86422449 0.98833454 0.86422449 0.98833454 0.98347753 0.8690815
		 0.98347753 0.47701561 0.15842642 0.59626877 0.15842642 0.59626877 0.27767953 0.47701561
		 0.27767953 0.86906278 0.48378286 0.98831582 0.48378286 0.98831582 0.60303599 0.86906278
		 0.60303599 0.74435472 0.8614772 0.86360776 0.8614772 0.86360776 0.9807303 0.74435472
		 0.9807303;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 160 ".vt[0:159]"  3.2367787e-008 -0.44836506 -3.1164409e-009
		 0.1890834 -0.2608211 -0.078320839 0.07832095 -0.2608211 -0.18908343 -0.078320839 -0.2608211 -0.1890834
		 -0.1890834 -0.2608211 -0.07832095 -0.1890834 -0.2608211 0.078320839 -0.07832095 -0.2608211 0.1890834
		 0.07832095 -0.2608211 0.1890834 0.18908343 -0.2608211 0.07832095 0.3405821 0.42003915 -0.14107312
		 0.26067033 0.42003915 -0.26066893 0 0.42003915 -5.7430452e-009 0.14107347 0.42003915 -0.34058163
		 1.8676873e-007 0.42003915 -0.36864224 -0.14107312 0.42003915 -0.34058172 -0.26066896 0.42003915 -0.2606703
		 -0.34058169 0.42003915 -0.14107345 -0.36864224 0.42003915 -1.3758006e-007 -0.34058172 0.42003915 0.14107312
		 -0.26066899 0.42003915 0.26066896 -0.14107341 0.42003915 0.34058169 -5.4932073e-008 0.42003915 0.36864224
		 0.14107335 0.42003915 0.34058172 0.26066896 0.42003915 0.26066896 0.34058172 0.42003915 0.14107339
		 0.36864224 0.42003915 -5.7430452e-009 -0.45511824 0.16399184 0.45511803 -0.59464204 0.16399184 0.24630813
		 -0.64363509 0.16399184 -2.4020943e-007 -0.59464192 0.16399184 -0.24630868 -0.45511803 0.16399184 -0.45511988
		 -0.2463081 0.16399184 -0.59464204 3.2609077e-007 0.16399184 -0.64363509 0.24630868 0.16399184 -0.59464186
		 0.45511994 0.16399184 -0.45511803 0.59464258 0.16399184 -0.24630807 0.64363509 0.16399184 -1.0027128e-008
		 0.59464198 0.16399184 0.24630858 0.45511809 0.16399184 0.45511824 0.24630852 0.16399184 0.59464204
		 -9.5909186e-008 0.16399184 0.64363509 -0.24630861 0.16399184 0.59464192 -0.43945742 0.3261185 0.1820287
		 -0.4394573 0.3261185 -0.1820291 -0.1820287 0.3261185 -0.43945742 0.18202914 0.3261185 -0.43945727
		 0.43945786 0.3261185 -0.18202867 0.43945739 0.3261185 0.18202902 0.18202898 0.3261185 0.43945742
		 -0.18202904 0.3261185 0.4394573 -0.49188009 -0.43502411 -0.49246195 -0.49188009 0.4350239 -0.49246195
		 -0.92068219 -0.99999976 -0.92068237 -0.92068255 -0.92068219 -1 -0.99999982 -0.92068219 -0.92068237
		 -0.92068255 0.92068255 -1 -0.92068219 0.99999982 -0.92068237 -1.000000238419 0.92068219 -0.92068237
		 -0.50022942 -0.43522632 -1 -0.50022942 0.43522632 -1 -0.49188009 1 -0.49246195 -1 -0.43522629 -0.48353076
		 -1 0.43522632 -0.48353076 -0.49188009 -0.43502411 0 -0.92068243 -1 0 -0.99999994 -0.92068237 0
		 -1 -0.43522629 0 -8.1450999e-017 -0.43507469 -0.49246192 0 -0.13286293 0 0 -0.99999791 0
		 4.4703484e-008 -1 -0.92068243 -4.4703484e-008 -0.92068237 -1 1.0803342e-007 -0.43522629 -1
		 0.49304384 -0.43502411 -0.49246192 0.49304384 0.4350239 -0.49246192 0.92068237 -0.99999976 -0.92068219
		 1 -0.92068219 -0.92068255 0.92068237 -0.92068219 -0.99999982 1 0.92068255 -0.92068255
		 0.92068237 0.99999982 -0.92068219 0.92068237 0.92068219 -1.000000238419 1 -0.43522632 -0.50022942
		 1 0.43522632 -0.50022942 0.49304381 1 -0.49246192 0.48353076 -0.43522629 -1 0.48353076 0.43522632 -1
		 0.49304381 -0.43512523 0 0.92068243 -1 0 1 -0.92068237 0 1 -0.43522629 0 -0.49188009 -0.43502411 0.49246195
		 -0.49188009 0.4350239 0.49246195 -0.92068219 -0.99999976 0.92068237 -0.92068255 -0.92068219 1
		 -0.99999982 -0.92068219 0.92068237 -0.92068255 0.92068255 1 -0.92068219 0.99999982 0.92068237
		 -1.000000238419 0.92068219 0.92068237 -0.50022942 -0.43522632 1 -0.50022942 0.43522632 1
		 -0.49188009 1 0.49246195 -1 -0.43522629 0.48353076 -1 0.43522632 0.48353076 -8.1450999e-017 -0.43507469 0.49246192
		 4.4703484e-008 -1 0.92068243 -4.4703484e-008 -0.92068237 1 1.0803342e-007 -0.43522629 1
		 0.49304384 -0.43502411 0.49246192 0.49304384 0.4350239 0.49246192 0.92068237 -0.99999976 0.92068219
		 1 -0.92068219 0.92068255 0.92068237 -0.92068219 0.99999982 1 0.92068255 0.92068255
		 0.92068237 0.99999982 0.92068219 0.92068237 0.92068219 1.000000238419 1 -0.43522632 0.50022942
		 1 0.43522632 0.50022942 0.49304381 1 0.49246192 0.48353076 -0.43522629 1 0.48353076 0.43522632 1
		 -0.53314412 0.6221447 0.53314412 0.53314412 0.6221447 0.53314412 -0.53314412 0.6221447 -0.53314412
		 0.53314412 0.6221447 -0.53314412 -0.53314412 0.84273803 0.53314412 0.53314412 0.84273803 0.53314412
		 -0.53314412 0.84273803 -0.53314412 0.53314412 0.84273803 -0.53314412 0.6221447 -0.53314412 0.53314412
		 0.6221447 -0.53314412 -0.53314412 0.6221447 0.53314412 0.53314412 0.6221447 0.53314412 -0.53314412
		 0.84273803 -0.53314412 0.53314412 0.84273803 -0.53314412 -0.53314412 0.84273803 0.53314412 0.53314412
		 0.84273803 0.53314412 -0.53314412 0.53314412 -0.53314412 -0.6221447 -0.53314412 -0.53314412 -0.6221447
		 0.53314412 0.53314412 -0.6221447 -0.53314412 0.53314412 -0.6221447 0.53314412 -0.53314412 -0.84273803
		 -0.53314412 -0.53314412 -0.84273803 0.53314412 0.53314412 -0.84273803 -0.53314412 0.53314412 -0.84273803
		 -0.6221447 -0.53314412 -0.53314412 -0.6221447 -0.53314412 0.53314412 -0.6221447 0.53314412 -0.53314412
		 -0.6221447 0.53314412 0.53314412 -0.84273803 -0.53314412 -0.53314412 -0.84273803 -0.53314412 0.53314412
		 -0.84273803 0.53314412 -0.53314412 -0.84273803 0.53314412 0.53314412 -0.53314412 -0.53314412 0.6221447
		 0.53314412 -0.53314412 0.6221447 -0.53314412 0.53314412 0.6221447 0.53314412 0.53314412 0.6221447
		 -0.53314412 -0.53314412 0.84273803 0.53314412 -0.53314412 0.84273803 -0.53314412 0.53314412 0.84273803
		 0.53314412 0.53314412 0.84273803;
	setAttr -s 309 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 2 0 0 3 0 0 4 0 0 5 0 0 6 0 0 7 0 0 8 0 1 35 0
		 9 10 0 9 11 0 2 33 0 10 12 0 12 11 0 12 13 0 3 31 0 13 14 0 14 11 0 14 15 0 4 29 0
		 15 16 0 16 11 0 16 17 0 5 27 0 17 18 0 18 11 0 18 19 0 6 41 0 19 20 0 20 11 0 20 21 0
		 7 39 0 21 22 0 22 11 0 22 23 0 23 24 0 24 11 0 24 25 0 25 9 0 27 42 0 26 27 0 27 28 0
		 29 43 0 28 29 0 29 30 0 31 44 0 30 31 0 31 32 0 33 45 0 32 33 0 33 34 0 35 46 0 34 35 0
		 35 36 0 37 47 0 36 37 0 37 38 0 39 48 0 38 39 0 39 40 0 41 49 0 40 41 0 41 26 0 43 16 0
		 8 37 0 6 40 0 40 7 0 7 38 0 38 8 0 8 36 0 36 1 0 1 34 0 34 2 0 2 32 0 32 3 0 3 30 0
		 30 4 0 4 28 0 28 5 0 5 26 0 6 26 0 26 49 0 49 40 0 40 48 0 48 38 0 38 47 0 47 36 0
		 36 46 0 46 34 0 34 45 0 45 32 0 32 44 0 44 30 0 30 43 0 43 28 0 28 42 0 26 42 0 42 19 0
		 19 49 0 49 21 0 21 48 0 48 23 0 23 47 0 47 25 0 25 46 0 46 10 0 10 45 0 45 13 0 13 44 0
		 44 15 0 15 43 0 43 17 0 42 17 0 50 51 0 52 54 0 53 52 0 54 53 0 53 55 0 55 57 0 57 54 0
		 56 55 0 57 56 0 58 59 0 54 61 0 62 61 0 58 53 1 55 59 1 60 56 1 57 62 1 50 58 0 59 51 0
		 51 60 0 61 50 0 62 51 0 63 50 1 63 68 0 64 52 0 64 65 0 65 66 0 66 63 0 67 68 0 69 64 0
		 71 53 0 70 71 0 71 72 0 72 58 0 72 67 0 61 66 0 54 65 0 69 70 0 52 70 0 50 67 1 73 74 0
		 74 51 0 75 77 0 76 75 0 77 76 0 76 78 0 78 80 0 80 77 0 79 78 0 80 79 0 79 56 0 81 82 0
		 83 60 0 77 84 0;
	setAttr ".ed[166:308]" 85 84 0 81 76 1 78 82 1 83 79 1 80 85 1 73 81 0 82 74 0
		 74 83 0 84 73 0 85 74 0 67 73 1 70 75 0 86 68 0 88 76 0 87 88 0 88 89 0 89 81 0 89 86 0
		 84 72 0 77 71 0 69 87 0 75 87 0 73 86 1 55 80 0 59 85 0 90 91 0 91 51 0 92 94 0 93 92 0
		 94 93 0 93 95 0 95 97 0 97 94 0 96 95 0 97 96 0 96 56 0 98 99 0 100 60 0 94 101 0
		 102 101 0 98 93 1 95 99 1 100 96 1 97 102 1 90 98 0 99 91 0 91 100 0 101 90 0 102 91 0
		 63 90 1 64 92 0 103 68 0 105 93 0 104 105 0 105 106 0 106 98 0 106 103 0 101 66 0
		 94 65 0 69 104 0 92 104 0 90 103 1 57 97 0 62 102 0 108 74 0 107 108 0 108 91 0 109 111 0
		 110 109 0 111 110 0 110 112 0 112 114 0 114 111 0 113 112 0 112 78 0 114 113 0 113 96 0
		 115 116 0 116 82 0 117 100 0 111 118 0 119 118 0 115 110 1 112 116 1 117 113 1 114 119 1
		 107 115 0 116 108 0 108 117 0 118 107 0 119 108 0 103 107 1 104 109 0 88 110 0 89 115 0
		 118 106 0 111 105 0 109 87 0 107 86 1 95 114 0 99 119 0 83 117 0 79 113 0 120 121 0
		 120 122 0 121 123 0 122 123 0 124 125 0 124 126 0 125 127 0 126 127 0 128 129 0 128 130 0
		 129 131 0 130 131 0 132 133 0 132 134 0 133 135 0 134 135 0 136 137 0 136 138 0 137 139 0
		 138 139 0 140 141 0 140 142 0 141 143 0 142 143 0 144 145 0 144 146 0 145 147 0 146 147 0
		 148 149 0 148 150 0 149 151 0 150 151 0 152 153 0 152 154 0 153 155 0 154 155 0 156 157 0
		 156 158 0 157 159 0 158 159 0;
	setAttr -s 155 -ch 578 ".fc[0:154]" -type "polyFaces" 
		f 4 -11 9 12 13
		mu 0 4 0 1 2 3
		f 4 -14 14 16 17
		mu 0 4 0 3 4 5
		f 4 -18 18 20 21
		mu 0 4 0 5 6 7
		f 4 -22 22 24 25
		mu 0 4 0 7 8 9
		f 4 -26 26 28 29
		mu 0 4 0 9 10 11
		f 4 -30 30 32 33
		mu 0 4 0 11 12 13
		f 4 -34 34 35 36
		mu 0 4 0 13 14 15
		f 4 -37 37 38 10
		mu 0 4 0 15 16 1
		f 3 71 52 -9
		mu 0 3 17 18 19
		f 3 72 11 50
		mu 0 3 18 20 21
		f 3 73 49 -12
		mu 0 3 20 22 21
		f 3 74 15 47
		mu 0 3 22 23 24
		f 3 75 46 -16
		mu 0 3 23 25 24
		f 3 76 19 44
		mu 0 3 25 26 27
		f 3 77 43 -20
		mu 0 3 26 28 27
		f 3 78 23 41
		mu 0 3 28 29 30
		f 3 79 40 -24
		mu 0 3 29 31 30
		f 3 65 61 -28
		mu 0 3 32 33 34
		f 3 66 31 59
		mu 0 3 33 35 36
		f 3 67 58 -32
		mu 0 3 35 37 36
		f 3 68 64 56
		mu 0 3 37 38 39
		f 3 69 55 -65
		mu 0 3 38 40 39
		f 3 70 8 53
		mu 0 3 40 17 19
		f 3 -41 96 -40
		mu 0 3 41 42 43
		f 4 94 95 112 -112
		mu 0 4 44 45 43 8
		f 4 92 93 -111 -110
		mu 0 4 46 47 44 6
		f 4 90 91 -109 -108
		mu 0 4 48 49 46 4
		f 4 88 89 -107 -106
		mu 0 4 50 51 48 2
		f 4 86 87 -105 -104
		mu 0 4 52 53 50 16
		f 4 84 85 -103 -102
		mu 0 4 54 55 52 14
		f 4 82 83 -101 -100
		mu 0 4 56 57 54 12
		f 3 111 -23 -64
		mu 0 3 44 8 7
		f 3 110 63 -21
		mu 0 3 6 44 7
		f 4 -17 108 109 -19
		mu 0 4 5 4 46 6
		f 4 -13 106 107 -15
		mu 0 4 3 2 48 4
		f 4 -39 104 105 -10
		mu 0 4 1 16 50 2
		f 4 -36 102 103 -38
		mu 0 4 15 14 52 16
		f 4 -33 100 101 -35
		mu 0 4 13 12 54 14
		f 4 -29 98 99 -31
		mu 0 4 11 10 56 12
		f 4 -67 -66 -6 6
		mu 0 4 35 33 32 58
		f 4 -69 -68 -7 7
		mu 0 4 38 37 35 58
		f 4 -71 -70 -8 0
		mu 0 4 17 40 38 58
		f 4 -73 -72 -1 1
		mu 0 4 20 18 17 58
		f 4 -75 -74 -2 2
		mu 0 4 23 22 20 58
		f 4 -77 -76 -3 3
		mu 0 4 26 25 23 58
		f 4 -79 -78 -4 4
		mu 0 4 29 28 26 58
		f 4 80 -80 -5 5
		mu 0 4 32 31 29 58
		f 3 -81 27 62
		mu 0 3 31 32 34
		f 3 -63 60 -82
		mu 0 3 42 59 56
		f 3 -62 -83 -61
		mu 0 3 59 57 56
		f 3 -60 57 -84
		mu 0 3 57 60 54
		f 3 -59 -85 -58
		mu 0 3 60 55 54
		f 3 -57 54 -86
		mu 0 3 55 61 52
		f 3 -56 -87 -55
		mu 0 3 61 53 52
		f 3 -54 51 -88
		mu 0 3 53 62 50
		f 3 -53 -89 -52
		mu 0 3 62 51 50
		f 3 -51 48 -90
		mu 0 3 51 63 48
		f 3 -50 -91 -49
		mu 0 3 63 49 48
		f 3 -48 45 -92
		mu 0 3 49 64 46
		f 3 -47 -93 -46
		mu 0 3 64 47 46
		f 3 -45 42 -94
		mu 0 3 47 65 44
		f 3 -44 -95 -43
		mu 0 3 65 45 44
		f 3 -42 39 -96
		mu 0 3 45 41 43
		f 4 -97 81 -99 -98
		mu 0 4 43 42 56 10
		f 4 -25 -113 97 -27
		mu 0 4 9 8 43 10
		f 4 -143 -144 -151 -116
		mu 0 4 66 67 68 69
		f 4 -120 -119 -118 -117
		mu 0 4 70 71 72 73
		f 4 125 117 126 -123
		mu 0 4 74 66 72 75
		f 4 -145 142 -126 -146
		mu 0 4 76 67 66 74
		f 4 -129 119 123 -125
		mu 0 4 77 71 70 78
		f 4 -150 141 136 150
		mu 0 4 68 79 80 69
		f 4 151 -147 145 -130
		mu 0 4 81 82 83 84
		f 4 130 -114 129 122
		mu 0 4 85 86 81 84
		f 4 132 113 -134 124
		mu 0 4 87 88 89 90
		f 3 114 116 115
		mu 0 3 91 70 73
		f 3 118 121 120
		mu 0 3 72 71 92
		f 4 -137 137 -149 -115
		mu 0 4 91 93 94 70
		f 4 148 138 -148 -124
		mu 0 4 70 94 95 78
		f 4 147 139 134 -133
		mu 0 4 96 97 98 99
		f 4 -141 -152 -135 135
		mu 0 4 100 101 102 103
		f 4 -128 -165 169 162
		mu 0 4 92 104 105 106
		f 4 -121 -163 -162 -190
		mu 0 4 72 92 106 107
		f 4 -127 189 170 -191
		mu 0 4 75 72 107 108
		f 4 -131 190 175 153
		mu 0 4 86 85 109 110
		f 4 -132 -154 173 164
		mu 0 4 111 86 110 112
		f 4 -180 -181 -188 -156
		mu 0 4 113 114 115 116
		f 4 -160 -159 -158 -157
		mu 0 4 117 107 118 113
		f 4 167 157 168 -164
		mu 0 4 119 113 118 120
		f 4 -182 179 -168 -183
		mu 0 4 121 114 113 119
		f 4 -171 159 165 -167
		mu 0 4 108 107 122 123
		f 4 -187 149 177 187
		mu 0 4 124 79 68 125
		f 4 188 -184 182 -172
		mu 0 4 126 127 128 129
		f 4 172 -153 171 163
		mu 0 4 130 131 126 129
		f 4 174 152 -176 166
		mu 0 4 132 133 110 109
		f 3 154 156 155
		mu 0 3 116 117 113
		f 3 158 161 160
		mu 0 3 118 107 106
		f 4 -178 143 -186 -155
		mu 0 4 125 68 67 122
		f 4 185 144 -185 -166
		mu 0 4 122 67 76 123
		f 4 184 146 176 -175
		mu 0 4 134 83 82 135
		f 4 -179 -189 -177 140
		mu 0 4 100 136 137 101
		f 4 -170 267 250 -269
		mu 0 4 106 105 138 139
		f 4 -161 268 239 240
		mu 0 4 118 106 139 140
		f 4 -169 -241 249 244
		mu 0 4 120 118 140 141
		f 4 -173 -245 253 230
		mu 0 4 131 130 142 143
		f 4 -174 -231 254 -268
		mu 0 4 144 131 143 145
		f 4 194 226 219 218
		mu 0 4 146 147 148 149
		f 4 195 196 197 198
		mu 0 4 150 151 152 153
		f 4 228 200 201 -122
		mu 0 4 71 153 154 92
		f 4 202 -208 -197 -207
		mu 0 4 155 156 152 157
		f 4 221 206 -219 220
		mu 0 4 158 155 157 159
		f 4 -202 -209 203 127
		mu 0 4 92 154 160 104
		f 4 205 -205 -199 209
		mu 0 4 161 162 150 153
		f 4 229 -210 -229 128
		mu 0 4 77 161 153 71
		f 4 -227 -217 -142 225
		mu 0 4 148 147 80 79
		f 4 210 -222 222 -228
		mu 0 4 163 164 165 166
		f 4 -203 -211 191 -212
		mu 0 4 167 168 169 170
		f 4 -204 -213 192 131
		mu 0 4 171 172 173 89
		f 4 -206 214 -192 -214
		mu 0 4 174 175 173 176
		f 4 -193 -215 -230 133
		mu 0 4 89 173 175 90
		f 3 -195 -196 -194
		mu 0 3 177 151 150
		f 3 -200 -201 -198
		mu 0 3 152 154 153
		f 4 193 224 -138 216
		mu 0 4 177 150 94 93
		f 4 204 223 -139 -225
		mu 0 4 150 162 95 94
		f 4 213 -216 -140 -224
		mu 0 4 174 176 98 97
		f 4 -136 215 227 217
		mu 0 4 100 103 178 179
		f 4 234 263 180 259
		mu 0 4 180 181 115 114
		f 4 235 236 237 238
		mu 0 4 182 180 140 183
		f 4 265 241 242 199
		mu 0 4 152 183 139 154
		f 4 243 -250 -237 -249
		mu 0 4 184 141 140 180
		f 4 260 248 -260 181
		mu 0 4 121 184 180 114
		f 4 -243 -251 245 208
		mu 0 4 154 139 138 160
		f 4 247 -247 -239 251
		mu 0 4 185 186 187 183
		f 4 266 -252 -266 207
		mu 0 4 156 185 183 152
		f 4 -264 -259 -226 186
		mu 0 4 124 188 148 79
		f 4 252 -261 183 -265
		mu 0 4 189 190 128 127
		f 4 -244 -253 231 -254
		mu 0 4 142 191 192 143
		f 4 -246 -255 232 212
		mu 0 4 193 194 195 170
		f 4 -248 256 -232 -256
		mu 0 4 196 197 195 198
		f 4 -233 -257 -267 211
		mu 0 4 170 195 197 167
		f 3 -235 -236 -234
		mu 0 3 181 180 182
		f 3 -240 -242 -238
		mu 0 3 140 139 183
		f 4 233 262 -220 258
		mu 0 4 188 199 149 148
		f 4 246 261 -221 -263
		mu 0 4 187 186 158 159
		f 4 255 -258 -223 -262
		mu 0 4 196 198 166 165
		f 4 -218 257 264 178
		mu 0 4 100 179 200 136
		f 4 269 271 -273 -271
		mu 0 4 201 202 203 204
		f 4 273 275 -277 -275
		mu 0 4 205 206 207 208
		f 4 277 279 -281 -279
		mu 0 4 209 210 211 212
		f 4 281 283 -285 -283
		mu 0 4 213 214 215 216
		f 4 285 287 -289 -287
		mu 0 4 217 218 219 220
		f 4 289 291 -293 -291
		mu 0 4 221 222 223 224
		f 4 293 295 -297 -295
		mu 0 4 225 226 227 228
		f 4 297 299 -301 -299
		mu 0 4 229 230 231 232
		f 4 301 303 -305 -303
		mu 0 4 233 234 235 236
		f 4 305 307 -309 -307
		mu 0 4 237 238 239 240;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E360F0B5-4125-19CE-6871-CD83417CA447";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5C2C51E2-48DC-E818-2B1F-6F831ED1C17E";
createNode displayLayer -n "defaultLayer";
	rename -uid "AE106999-4503-4828-50F9-01BE680F3916";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A1291AFD-408A-8F21-BBC5-FC8880E44045";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C96A399F-498F-6E7A-D985-1C9D9AB8D7A0";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F5189772-4853-96A6-8891-7294CD709D1C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 976\n                -height 523\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 523\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 975\n                -height 523\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 975\n            -height 523\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 976\n                -height 523\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 976\n            -height 523\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1957\n                -height 1091\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1957\n            -height 1091\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n"
		+ "                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1957\\n    -height 1091\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1957\\n    -height 1091\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7ECB7E61-4E75-7C6C-220A-8491DEEFF3FA";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 100 -ast 0 -aet 100 ";
	setAttr ".st" 6;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "01F2A2D0-4417-4E69-D7A0-45B4B21D67FE";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "ED84F724-4F72-A56B-52EF-EFB99392ABE1";
	addAttr -s false -ci true -h true -sn "sunAndSkyShader" -ln "sunAndSkyShader" -at "message";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "AAE9A26F-4D57-540A-1E6D-0C97985AC82D";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".fil" 0;
	setAttr ".rflr" 15;
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
	setAttr ".stringOptions[50].value" -type "string" "on";
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
	rename -uid "EA5BC947-4F92-6878-0A3F-4781042210C0";
createNode blinn -n "gem:blinn2";
	rename -uid "903E64F4-438B-0B66-F3BE-E785C2FCAE5E";
	setAttr ".fll" 50;
	setAttr ".sc" -type "float3" 1 1 1 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "gem:blinn2SG";
	rename -uid "A7F20A9A-4E76-50D9-3A87-7495440520B8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "gem:materialInfo2";
	rename -uid "FB84187B-4CF6-B1F5-A077-FE8F60F7FD48";
createNode ramp -n "gem:ramp1";
	rename -uid "C86B599F-437C-522C-FCEB-068FB7CB680B";
	setAttr -s 3 ".cel";
	setAttr ".cel[0].ep" 0;
	setAttr ".cel[0].ec" -type "float3" 0.0070000002 0.0070000002 0.0070000002 ;
	setAttr ".cel[1].ep" 0.5;
	setAttr ".cel[2].ep" 1;
	setAttr ".cel[2].ec" -type "float3" 0.0089999996 0.0089999996 0.0089999996 ;
createNode place2dTexture -n "gem:place2dTexture1";
	rename -uid "D44C2016-4FCE-B17A-3957-D9958DE4D0D2";
createNode ramp -n "gem:ramp2";
	rename -uid "9B04F2A8-40B6-8860-DF39-C1B1C8B5363D";
	setAttr -s 7 ".cel";
	setAttr ".cel[0].ep" 0.15264797210693359;
	setAttr ".cel[0].ec" -type "float3" 1 0.917 0.917 ;
	setAttr ".cel[1].ep" 0.8504672646522522;
	setAttr ".cel[1].ec" -type "float3" 0.833 1 1 ;
	setAttr ".cel[2].ep" 1;
	setAttr ".cel[2].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[3].ep" 0.28348910808563232;
	setAttr ".cel[3].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[4].ep" 0.69470405578613281;
	setAttr ".cel[4].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[5].ep" 0;
	setAttr ".cel[5].ec" -type "float3" 1 1 1 ;
	setAttr ".cel[6].ep" 0.5;
	setAttr ".cel[6].ec" -type "float3" 0.86500001 1 0.86500001 ;
createNode place2dTexture -n "gem:place2dTexture2";
	rename -uid "E12B6AF7-4F02-8C51-BD01-BFA0679248E1";
createNode blinn -n "blinn1";
	rename -uid "450CB902-4AFA-27F7-321F-76A88550FD81";
createNode shadingEngine -n "blinn1SG";
	rename -uid "04A7F7AF-415F-3D48-F03C-AD8AEE49139A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "AB7C3CC6-4059-3167-9A9A-3F98C52E6B3C";
createNode groupId -n "groupId1";
	rename -uid "22C9DE52-429B-B88D-4ECA-15847438F085";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "54C90080-46AC-17A4-C3CF-379769C20065";
	setAttr ".ihi" 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "2A140441-42CB-E0D8-DC13-3E9BCB9CB1F1";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -307.14284493809708 -316.66665408346438 ;
	setAttr ".tgi[0].vh" -type "double2" 295.23808350638785 329.76189165834455 ;
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
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr ":defaultColorMgtGlobals.cme" "gem:imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "gem:imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "gem:imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "gem:imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "gem:imagePlaneShape1.ltc";
connectAttr "groupId1.id" "polySurface10Shape.iog.og[0].gid";
connectAttr "blinn1SG.mwc" "polySurface10Shape.iog.og[0].gco";
connectAttr "groupId2.id" "polySurface10Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface10Shape.iog.og[1].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "gem:blinn2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "gem:blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "gem:ramp1.oc" "gem:blinn2.c";
connectAttr "gem:blinn2.oc" "gem:blinn2SG.ss";
connectAttr "gem:pCylinderShape2.iog" "gem:blinn2SG.dsm" -na;
connectAttr "gem:blinn2SG.msg" "gem:materialInfo2.sg";
connectAttr "gem:blinn2.msg" "gem:materialInfo2.m";
connectAttr "gem:ramp1.msg" "gem:materialInfo2.t" -na;
connectAttr "gem:place2dTexture1.o" "gem:ramp1.uv";
connectAttr "gem:place2dTexture1.ofs" "gem:ramp1.fs";
connectAttr "gem:ramp2.oc" "gem:ramp1.cel[1].ec";
connectAttr "gem:place2dTexture2.o" "gem:ramp2.uv";
connectAttr "gem:place2dTexture2.ofs" "gem:ramp2.fs";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "polySurface10Shape.iog.og[0]" "blinn1SG.dsm" -na;
connectAttr "groupId1.msg" "blinn1SG.gn" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "blinn1.msg" "materialInfo1.m";
connectAttr "gem:blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "gem:blinn2.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "gem:place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "gem:place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "gem:ramp1.msg" ":defaultTextureList1.tx" -na;
connectAttr "gem:ramp2.msg" ":defaultTextureList1.tx" -na;
connectAttr "polySurface10Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
// End of cube.ma
