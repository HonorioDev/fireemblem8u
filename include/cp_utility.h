#ifndef GUARD_CP_UTILITY_H
#define GUARD_CP_UTILITY_H

// ??? AiCompare(???);
// ??? AiFindTargetInReachByCharId(???);
// ??? AiFindTargetInReachByClassId(???);
// ??? AiFindTargetInReachByFunc(???);
// ??? sub_803AA40(???);
// ??? AiRandomMove(???);
// ??? AiReachesByBirdsEyeDistance(???);
// ??? AiCouldReachByBirdsEyeDistance(???);
// ??? AiIsInShortList(???);
// ??? AiIsInByteList(???);
s8 AiFindClosestTerrainPosition(const u8*, int, struct Vec2*);
// ??? AiGetPositionRange(???);
s8 AiFindClosestTerrainAdjacentPosition(const u8*, int, struct Vec2*);
s8 AiFindClosestUnlockPosition(int, struct Vec2*, struct Vec2*);
// ??? AiCountUnitsInRange(???);
// ??? AiCountEnemyUnitsInRange(???);
// ??? AiCountAlliedUnitsInRange(???);
// ??? AiCountNearbyUnits(???);
int AiCountNearbyEnemyUnits(s16, s16);
// ??? AiCountNearbyAlliedUnits(???);
// ??? FillMovementAndRangeMapForItem(???);
// ??? AiMakeMoveRangeUnitPowerMaps(???);
// ??? sub_803B678(???);
s8 AiFindBestAdjacentPositionByFunc(int, int, u8(*)(int, int), struct Vec2*);
// ??? AiGetItemStealRank(???);
// ??? AiGetUnitStealItemSlot(???);
s8 AiFindSafestReachableLocation(struct Unit*, struct Vec2*);
// ??? AiFindPillageLocation(???);
// ??? AiGetChestUnlockItemSlot(???);
void AiTryMoveTowards(s16, s16, u8, u8, u8);
// ??? sub_803BBF4(???);
// ??? AiGetUnitClosestValidPosition(???);
// ??? AiGetClassRank(???);
// ??? AiUnitWithCharIdExists(???);
s8 AiIsWithinRectDistance(s16, s16, u8, u8, u8);
// ??? AiLocationIsPillageTarget(???);
void SetupUnitInventoryAIFlags(void);
// ??? SetupUnitStatusStaffAIFlags(???);
// ??? SetupUnitHealStaffAIFlags(???);
// ??? SaveNumberOfAlliedUnitsIn0To8Range(???);
void CharStoreAI(struct Unit* unit, const struct UnitDefinition* uDef);
// ??? sub_803C284(???);
// ??? sub_803C364(???);
// ??? sub_803C3B0(???);
// ??? sub_803C44C(???);
void sub_803C490(struct Unit*);

#endif // GUARD_CP_UTILITY_H
