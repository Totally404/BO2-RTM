�GSC
       #�  `�  #�  `�  V  W�  u�  u�     @+ % u       maps/mp/_imcsx_gsc_studio.gsc maps/mp/gametypes/_hud maps/mp/gametypes/_hud_util maps/mp/gametypes/_hud_message maps/mp/_utility common_scripts/utility maps/mp/gametypes/_globallogic init onplayerconnect result modelsspawned playersalive lastdeath  lastkiller starttime deathbarrierheight firsthostspawned welcomemessagespawn player_spawns_avalanche skipcountdown registernumlives _a849 _k849 models strtok p6_shipping_boxes_02,p6_stainless_refrigerator,p6_industrial_tubing_01,collision_clip_wall_256x256x10,p6_metal_fence_gate,p6_metal_tank_set_01,p6_plastic_trash_can,p6_shipping_boxes_01,p6_shipping_boxes_02,p6_water_cooler_metal,p6_stainless_refrigerator,p_dest_ashtray,p_glo_fire_hose,p6_shipping_boxes_02,p_rus_chair_metal,p_rus_coffee_urn,p6_lunch_table,veh_t6_drone_tank_alt,veh_t6_civ_car_compact,veh_t6_civ_future_forklift,ny_harbor_buoy_red,p6_barrier_barrel_orange_a,com_barrel_biohazard_rust,t6_wpn_supply_drop_ally,t6_wpn_supply_drop_axis,t6_wpn_supply_drop_detect,p6_barrel_green,inventory_minigun_drop_mp,inventory_minigun_mp,chopper_minigun_mp,littlebird_guard_minigun_mp,minigun_drop_mp,minigun_mp,minigun_wager_mp,p6_dockside_container_lrg_white,p6_dockside_container_lrg_blue,p6_dockside_container_lrg_red,p6_dockside_container_lrg_orange , precachemodel _a849 _k849 item dsr50_mp,ballista_mp,minigun_wager_mp precacheitem _a849 _k849 shader gradient,extracam2d,circle,menu_mp_contract_expired,menu_mp_killstreak_select precacheshader gametype tdm var ui_errorTitle,ui_errorMessage,ui_errorMessageDebug txt Error:|Gametype Fatal Error
Avalanche was developed for Team Deathmath only
Please change the Gametype to Team Deathmatch|
Avalanche Developed By Extinct! | i setdvar exitlevel rankedmatch script mp_dockside Error:|Map Fatal Error
Avalanche has been developed for Cargo only
Please change the map to cargo and try again.|
Avalanche Developed By Extinct! Avalanche:|Thank you for playing Avalanche  hostname 
Follow Extinct's social medias they are the following
Snapchat: Extincts, Instagram: Extinctable, Youtube: Extinct, Kik: Extinct98|
Avalanche Developed By Extinct! connected player onplayerspawned disconnect game_ended menuresponse changeclass class_smg spawned_player setclientuivisibilityflag hud_visible freezecontrols ishost avalanche_antiquit iprintln ^2Go Prone & Press [{+actionslot 3}] To Enable Force Host! changingmap avalanche_changemap Cargo overflowfix start_avalanche avalanche_forcehost avalanche_increasedeath avlanche avalanche welcomemsg endmsg avalanche_deathbarrier avalanche_ending setmovespeedscale enableinvulnerability suicide Avalanche_Ready gotcustspawn think_avalanche choose_custom_spawns avalanche_class teamrandomize increaseentityspace spawn_avalanche guns_avalanche ext iprintlnbold Please Wait.. Players Are Still Connecting, Time Remaining:^2  _a686 _k686 extinct players avalanche_gui Welcome avalanche_stance_check startpos xpos ypos hpos x modelspawner p6_dockside_container_lrg_orange rotateyaw p6_dockside_container_lrg_red movez origin angles p6_metal_fence_gate collision_clip_wall_256x256x10 spawn_models_avalanche Models Spawned:  minigun snipers minigunpos -199.942;-345.319;-464.305;-600.993;-728.39 ; sniperspos -733.398;-599.718;-462.46;-337.585;-196.031;-733.398;-599.718;-462.46;-337.585;-196.031 snipersposfwd 19512.9;19512.9;19512.9;19512.9;19512.9;19743.3;19743.3;19743.3;19743.3;19743.3 snipersmodel ballista_mp+vzoom+steadyaim+dualclip;dsr50_mp+vzoom+steadyaim+dualclip wnum spawn script_model float setmodel getweaponmodel minigun_wager_mp startspin createrandomgunstrigger Mini Gun snum randomize randomintrange gun name model trig trigger_radius setcursorhint HINT_NOICON sethintstring Hold [{+usereload}] To Pick Up  trigger who weaponinbound usebuttonpressed isalive takeweapon hide triggeroff giveweapon switchtoweapon show triggeron rotateto Avalanche_Spectator trace weapon_fired team axis adsbuttonpressed bullettrace gettagorigin j_head getplayerangles entity avalanche_models physics_avalanche modelmonitorplayers num com_barrel_biohazard_rust p6_barrier_barrel_orange_a rowtwo veh_t6_civ_future_forklift,veh_t6_civ_car_compact,veh_t6_civ_future_forklift veh_t6_drone_tank_alt rowfour p6_metal_tank_set_01,p6_plastic_trash_can,p6_metal_tank_set_01,p6_plastic_trash_can,p6_metal_tank_set_01,p6_plastic_trash_can rowfive p6_shipping_boxes_01,p6_water_cooler_metal,p6_shipping_boxes_01,p6_water_cooler_metal,p6_shipping_boxes_01,p6_water_cooler_metal rowsix p6_water_cooler_metal,p6_stainless_refrigerator,p6_water_cooler_metal,p6_stainless_refrigerator,p6_water_cooler_metal,p6_stainless_refrigerator rowseven p6_shipping_boxes_02,p6_shipping_boxes_01,p6_shipping_boxes_02,p6_shipping_boxes_01,p6_shipping_boxes_02,p6_shipping_boxes_01 roweight p6_shipping_boxes_02,p6_industrial_tubing_01,p6_shipping_boxes_02,p6_industrial_tubing_01,p6_shipping_boxes_02,p6_industrial_tubing_01 rownine p_rus_coffee_urn,p6_lunch_table,p_rus_coffee_urn,p6_lunch_table,p_rus_coffee_urn,p6_lunch_table teamcustspawn allies alliesNum alliesLookAt axisNum axisLookAt posallies -727.991|-595.513|-462.756|-331.885|-199.722|-727.991|-595.513|-462.756|-331.885|-199.722|-199.722 posalliesfwd -623.569|-623.569|-623.569|-623.569|-623.569|-335.595|-335.595|-335.595|-335.595|-335.595|-335.595 posaxis -199.228|-333.219|-466.486|-600.355|-717.008|-199.228|-333.219|-466.486|-600.355|-717.008|-466.486 posaxisfwd 20121.61|20121.61|20121.61|20121.61|20121.61|19921.4|19921.4|19921.4|19921.4|19921.4|19921.4 setorigin Num setplayerangles LookAt geteye physicslaunch owner _a403 _k403 dude distance callbackplayerdamage health MOD_CRUSHED j_spine4 dodamage none MOD_HIT_BY_OBJECT supplydrop_mp playsound phy_impact_supply avalanche_spec Destroy Notification ents getentarray index issubstr classname trigger_hurt delete deathbarrier fixinfotext advertise_avalanche instructmoving instructionopen InfoSmall createstring Avalanche small BOTTOM titlechange ^1A^7valanche|A^1v^7alanche|Av^1a^7lanche|Ava^1l^7anche|Aval^1a^7nche|Avala^1n^7che|Avalan^1c^7he|Avalanc^1h^7e|Avalanch^1e^7|Avalanc^1h^7e|Avalan^1c^7he|Avala^1n^7che|Aval^1a^7nche|Ava^1l^7anche|Av^1a^7lanche|A^1v^7alanche settext [{+actionslot 1}] To Open   Instructions [{+actionslot 1}] To Close  action welcomemessage freezecontrolsallowlook setblur Text0 Welcome To Avalanche bigfixed CENTER TOP Text1 Developed By Extinct objective Text2 Attackers: Dodge the falling models and make it to the top to kill the defenders! Text3 Defenders: Shoot the levitating models to make them fall to kill the attackers! Text4 Goodluck, Hosted By  Text5 www.youtube.com/c/ExtinctMods Text6 Game Starting In: ^210 Background createrectangle white affectelement alpha Text setsafetext Game Starting In: ^2 welcomemove -150,150,-150,150,-150,150,-150 disableinvulnerability destroyall GUICreate LobbyNotify InfoBackground InfoText Dodge the falling models and make it to the top to try and kill the defenders! Shoot the levitating models to make them fall to kill the attackers before they reach to the top! NotifyBackground TOPRIGHT gradient NotifyTextTop RIGHT NotifyTextBottom actionslotonebuttonpressed instruct Active y notifys ^2  ^7Has Been Eliminated By  Number Of Attackers Remaining: ^2  clearperks takeallweapons knife_held_mp avalanche_perks specialty_fallheight,specialty_fastladderclimb,specialty_fastmantle,specialty_fastweaponswitch,specialty_longersprint,specialty_sprintrecovery,specialty_unlimitedsprint,specialty_armorpiercing,specialty_armorvest,specialty_bulletdamage,specialty_bulletpenetration,specialty_bulletflinch,specialty_scavenger,specialty_extraammo,specialty_fastads,specialty_fastequipmentuse,specialty_holdbreath,specialty_loudenemies,specialty_noname,specialty_twogrenades setperk getcurrentweapon maxhealth getstance prone setstance crouch actionslotthreebuttonpressed forcehost Force Host: ^2ON party_connectToOthers 0 partyMigrate_disabled 1 party_mergingEnabled Force Host: ^1OFF ^1Warning^7: Death Barrier Level Increased! mapname mapcode Avalanche: Map Isnt Supported.. Changing Map: ^2 map endmessage Avalanche Has Been Won! Thank you for staying in for the full game, I hope you have had fun playing! Winning Team Is Defenders Winning Team Is Attackers Thanks To   For Hosting The Lobby Snapchat: Extincts, Instagram: Extinctable, Kik: Extinct98 _a599 _k599 maps/mp/gametypes/_globallogic_ui closemenus avalanche_tele _a599 _k599 Not teleported All Bots Teleported to Crosshair avalanche_debugging jumpbuttonpressed X:   Y:   Z:  avalanche_freeze _a599 _k599 You're Host host_migration_begin test createserverfontstring default xTUL g_gametype sd a textset clearalltextafterhudelem _a599 _k599 saveposinfo text debugexit obj incentspace array cleared Entity Space Increased By: ^2  array_delete input font fontscale align relative color glowcolor glowalpha sort islevel isvalue hud createfontstring setvalue setpoint archived hidewheninmenu width height newclienthudelem newhudelem elemtype icon children setparent uiparent setshader type time value moveovertime fadeovertime keys getarraykeys temp e destroy prematchperiod    ^   u   �   �   �   ������I����5�-4      �6! (!(!!(
8!.(
8!9(
! D(f!N(!a(!r(-0      �6-4      �6-.   �6-
 -
 �.   �'(p'(_;   '	(-	.      /6q'(?��-
-
 N.     �'(p'(_;   '(-.      t6q'(?��-
-
 �.     �'(p'(_;   '(-.      �6q'(?�� �
 �G; ]-
-
 .     �'(-
 �
 9.     �'(' ( SH; -  .      �6' A? ��-.      �  �9= 	 �
 �G; [-
-
 .   �'(-
 �
 	.     �'(' ( SH; -  .      �6' A? ��-.      �  �
 �F; V-
-
 .   �'(-
 �
 � �
 �NN.   �'(' ( SH; -  .      �6' A? ��  
 uU$ %- 4   �6?��  &
�W
 �WX
�
 �
 �V
 �U%-
�0    �6-0     	6  a9= 
-0     	;  �! r(-4    	6-
 	60      	-6  �=  	 �
 �G; !	q(-
 �
 	�4      	}6�+-2    	�6-4      	�6-4      �6-4      	�6-4      	�6! a(  	�_9=   	q_9;  _! 	�(!	�(!	�(-4      
6-4      
6-0    
,6-0      
>6  r;  -0     
T6! 	�(

\U%  
l_9;  +-4     
y6-0      
�6-0      
�6! 
l(?��  
�?EK
 �W! 
�(-4      
�6	  >L��+-4      
�6-4      
�6+'(I;  -
 N.    
�6+'B?��	 ?�ff+  S'(p'(_;  :' (-
i 4     [6- 0   
,6- 4     q6q'(?��  ������
 �W! 	�(� X['('('('('(H;  �' ( <H; b-�[
 ��P�P[N.     � 	�S! 	�(-	  <#�
Z 	�SO 	�0      �6'A'A	<#�
+' A? ���N'('('('A?�s'(�'('(' ( =H;  �-���[
 ��P�P[N.     � 	�S! 	�(-	  <#�
Z 	�SO 	�0      �6-	 ?333< 	�SO 	�0      �6'A'A	<#�
+' A? �s �'('('(' ( =H;  �-���[
 ��P�P[N.     � 	�S! 	�(-	  <#�
Z 	�SO 	�0      �6-	 ?333< 	�SO 	�0      �6'A'A	<#�
+' A? �s	   Fw� 	   �H,�	   Fgך[�  	�7! �(	Fw� 	   Å�3	   Fgך[- 	�7! �(Z��[� 	�7! (Z��[ - 	�7! (�'('('('(H; �' ( H; n-^ 
�; 	�7  �,[^P[NN.     � 	�S! 	�(-	  <#�
Z 	�SO 	�0      �6'A	   <#�
+' A? ���N'('('('A?�h�'('('('(H;  �' ( H; l-^ 
�; 	�7  �$[^P[NN.   � 	�S! 	�(-	  <#�
Z 	�SO 	�0      �6'A	   <#�
+' A? ���N'('('('A?�i�'('('('(H;  �' ( H; l-^ 
�  	�7  ���[^P[NN.   � 	�S! 	�(-	  <#�
Z 	�SO 	�0      �6'A	   <#�
+' A? ���N'('('('A?�i-Z[
 	   Fw�f �	   FsZ�[.    � 	�S! 	�(-Z[
  	 Fw�f �	   FsZ�[.    � 	�S! 	�(-4   ?6-
 V N0     	-6
+X

\V  	gow�q�7<'('(-
�
 �.     �'(-
 �
 �.     �'(-
 �
 !.     �'(-
 �
 ~.     �'('(H;  x-	  Fx�f-.   �	   Fr�f[
�.     �'(--
 �.     �0    �6-4      6-
.
 �4      6'A? �'(
H; �-.     F' (-	   Fx�f-.   �-.   �[
�.     �'(-- .    �0    �6-4      6-  4   6'A? �l  UY^d�
 �W---7  �
 i.   �'(-
 �0     x6-
 �N0      �6
�U$ % 7!�(- 0   �=  - .      �;  Y- 0    �6-0     �6-0     6- 0   6- 0   6+-0      (6-0     -6?�u  &_; 8-	  >���   ZN  [0      76	  >���+?��  T
��
 �W
 @W'(
 ZU%  g
 lF= 
-0     q; �--
�0    �-0   �c   B@PN-
�0      �.     �'(
�7  ^_;x'(	H; P �
�F;  8'(	H; ,-  �4    �6-2  �4    �6'A? ��'A?��	'(H;  R �
�F;  :	'(H;  ,-  �4    �6-2  �4    �6'A? ��'A?��'(H;  R �
�F;  :'(H;  ,-  �4    �6-2  �4    �6'A? ��'A?��'(H;  @ �
�F;  -  �4      �6-x  �4    �6'A? ��' ( HH;  >  �
�F;  %-   �4    �6-(   �4    �6' A? ��H'(QH;  T �
�F;  <H'(QH;  .-  �4      �6-2  �4    �6'A? ��'A?��Q'(ZH;  R �
�F;  :Q'(ZH;  ,-  �4    �6-2  �4    �6'A? ��'A?��? �  
�  �S(! �(' ( H;  �-Z�Z[
 �; 	�7  � �d ,PN
[N.     � �S! �(-Z�Z[
 �; 	�7  � �d ,PN[N.     � �S! �(-Z�Z[
 �; 	�7  � d ,PN
[N.     � �S! �(' A?�=' ( H; �-Z�Z[
 �w 	�7  � �d ,PN
[N.   � �S! �(-Z�Z[
 �w 	�7  � �d ,PN[N.     � �S! �(-Z�Z[
 �w 	�7  � d ,PN
[N.     � �S! �(' A?�@' ( H; �-Z�Z[
 ; 	�7  � XF ,PN�[N.   � �S! �(-Z�Z[
 ; 	�7  � XF ,PNn[N.     � �S! �(-Z�Z[
 ; 	�7  � vF ,PN�[N.     � �S! �(' A?�@-
-
 0.   �!)(' ( H;  D-^    );  	�7  � �
 �PN ,[N.     � �S! �(' A?��' ( H; <-^ 
}; 	�7  �  U UPN �[N.   � �S! �(' A?��-
-
 �.   �!�(' ( H;  D-^    �;  	�7  � �U UPN &[N.     � �S! �(' A?��-
-
 !.   �!(' ( H;  D-^    ;  	�7  � �U UPN �[N.     � �S! �(' A?��-
-
 �.   �!�(' ( H;  D-Z[  �;  	�7  � LU UPN �[N.   � �S! �(' A?��-
-
 B.   �!9(' ( H;  D-^    9;  	�7  � �U UPN R[N.     � �S! �(' A?��-
-
 �.   �!�(' ( H;  D-^    �;  	�7  � U UPN �[N.     � �S! �(' A?��-
-
 X.   �!P(' ( H;  D-^    P;  	�7  � xU UPN [N.     � �S! �(' A?��' ( H; �-Z�Z[
 �; 	�7  � Xd ,PN�[N.   � �S! �(-Z�Z[
 �; 	�7  � Xd ,PNn[N.     � �S! �(-Z�Z[
 �; 	�7  � ld ,PN�[N.     � �S! �(' A?�@' ( H; �-Z�Z[
 �w 	�7  � Xd ,PN�[N.   � �S! �(-Z�Z[
 �w 	�7  � Xd ,PNn[N.     � �S! �(-Z�Z[
 �w 	�7  � ld ,PN�[N.     � �S! �(' A?�@  �d��?! �(
 �!�(
�!�(	  C��1	   @_�@[
�!�(
l!�(
�!�(	C�qH	   C��`[
�!�(-
�
 .   �'(-
 �
 q.     �'('(
H;  4	   Df -.   �-.   �[
�!�('A? ��-
�
 �.     �'(-
 �
 J.     �' ('(
H;  4	   Fw�f-.   �- .   �[
l!�('A? ��  &- g
 �N  �  g �0      �6- g
 �N  �-0      �Oe0      �6  g
 �N! �A  &_; - � '[c �P  �0    �6 
�����
 �W
 @W!�(_; S'(p'(_;  �' (- .    �=  - 7  � �.     �H; � 7 Y!.(  �7 Y!9(-
 )^ -
) 0   �
 7  N   56-
 R
@
 ;  7  � 7 N 0    26-
 j 0     `6! !B 7! |(-
 � 4     [6X
 @ VX
 �Vq'(? �	   =L��+?��  ��
 �W
 @W-.    �'(' ( SH; H-
� 7  �.   �;      ��[ 7!�(- 7  ^0     �6' A? ��
 
\U%  g
 �F; !!A  �  NJ=  �_9;  9!�(-0    
T6-
 �4      [6  g
 �F; !!B!�(	  =L��+?��  
�
 �W
 @W! (!(-^ ^*#
 Q
 Q	   ?���
 K
 A.     4
 *!	�(-
�
 d.   �!X(' (   XSH;  n ;  
	 =L��+?�� 9; $-
L  X
gNN
 * 	�0    D6? !-
u  X
gNN
 * 	�0    D6	  >���+' A? ��	   =L��+?�u  �
�
 �W
 @W
 iF;� �_9; �!r(! �(	=���+-
�0      �6-0    �6-0      �6-^ ^*2�
 �
 �	 ?�33
 �
 �0    4
 �!	�(-^ ^*M�
�
 �	 ?�33
 
 �0    4
 �!	�(-^ ^*x�
�
 �	 ?�ff
 
 !0    4
 !	�(-^ ^*��
�
 �	 ?�ff
 
 y0    4
 s!	�(-^ ^*��
�
 �	 ?�ff
 
 � �N0   4
 �!	�(-^ ^*��
�
 �	 ?�ff
 
 �0    4
 �!	�(-^ ^*��
�
 �	 ?�ff
 
 0    4
 !	�(-
 @^  � �
 �
 �.   0
 %!	�(-	  >���
 T
 % 	�0    F6	  ?   +' ( H;  V-	   ?   
 �
 Z N  	�0    F6-	   ?   
 T
 Z N  	�0    F6	  ?��+' A? ��-0   	;  
!D(' ( H;  <-
k DN
 	�0    _6+-0   	;  !DB	  =L��+' A? ��-
-
 �.     �!�(' ( H;  b--  �.      �	   >���
 �
 Z N  	�0    F6-	>���
 T
 Z N  	�0    F6	  >���+' A? ��-	>L��
 T
 % 	�0    F6-0   �6!�(	>�  +-0     �6-0      �6- 	�0      �6-
 �4      [6-
 �4      [6-4      �6
�F;�!�(-
 @^ �(
Q
 Q.   0
 �!	�(-
@^ 2 �d
Q
 Q.     0
 %!	�( g
 �F; 4-^ ^*d
Q
 Q	 ?�33
 
 �0    4
 �!	�( g
 lF; 4-^ ^*d
Q
 Q	 ?�33
 
 K0    4
 �!	�(-
�^ 2 J2 �
 �
 �0    0
 �!	�(-^ ^*C �
 �
 �	 ?�33
 
 80    4
 �!	�(-^ ^*S �
 �
 �	 ?�33
 
 80    4
 �!	�(-0     �; G _9;  �
 !(! (! (-
	 >L��
  
 � 	�0    F6-	   >L��
  
 * 	�0    F6-7	   >#�

  
 % 	�0    F6-	   >#�

  
 � 	�0    F6? �! (! (!(-(	   >L��
  
 � 	�0    F6-#	   >L��
  
 * 	�0    F6-d	   >k�
  
 % 	�0    F6-d	   >k�
  
 � 	�0    F6	  >k�+!(	=L��+?��
 �F;Z
 �U%  "_9; &
 !"(-
 * .
 -
 * 9NNNN
 � 	�0      _6-
 H !N
� 	�0      _6-(	   >L��
 �
 � 	�0    F6-2	   >L��
 �
 � 	�0    F6-2	   >L��
 �
 � 	�0    F6+-�	   >L��
 �
 � 	�0    F6- �	 >L��
 �
 � 	�0    F6- �	 >L��
 �
 � 	�0    F6	  >L��+!"(?  "_; -
80      	-6	  =L��+?��
 �F; -  	�0    �6 
�
 �W
 @W! �(-0      k6-0      v6-+
�0    6-
 �0      6	  ?   +-
 -
 �.   �!�(' (   �SH;  -   �0     i6' A? ��-0   �;  a-0   q
 �F=  �9; I--0      q0    �6	  =L��+-+
�0    6-
 �0      6	  >���+	  =L��+?��  &
�W
 @W g
 �F; �!�(  �!(-0    �
 �F; -
�0    �6  g
 lF=  <K; <!�(  �!(	  =L��+?��  &-0    �=  -0   �
 �F; � �_9;  J
 !�(-
 �0    	-6-
 �
 �.   �6-
 
 �.   �6-
 �
 .   �6? E! �(-
 *0    	-6-
 
 �.   �6-
 �
 �.   �6-
 
 .   �6	  =L��+?�?  &<+ �!N(-
 <.     	-6 hp
�
 �W' ( I;  -
x N.    
�6+' B?��-.   �6 
�
 �W
 �U%  �_9; �!�(- 	�0      �6	  =���+-
�0      �6-0    �6-0      �6-^ ^*2�
 �
 �	 ?�33
 �
 �0    4
 �!	�(-^ ^*M�
�
 �	 ?�33
 
 �0    4
 �!	�(-^ ^*x�
�
 �	 ?�ff
 
 �0    4
 !	�( !J;  :-^ ^*��
�
 �	   ?�ff
 
  0    4
 s!	�(?  4-^ ^*��
�
 �	 ?�ff
 
  70    4
 s!	�(-^ ^*��
�
 �	 ?�ff
 
  Q �
  \NN0      4
 �!	�(-^ ^*��
�
 �	 ?�ff
 
 �0    4
 �!	�(-^ ^*��
�
 �	 ?�ff
 
  s0    4
 !	�(-
 @^  � �
 �
 �.   0
 %!	�(-	  >���
 T
 % 	�0    F6	  ?   +' ( H;  V-	   >���
 �
 Z N  	�0    F6-	   >���
 T
 Z N  	�0    F6	  >���+' A? ��	   @   +  !K;  -  	�0      �6-0   �6  � �K
 �W S'(p'(_;  4' (- 0      	;  ?  - 0       �6q'(?��	   =L��+?��   � �
 �W S'(p'(_;  T' ( 7 g
 lF; -
! 0     	-6? -  � 0     �6-
 !0      
�6q'(?��  &
�W-0   �;  %-- 	�7  ��[N0    �6	  >���+-0      !F;  -4    �6	  >���+--0     �0    	-6-
 !X  �
!\ �
!a �NNNNN0      
�6	  >���+?�`   � �
�
 �W S'(p'(_;  @' (- 0      	;  -
!� 0   	-6? - 0    �6q'(?��  !� � �
 !�W-
!�.     !�!!�(-
 !� !�0   D6 !�7!T(
!�h
!�F; -'(? 7'(
!�U%  K;-  !�0   !�6!(  S'(p'(_; �' ( 9=  7 �_=  7 |_9;  &-
L 7 "

 gNN
 * 7 	�0    D6? %-
u 7 "

 gNN
 * 7 	�0      D6
� 7 	�_=   7 |_9;  M 7 g
 �F; -
�
 � 7 	�0    _6 7  g
 lF; -
K
 � 7 	�0      _6
� 7 	�_;  �-
�
 � 	�0    _6-
 �
 � 	�0      _6-
 �
  	�0      _6  !J;  -
 
 s 	�0    _6? -
 7
 s 	�0    _6-
  Q �
  \NN
 � 	�0    _6-
 �
 � 	�0      _6-
  s
  	�0      _6 7  �_; �-
�
 � 7 	�0      _6-
 �
 � 7 	�0    _6-
 !
  7 	�0    _6-
 y
 s 7 	�0    _6-
 � �N
� 7 	�0    _6-
 �
 � 7 	�0    _6-
 k DN
 7 	�0    _6 7  "_=  7 |_9;  I-
* .
 -
 * 9NNNN
 � 7 	�0      _6-
 H !N
� 7 	�0    _6q'(?�	   <#�
+?��  " N! (X
 !�V- 0   D6 &-.    �6 �^"%-
�.   �' (- 0     �6_;  	 7!(! A   "5"; ")_9;  9!")('(-.     �'(
"CSN' (- .     	-6-.     "b6 "o"u"z"�"�� "�T"�"�"�"�"�"�_9;  -0     "�' (? -0     !�' (_9; - 0      _6? - 0    "�6-	
 0     "�6 7! "�( 7! T( 7! "�( 7! "�( 7! "�( 7! T( 7!"�( 7! "�(   "�"�� ##"��"�T"�"�_9;  -.     #' (? -.      #' (
#3 7!#*( 7! "�( 7! T( 7! "�( 7!#8(- #K 0   #A6- 0   #T6-	
 0     "�6 7!"�( 7! "�(   #^#c#h
 �F> 
  F; -0     #n6? -0     #{6
�F;  !�(
 F;  ! (
TF;  !T(
"�F;  !"�( "5#�!�#�#�-.    #�'('(SH; T'(_;  ,' ( SH; - 0    #�6' A? ��?  -0   #�6'A? ��  &  #�G;  ! #�(	  =L��+?��  n(G  #� �  ʤ�  &V �  d��f  &r�  �J-�  (	�  �T  (�
�  &��\  -�
�  �8��  /V h�qO  06  �P  0v
y  N��  3x?  0�=P  :h�  �-B�  ;�
�  �{�-  <�  �׊  <.� |Q=�  =b
  �-��  >N�  ����  ?B[ �^͢  G�
�  ���<  H�q  ����  I*	�  V��  I�	�  y���  J
	} ���  JJ
  
�Q  MV	  @%�w  M� �  �ك   N2!2  ��,;  N�!f  �gi�  O>	�  �t�  R�_ e@��  R�"  �#K|  R�� ��)�  S(
�  is�  Sr4 ��c  TL0 0�p�  UF v^x  U~� ��N�  U��   � >    #�� >    $7� >    $C  '/� >   $R� >   $b  $�  $�  %,  %@  %�  %�  &  &"  -�  .  .  .,  5�  6�  6�  7V  7�  8  8�  :�  :�  ;D  ;X  >�  B4  G�/ >   $�t >   $�� >   %� > 	  %c  %�  &C  Ir  I�  I�  I�  I�  I�� >   %w  %�  R�� >    &f� >   &�  ?�  J�	 >   &�	 >    &�  A�  B  M�  O	 >    &�	- >   &�  -�  Gk  Ia  I�  M�  N�  O	} >   '	� >    '	� >    '#	� >    ';	� >    'G
 >    '�
 >    '�
, >   '�  (�
> >    '�
T >    '�  >
y >    '�
� >    '�
� >    '�
� >    ('
� >    (;
� >    (G
� >   (i  J-[ >   (�  =0  >  C  C#q >    (�� >   )8  )�  *l  +�  ,>  ,�  -a  -�  3�  3�  48  4�  4�  4�  5J  5�  5�  6$  6n  6�  74  7�  7�  8`  8�  9  9L  9�  9�  :  :L� >   )c  )�  *�  +�  ,g  -� >   *  *�? >    -�� >   .R  .�  .�  ;  ;"  ;~  ;�  BW� >   .d  .�  R�� >   .x  /� >   .�  /  S >    .�  /+ >   .�  /FF >   .�� >   /zx >   /�� >   /�� >    /�  H6  N:� >   /�  <q� >   /�  He� >    /� >    /� >   0 >   0  G�  H�( >    0- >    0(7 >   0_q >    0�� >   0�  0�  <�� >    0�  N�� >   0�� >    1-  1�  1�  2?  2�  2�  3I� >   1A  1�  2  2U  2�  2�  3]� >   ;�  N  NY� >    ;�� >   ;�� >   <%� >   <�2 >   =` >   =� >    =u  SD� >   =�� >    =�4 >   >�D >   >�  ?  Oj  P  P3  R�� >   ?�  B�  J�  O)� >   ?�  B�  J�  MN4 >   ?�  @  @5  @i  @�  @�  A	  C�  D  Du  D�  J�  K	  K=  K}  K�  K�  L)  L]0 > 
  A6  Cb  C�  L�F >   A]  A�  A�  By  B�  B�  E  E%  EE  Ee  E�  E�  E�  E�  F�  F�  F�  G  G%  GE  L�  L�  M_ >   B  Fc  F  Pu  P�  P�  P�  P�  Q  Q)  QI  Q_  Qw  Q�  Q�  Q�  Q�  R  R  R5  Rw  R�  S�� >    B�� >   C  G�  Js  M?� >    C/0 > 
  D=� >    D�k >    G�v >    G� >   G�  H�i >   H$q >    HB  H[� >    H�  I:� >   H�� >    I-	- >   J   S\� >   JB � �    M�
� >   N  N�!F >    Nk � >    Nz!� >   OT!� >    O�"b >   Sh"� >   S�!� >   S�"� >   S�"� >   S�  T�# >   Tp# >    T#A >   T�#T >   T�#n >   U$#{ >   U4#� >   U�#� >    U�  U�      �  #�  #�  #��  #�  #�  #��  #�I  #��  #�  T\�  #�5  #��  #�  (�  :n  #�  O�  O�  R�  R�  $   -�  S !	  $  =  =�  >8  Ft  KP  M0  P�  R�8   $
  $  Dr  D�  Gh.  $  <�  FH  RZ9  $  <�  FT  RfD  $  A�  A�  B  R(N  $&  =�  I�a  $,  &�  'Vr  $2  &�  '�  ?l-   $\  $�  $�  %&  %�  &   5�  6�  6�  7P  7�  8  8|  B.  G��   $`N   $��   $��  %�   %   %*  %�  &�   %:  %�  &  :�  :�  ;>  ;R  >�9   %>�  %�  &��  %�  %�  &��   %�  %�  &�  '	   %��   &�  &  @�  K�  Q8  Q��   &  &X  M�  OFu   &\�   &t  (  (�  0�  <<  =j  >T  ?J  G�  H�  J  JP  M`  M�  N4  N��   &z  /d  JV�   &��   &��   &��   &��   &�  ?�  J�	6   &�	q  &�  'f	�   '	�  '\  '�	�d  'r  (�  )B  )H  )X  )`  )�  )�  )�  )�  *  *  *v  *|  *�  *�  *�  *�  *�  +  +*  +@  +x  +�  +�  +�  +�  ,"  ,F  ,L  ,\  ,d  ,�  ,�  ,�  -  -  -j  -p  -�  -�  3�  3�  4   4n  4�  4�  52  5l  5�  6
  6T  6�  7  7�  7�  8F  8�  8�  94  9p  9�  9�  :4  >�  >�  ?  Cn  C�  C�  D  DJ  D�  D�  E  E"  EB  Eb  E�  E�  E�  E�  F`  F|  F�  F�  F�  G  G"  GB  G�  Jp  NJ  P
  P0  PD  Pr  P�  Rt  R�	�  'x  ?�  @  @B  @v  @�  @�  A  AB  AZ  A�  A�  A�  Bv  B�  B�  C   Q�  Q�  Q�  Q�  Q�  R  R2	�  '~  J�  K  KJ  K�  K�  L  L6  Lj  L�  L�  L�  M
  M<  P�  P�  P�  P�  Q  Q&  QF  Q\  Qt
\   '�  -�  =�
l  '�  (
�
  (  0z  3z  <0  >P  ?F  G�  J  JL  N�?  (E  (K  (  M\
�  ("    (dS  (�  <T  Mf  M�  N�  O�i   (�  ?X�  (��  (��  (��  (��  (�  S~  TR  UJ�   )&�   )�  *Z  +r  ,  ,��)  *�  +  +~  ,(  ,�  /t  3�  3�  4&  4t  4�  4�  58  5r  5�  6  6Z  6�  7   7�  7�  8L  8�  9   9:  9v  9�  9�  ::  <"  <�  <�  <�  =�  =�  N  NP  N�  N�  N�  R�  +0  +F  0H  0P  0Z  R�  S   -J    -|V   -�g  -�o  -�w  -��  -�  -�q  -��  -�7  -�<  -��   -�  -�  .  .&�   -��   .!   .~   .*�   .b  .�  R��   .v  .�.   .�U  /XY  /Z  <�  <�^  /\  0�  =�  R�d  /^�  /`i   /x�   /��   /��   /��  /�  G�  HRT  0x�  0|@   0�  <B  =<  =p  >Z  ?P  G�  H�Z   0�g  0�  ;�  ;�  ;�  ;�  =�  >,  C�  C�  H�  H�  M�  P\  P�l   0�  :�  ;�  C�  H�  M�  P��   0�  0��   0�  1  1l  1�  2,  2z  2�  3(�E  1
  1*  1>  1h  1�  1�  1�  1�  1�  2(  2<  2R  2v  2�  2�  2�  2�  2�  3$  3F  3Z  3�  3�  3�  3�  4  4  4B  4H  4�  4�  4�  4�  5  5  5R  5X  5�  5�  5�  5�  6.  64  6v  6|  6�  6�  7>  7D  7�  7�  8  8  8j  8p  8�  8�  9  9   9V  9\  9�  9�  9�  9�  :  :   :V  :\�   3�  3�  4  4h  4�  4�  8�  9.  9j  9�  9�  :.   5,  5f  5�0   5�)  5�  6}   6N�   6��  6�  6�!   6�  6�  7�   7T�  7^  7xB   7�9  7�  7��   8�  8&  8>X   8�P  8�  8��  :jd  :l�  :p?  :r�  :x  :�  :�  :�  :�  :�  :�  ;0  ;�  ;�  ;�  ;�  <�   :~  ;,  =�  >0  C�  H�  P`�   :��   :��   :��   :�   :�q   :��   ;BJ   ;V�   ;�  ;��   ;��  <2  <J  <��  <4�  <6�  <8)   <�  <�   <�  <�  <�  H�  I  I  <�R   <�@   <�;   <�j   =|  =&  O�  PP  RL�   =,  >  G��   =D  F(�  =d�  =f�   =��  =��  >   >�  >>  CF  O�  >b  >�  D�  E|  F  >h  >�  D�  E�  O�Q
   >z  >~  C\  C`  C�  C�  C�  C�  C�  C�K   >�A   >�*   >�  >�  ?  E  E�  P  P*d   >�X  >�  >�  >�  ?L   >�  O�g   >�  ?  O�  P$u   ?  P�  ?D�  ?`  ?t  B�  Q��   ?�  ?�  @   @T  @�  @�  @�  J�  J�  K(  Kf  K�  K�  L  LH�   ?�  ?�  @$  @X  @�  @�  @�  A0  A4  J�  J�  K,  Kj  K�  K�  L  LL  L�  L��   ?�  J��   ?�  Q��   ?�  J�  P�  P�  Q�   ?�  @.  @b  @�  @�  A  C�  D  Dn  D�  K  K6  Kv  K�  K�  L"  LV�   ?�  K  P�  Q��   @
  K  P�  Q�!   @2  Q�   @>  KF  P�  Q�y   @f  Q�s   @r  K�  K�  Q
  Q"  Q��   @�  Q��   @�  K�  QB  Q��   @�  L&  QT  R�   @�  L2  QX  R   A   A  A�  Lf  Qp  R,@   A   CP  Cx  Lt%   A>  AV  B�  C�  E>  E�  L�  L�T   AR  A�  B�  B�  L�  L�  U`�   A�  Bj  F�  F�  F�  F�  G  G:  L�  U  U@Z   A�  A�  Bn  B�  L�  Mk   A�  R$�   B2�  B>  BT�   C  C<�   C   F �   Cj  D�  E��   C�  Ph�   C�  D  E^  E�  P>  Pl  P�K   D
  P��   D$�   D6  D:  D`  D��   DF  F�  F��   Dd  D��   D~  F\  F�  G  Rn�   D�  Fx  F�  G>  R�  D�  D�  Et   D�  F:  IT 
   D�  E  E:  EZ  E�  E�  E�  E�  U  UP"  F0  F>  GX  G`  RB*   FD  FP  RV  Rb-   FL  R^H   Fp  R��   G�  G�  HJ  H~  H��   G��  H  H  H �  H�  H�  I  I�   H�  IB�   H��  IJ  IX  I��   I^�   Il  I�  I��   Ip  I�   I|  I�  I��   I�  I�   I�  I�*   I�<   I�h  Jp  Jx   J(�  J^  Jj�   J�  P��   K:  P�    Kz  Q 7   K�  Q Q   K�  Q4 \   K�  Q< s   LZ  Ql �  MX  M�  N�  OB �  MZ  M�  N�  OD!   M�!   N!X   N�!\   N�!a   N�!�   O!�  O@  U�!�   OJ!�   OR!�  O^  Oh  Ot  O�!�   OdT  Ox  S�  T
  T2  T`  T�  Uj!�   O|!�   O�!�   O�  R�"
  O�  P "  R�"%  R�"5  S*  U�";  S,")  S0  S<"C   SP"o  St"u  Sv"z  Sx"�  Sz  TN"�  S|  TP   S�  TT  UZ"�  S�  T   TZ  T�  Uz"�  S�  T"�  S�  T"�  S�  T(  T^  T�"�  S�  Tb"�  S�"�  S�  Td"�  T:  T�"�  TD  T�#  TV#  TX#3   T�#*  T�#8  T�#K  T�#^  U#c  U#h  U
"�   Up#�  U�#�  U�#�  U�#�  U�  V
