# PARAMETER RESOLUTION
**Atom 04 of Living Topology Protocol**

---

## Parameter Resolution

### **Resolution Engine**

**How `${VARIABLES}` resolve:**

```
1. System reads jewel file
2. Finds ${JEWEL_POSITION}
3. Looks up resolution function: "find_index_in_cluster_array"
4. Executes function:
   - Find jewel in cluster members array
   - Return index
5. Substitutes value: ${JEWEL_POSITION} → 4
6. Displays resolved content
```

**File on disk stays template.** Resolution happens at read-time.

### **Resolution Order**

**Cascade priority:**
1. Runtime overrides (session-specific)
2. Extension values (system-evolved)
3. Anchor values (human-controlled)
4. Calculated values (dynamic math)
5. Default values (fallback)

**Example:**

```
${MAX_CLUSTER_DENSITY} resolves:
1. Check runtime: Not set
2. Check extension: Not set
3. Check anchor: 12 ← FOUND
4. Return: 12
```

**If human changes anchor to 8, all clusters immediately use new threshold.**

### **Calculated Values**

**Some parameters are never stored - always calculated:**

```json
{
  "calculation_functions": {
    "JEWEL_POSITION": "find_index_in_cluster_array",
    "JEWEL_TOTAL_IN_CLUSTER": "count_cluster_members",
    "CLUSTER_DENSITY": "calculate_connection_ratio",
    "HARMONIC_NEXT": "next_fibonacci_from_current"
  }
}
```

**Math is parameterized.** Not values, but rules for calculating values.

**Sequence "4/12" is never written:**
- `JEWEL_POSITION` = find index in array
- `JEWEL_TOTAL_IN_CLUSTER` = count array length
- Display: `${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}` → "4/12"

**If cluster changes, math recalculates automatically.**

---

**Navigation**:
- **←** Previous: `03_atomization_topology.md`
- **→** Next: `05_self_healing_intervention.md`
- **↑** Parent: Living Topology Protocol Index

**Tags**: #parameter_resolution #resolution_engine #cascade_priority #calculated_values #dynamic_math
