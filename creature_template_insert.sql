-- Darth Vader
DELETE FROM `creature_template` WHERE (`entry` = 9500644);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(9500644, 0, 0, 0, 0, 0, 'Darth Vader', 'Empire', NULL, 0, 85, 85, 0, 168, 0, 1.5, 1.5, 1, 1, 20, 1.9, 3, 0, 50.5, 1000, 2000, 1, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 7, 64, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 300, 50, 1, 1, 0, 0, 1, 650854399, 0, 1073741824, '', 0);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 9500644);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(9500644, 0, 34083, 1.9, 1, 12340);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 9500644);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(9500644, 0, 30014, 0),
(9500644, 1, 45270, 0),
(9500644, 2, 59154, 0),
(9500644, 3, 28167, 0),
(9500644, 4, 30485, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 9500644);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(9500644, 1, 1728, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 9500644);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(10001064, 9500644, 0, 0, 805, 0, 0, 1, 1, 1, 12831.3, 14946.4, 6.31482, 1.30042, 300, 0, 0, 3050532864, 222500, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9500644;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 9500644);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9500644, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 6000, 10000, 0, 0, 11, 30014, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Darth Vader - In Combat - Cast \'Cleave\''),
(9500644, 0, 2, 0, 0, 0, 100, 0, 7000, 10000, 0, 0, 0, 0, 11, 45270, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Darth Vader - In Combat - Cast \'Shadowfury\''),
(9500644, 0, 3, 0, 0, 0, 100, 0, 13000, 17000, 9000, 15000, 0, 0, 11, 59154, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darth Vader - In Combat - Cast \'Thunderstorm\''),
(9500644, 0, 4, 0, 0, 0, 100, 0, 7000, 16000, 15000, 21000, 0, 0, 11, 28167, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Darth Vader - In Combat - Cast \'Chain Lightning\''),
(9500644, 0, 5, 0, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 30485, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Darth Vader - Between 0-25% Health - Cast \'Enrage\' (No Repeat)');


-- Kylo Ren
DELETE FROM `creature_template` WHERE (`entry` = 9500639);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(9500639, 0, 0, 0, 0, 0, 'Kylo Ren', 'Sith', NULL, 0, 85, 85, 0, 14, 0, 1.5, 1.5, 1, 1, 20, 1.71, 3, 0, 12.5, 1200, 2000, 1, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 64, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 115, 20, 1, 1, 0, 0, 1, 650854399, 0, 1073741824, '', 0);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 9500639);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(9500639, 0, 34079, 1.7, 1, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 9500639);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(9500639, 1, 1728, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 9500639);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(10001083, 9500639, 0, 0, 805, 0, 0, 1, 1, 1, 12784.8, 15030, 36.5165, 0.0500498, 300, 0, 0, 563155, 89000, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9500639;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 9500639);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9500639, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17715, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kylo Ren - On Aggro - Cast \'Consuming Shadows\''),
(9500639, 0, 1, 0, 0, 0, 100, 0, 12000, 16000, 12000, 16000, 0, 0, 11, 72460, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Kylo Ren - In Combat - Cast \'Choking Gas\''),
(9500639, 0, 2, 0, 9, 0, 100, 0, 15000, 20000, 15000, 20000, 5, 30, 11, 39039, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Kylo Ren - Within 5-30 Range - Cast \'Force Blast\''),
(9500639, 0, 3, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 34439, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Kylo Ren - Between 0-50% Health - Cast \'Unstable Affliction\' (No Repeat)'),
(9500639, 0, 4, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 52400, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kylo Ren - Between 0-20% Health - Cast \'Ferocious Enrage\' (No Repeat)'),
(9500639, 0, 5, 0, 0, 0, 100, 0, 45000, 55000, 45000, 55000, 0, 0, 11, 48292, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Kylo Ren - In Combat - Cast \'Dark Slash\'');

-- Stormtrooper
DELETE FROM `creature_template` WHERE (`entry` = 9500643);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(9500643, 0, 0, 0, 0, 0, 'Stormtrooper', 'Empire', NULL, 0, 83, 83, 0, 54, 0, 1.5, 1.5, 1, 1, 20, 1.3, 1, 0, 25, 1000, 1000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 94, 357, 'SmartAI', 1, 1, 110, 2, 1, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 9500643);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(9500643, 0, 34082, 1.3, 1, 12340);

DELETE FROM `creature_template_resistance` WHERE (`CreatureID` = 9500643);
INSERT INTO `creature_template_resistance` (`CreatureID`, `School`, `Resistance`, `VerifiedBuild`) VALUES
(9500643, 6, 100, 12340);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 9500643);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(9500643, 1, 45972, 0, 28286, 0);

DELETE FROM `creature` WHERE (`id1` = 9500643);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(10001056, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12833.1, 15135.6, 46.5824, 0.945014, 300, 0, 0, 927520, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001057, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12840.7, 15136.5, 46.5824, 2.24799, 300, 0, 0, 927520, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001058, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12833.8, 15114.7, 46.5824, 4.09226, 300, 3, 0, 927520, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001059, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12836.3, 15104.2, 46.1885, 5.43152, 300, 4, 0, 927520, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001060, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12837.2, 15093.9, 46.1888, 3.85146, 300, 5, 0, 927520, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001061, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12841.1, 15104.7, 46.5834, 3.0326, 300, 0, 0, 927520, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001062, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12819.1, 15113.9, 45.7936, 4.54182, 300, 0, 0, 927520, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001063, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12818.8, 15083, 45.7934, 1.56514, 300, 0, 0, 927520, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001067, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12824.4, 14941.2, 6.31482, 1.16627, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001068, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12835.3, 14939.9, 6.31482, 1.51923, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001069, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12839.6, 14939.5, 6.31482, 1.3466, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001070, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12845.3, 14939.3, 6.31482, 1.3477, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001071, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12827.8, 14940.8, 6.31482, 1.41367, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001072, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12821.1, 14941.6, 6.31482, 1.16187, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001073, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12807.5, 15029.6, 36.1213, 1.44231, 300, 5, 0, 637670, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001074, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12812, 15055.9, 37.7005, 1.32202, 300, 5, 0, 637670, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001076, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12800, 15124, 36.1213, 0.0355887, 300, 7, 0, 637670, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001077, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12854.5, 15175.9, 49.9391, 1.64055, 300, 9, 0, 637670, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(10001078, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12847.8, 15096.6, 46.5833, 6.27087, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(10001079, 9500643, 0, 0, 805, 0, 0, 1, 1, 1, 12847.7, 15104.9, 46.5833, 6.06416, 300, 0, 0, 637670, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9500643;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 9500643);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9500643, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 46982, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - On Aggro - Cast \'Lightning Gun Shot\''),
(9500643, 0, 1, 0, 0, 0, 100, 0, 2300, 5000, 2300, 5000, 0, 0, 11, 46982, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - In Combat - Cast \'Lightning Gun Shot\''),
(9500643, 0, 2, 0, 0, 0, 100, 0, 10000, 15000, 12000, 18000, 0, 0, 11, 52778, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - In Combat - Cast \'Welding Beam\''),
(9500643, 0, 3, 0, 0, 0, 100, 0, 20000, 25000, 25000, 30000, 0, 0, 11, 7896, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - In Combat - Cast \'Exploding Shot\''),
(9500643, 0, 4, 0, 0, 0, 100, 0, 25000, 30000, 30000, 35000, 0, 0, 11, 54466, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - In Combat - Cast \'Saronite Grenade\''),
(9500643, 0, 5, 0, 0, 0, 100, 0, 30000, 35000, 35000, 40000, 0, 0, 11, 62645, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - In Combat - Cast \'Shock Grenade\''),
(9500643, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stormtrooper - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Boba Fett
DELETE FROM `creature_template` WHERE (`entry` = 9500637);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(9500637, 0, 0, 0, 0, 0, 'Boba Fett', 'Bounty Hunter', NULL, 0, 85, 85, 0, 168, 0, 1.5, 1.5, 1, 1, 20, 1.5, 3, 0, 50.5, 1000, 2000, 1, 1, 2, 0, 0, 1, 0, 0, 0, 0, 0, 1, 68, 0, 0, 0, 0, 0, 0, 0, 'SmartAI', 1, 1, 150, 50, 1, 1, 0, 0, 1, 650854399, 0, 1073741824, '', 0);

DELETE FROM `creature_template_model` WHERE (`CreatureID` = 9500637);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(9500637, 0, 34077, 1.5, 1, 0);

DELETE FROM `creature_template_spell` WHERE (`CreatureID` = 9500637);
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES
(9500637, 0, 67985, 0),
(9500637, 1, 35107, 0),
(9500637, 2, 7978, 0),
(9500637, 3, 45467, 0),
(9500637, 4, 66451, 0),
(9500637, 5, 59737, 0),
(9500637, 6, 42705, 0);

DELETE FROM `creature_equip_template` WHERE (`CreatureID` = 9500637);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(9500637, 1, 29949, 0, 0, 0);

DELETE FROM `creature` WHERE (`id1` = 9500637);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(10001082, 9500637, 0, 0, 805, 0, 0, 1, 1, 1, 12867.7, 15100.6, 46.5824, 3.04759, 300, 0, 0, 734550, 222500, 0, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 9500637;

DELETE FROM `smart_scripts` WHERE (`source_type` = 0 AND `entryorguid` = 9500637);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(9500637, 0, 0, 0, 4, 0, 100, 0, 6000, 9000, 6000, 9000, 0, 0, 11, 67985, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - On Aggro - Cast \'Explosive Shot\''),
(9500637, 0, 1, 0, 0, 0, 100, 0, 5000, 13000, 15000, 18000, 0, 0, 11, 35107, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - In Combat - Cast \'Electrified Net\''),
(9500637, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 15000, 18000, 0, 0, 11, 7978, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - In Combat - Cast \'Throw Dynamite\''),
(9500637, 0, 3, 0, 0, 0, 100, 0, 13000, 18000, 18000, 21000, 0, 0, 11, 45467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - In Combat - Cast \'Flamethrower\''),
(9500637, 0, 4, 0, 9, 0, 100, 0, 20000, 24000, 25000, 30000, 5, 30, 11, 66541, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - Within 5-30 Range - Cast \'Incendiary Rocket\''),
(9500637, 0, 5, 0, 0, 0, 100, 0, 20000, 30000, 60000, 60000, 0, 0, 11, 59147, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - In Combat - Cast \'Impact Multi-Shot\''),
(9500637, 0, 6, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 59737, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - Between 0-50% Health - Cast \'Double Speed\' (No Repeat)'),
(9500637, 0, 7, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 42705, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Boba Fett - Between 0-20% Health - Cast \'Enrage\' (No Repeat)');
