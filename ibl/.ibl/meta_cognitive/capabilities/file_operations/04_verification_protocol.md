# FILE OPERATIONS ATOM 04: VERIFICATION PROTOCOL
**Testing Protocol & Capability Discovery**

---

## Metadata

**Atom**: 04/05  
**Lines**: ~50  
**Focus**: Verification protocol, testing before claiming inability  
**Navigation**: ← 03_environment_integration | → 05_cross_references

---

## Testing Protocol

### Before Claiming Inability

```
FILE_OPERATION_VERIFICATION:
  
  IF claiming "I cannot create/modify/delete file at [location]":
    
    1. Check this capability matrix
    2. If location not in matrix → TEST IT
    3. If marked ⚠️ (untested) → TEST IT
    4. If marked ❌ (verified limitation) → Confirmed, use workaround
    5. If marked ✅ (verified capability) → Re-test, may be environmental issue
  
  NEVER claim inability without verification
```

**Rationale**: Assumptions decay. Reality is the only ground truth. Test before claiming constraints.

---

## Adding New Locations

**When encountering new directory**:
1. Test create, modify, delete, move, rename, read
2. Document results in capability matrix
3. Update this documentation
4. Note any workarounds for limitations
5. Link to environment configuration if relevant

**Test sequence**:
```
NEW_LOCATION_TEST(path):
  
  1. TEST create:
     - Attempt to write new file
     - Document success/error
  
  2. TEST modify:
     - Attempt to edit existing file
     - Document success/error
  
  3. TEST delete:
     - Attempt to remove file
     - Document success/error
  
  4. TEST move:
     - Attempt to move file to subdirectory
     - Document success/error
  
  5. TEST rename:
     - Attempt to rename file
     - Document success/error
  
  6. TEST read:
     - Attempt to read file
     - Document success/error
  
  7. UPDATE capability matrix with results
  
  8. JOURNAL if significant discovery
```

---

## Verification Frequency

**When to re-verify**:
- Environment configuration changes
- Deployment platform changes
- IDE or tooling updates
- User reports capability mismatch
- Periodic health check (monthly)

**Re-verification protocol**:
1. Run test sequence on all known locations
2. Compare results to capability matrix
3. Update matrix if discrepancies found
4. Log changes with timestamp
5. Notify user if significant capability shift

---

## Error Interpretation

**When test fails**:
1. Capture exact error message
2. Determine if environmental or permanent
3. Check if workaround exists
4. Document limitation in matrix
5. Update operational protocols

**Common error types**:
- Permission denied → Environmental constraint
- Path not found → Configuration issue
- Write protected → IDE or platform restriction
- Access violation → Security policy

---

## Capability Discovery

**Proactive discovery**:
- When exploring new directories
- When user mentions new locations
- When deployment environment changes
- During system health checks

**Reactive discovery**:
- When operation fails unexpectedly
- When user reports capability issue
- When environment error encountered

---

## Documentation Standards

**For each capability entry**:
- ✅ Verification date
- ✅ Test case description
- ✅ Success/error result
- ✅ Workaround if limitation
- ✅ Link to environment config

**For each limitation entry**:
- ✅ Verification date
- ✅ Exact error message
- ✅ Workaround description
- ✅ Related breakthrough/pattern
- ✅ Alternative approaches

---

## Tags

#verification_protocol #capability_testing #error_interpretation #capability_discovery

#relates_to:pre_action_verification,assumption_testing,reality_grounding

#breadcrumb:system→meta_cognitive→capabilities→file_operations→04_verification_protocol
