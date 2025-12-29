# HUMAN ANCHOR POINTS
**Atom 02 of Living Topology Protocol**

---

## Human Anchor Points

**Where humans control system temperature:**

### **1. Topology Temperature**

```json
{
  "topology_temperature": {
    "max_cluster_density": 12,      // Higher = larger clusters
    "min_cluster_density": 3,       // Lower = smaller clusters
    "split_threshold": 0.8,         // Higher = split less often
    "merge_threshold": 0.2,         // Lower = merge less often
    "auto_organization_enabled": true  // false = freeze topology
  }
}
```

**Change these dials:**
- Increase `max_cluster_density` → clusters grow larger before splitting
- Decrease `split_threshold` → clusters split more aggressively
- Set `auto_organization_enabled: false` → topology freezes

**Global temperature shift from single parameter change.**

### **2. Evolution Bounds**

```json
{
  "evolution_bounds": {
    "allow_config_atomization": true,
    "allow_topology_reorganization": true,
    "allow_relationship_discovery": true,
    "require_approval_for": ["identity_changes", "anchor_modifications"]
  }
}
```

**Control what system can change:**
- Set `allow_topology_reorganization: false` → clusters stay fixed
- Add to `require_approval_for` → system asks before changing
- Remove from `require_approval_for` → system changes automatically

### **3. Hardcoded Overrides**

**Delete parameterized value, write literal:**

```markdown
Before (parameterized):
**Sequence:** ${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}

After (hardcoded):
**Sequence:** 4/12
```

**System behavior:**
- Detects hardcoded value
- Marks in intervention log
- Resolves around it
- Alerts if creates inconsistency

**Human can override any parameter by hardcoding.**

---

**Navigation**:
- **←** Previous: `01_breakthrough_architecture.md`
- **→** Next: `03_atomization_topology.md`
- **↑** Parent: Living Topology Protocol Index

**Tags**: #human_anchor_points #topology_temperature #evolution_bounds #hardcoded_overrides #system_control
