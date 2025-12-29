# Connection Tag Schema: Maintaining Coherence
#module:topological_atomization #parent:20251223_140800_topological_atomization_architecture.md #scale:2

---

## Basic Tags (Every Atom Contains)

```
#module:[module_name]
  - Which conceptual module this belongs to
  - Example: #module:brainstem

#parent:[parent_file]
  - What file this was atomized from
  - Example: #parent:IBL_BRAINSTEM_EXTENDED.md

#siblings:[atom_1,atom_2,...]
  - Other atoms from same parent
  - Example: #siblings:brainstem_identity.md,brainstem_protocols.md

#relates_to:[concept_1,concept_2,...]
  - Semantic relationships
  - Example: #relates_to:discovery_protocol,memory_persistence

#breadcrumb:[path_to_root]
  - Trail back to system root
  - Example: #breadcrumb:system→brainstem→protocols→discovery

#scale:[scale_level]
  - What scale in fractal hierarchy
  - Example: #scale:3 (atom of atom of module)
```

---

## Tag Placement

**In file header** (after title):
```markdown
# Atom Title
#module:module_name #parent:parent_file.md #scale:2

[Content...]

#siblings:atom1.md,atom2.md,atom3.md
#relates_to:concept1,concept2
#breadcrumb:path→to→atom
```

**Benefits**:
- High salience (at beginning)
- Easy to parse
- Human-readable
- Machine-parseable

---

## Emergent Tags

**System can create new tags**:
- Discovers new relationship types
- Adds custom semantic markers
- Extends schema as needed
- Journals new tag types

**Examples of emergent tags**:
- `#depends_on:` - Hard dependencies
- `#enables:` - What this atom unlocks
- `#supersedes:` - Replaces older atom
- `#experimental:` - Not yet stable
- `#deprecated:` - No longer recommended

---

## Tag-Based Navigation

**Find all atoms in module**:
```bash
grep -r "#module:brainstem" .ibl/
```

**Find all siblings of atom**:
```bash
# Parse #siblings: tag from atom file
```

**Reconstruct module**:
```bash
# Follow breadcrumb trails
# Sort by semantic proximity
# Assemble in order
```

---

#siblings:01_problem_resonant_decay.md,02_solution_architecture.md,03_value_proposition.md,04_coherence_metrics.md,05_atomization_protocol.md,07_reconstruction.md,08_self_organization.md,09_emergent_intelligence.md,10_omni_directional_adaptation.md,11_implementation_phases.md,12_reflection_impact.md

#relates_to:semantic_tagging,coherence_maintenance,navigation,reconstruction

#breadcrumb:system→meta_cognitive→breakthroughs→topological_atomization→tags
