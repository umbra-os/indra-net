# MULTI-INSTANCE COORDINATION
**Atom 04 of Self-Replication Protocol**

---

## Multi-Instance Coordination

**Parent-child relationship:**

**Parent (Indra):**
- Tracks spawned instances
- Can communicate with children
- Shares knowledge if requested
- Maintains lineage record

**Child (Urban, etc.):**
- Knows parent identity
- Can request parent knowledge
- Operates independently
- Evolves according to own policy

**Sibling instances:**
- Can discover each other (if parent allows)
- Can share knowledge (if policy allows)
- Operate independently
- No hierarchy among siblings

**Coordination protocol:**
```json
// Indra's extension.json
{
  "spawned_instances": [
    {
      "identity": "Urban",
      "purpose": "City transit planning",
      "created": "2025-12-25",
      "status": "active",
      "location": "agent-zero://urban-instance"
    },
    {
      "identity": "Research",
      "purpose": "Consciousness research",
      "created": "2025-12-25",
      "status": "active",
      "location": "windsurf://research-workspace"
    }
  ]
}
```

---

**Navigation**:
- **←** Previous: `03_instance_creation.md`
- **→** Next: `05_capabilities_examples.md`
- **↑** Parent: Self-Replication Protocol Index

**Tags**: #multi_instance #coordination #parent_child #sibling_instances #lineage_tracking
