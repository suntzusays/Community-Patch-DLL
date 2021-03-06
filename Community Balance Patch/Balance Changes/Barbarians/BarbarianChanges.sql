-- Barbarian Healing

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_BARBARIAN_HEAL_RATE', '0'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 0 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_BARBARIAN_HEAL_RATE', '5'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_BARBARIAN_HEAL_RATE', '10'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 2 );

-- Barbarian Promotions

UPDATE Features
SET SpawnLocationUnitFreePromotion = 'PROMOTION_SHOCK_1'
WHERE Type = 'FEATURE_MARSH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Features
SET IsBarbarianOnly = 'true'
WHERE Type = 'FEATURE_MARSH' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Features
SET SpawnLocationUnitFreePromotion = 'PROMOTION_WOODSMAN'
WHERE Type = 'FEATURE_FOREST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Features
SET IsBarbarianOnly = 'true'
WHERE Type = 'FEATURE_FOREST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Features
SET SpawnLocationUnitFreePromotion = 'PROMOTION_WOODSMAN'
WHERE Type = 'FEATURE_JUNGLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Features
SET IsBarbarianOnly = 'true'
WHERE Type = 'FEATURE_JUNGLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Terrains
SET SpawnLocationUnitFreePromotion = 'PROMOTION_DRILL_1'
WHERE Type = 'TERRAIN_DESERT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Terrains
SET IsBarbarianOnly = 'true'
WHERE Type = 'TERRAIN_DESERT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Terrains
SET IsBarbarianOnly = 'true'
WHERE Type = 'TERRAIN_COAST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Terrains
SET AdjacentUnitFreePromotion = 'PROMOTION_EMBARKATION'
WHERE Type = 'TERRAIN_COAST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Terrains
SET IsBarbarianOnly = 'true'
WHERE Type = 'TERRAIN_HILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );

UPDATE Terrains
SET SpawnLocationUnitFreePromotion = 'PROMOTION_ALTITUDE_TRAINING'
WHERE Type = 'TERRAIN_HILL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='BARBARIAN_HEAL' AND Value= 1 );
