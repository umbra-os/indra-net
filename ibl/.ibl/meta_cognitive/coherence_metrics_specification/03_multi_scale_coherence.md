# COHERENCE METRICS ATOM 03: MULTI-SCALE COHERENCE
**File, Module, and Space Level Coherence**

---

## Metadata

**Atom**: 03/05  
**Lines**: ~50  
**Focus**: Multi-scale coherence measurement (file → module → space)  
**Navigation**: ← 02_thresholds_atomization | → 04_adaptive_thresholds

---

## Multi-Scale Coherence

Coherence must be measured at multiple scales to ensure system health at all levels.

---

## File Level

```
FILE_COHERENCE(file) = RESONANCE_SCORE(file)

Checks:
- Is file too large?
- Is middle content losing salience?
- Are concepts too dispersed?
```

**Scope**: Individual file or atom  
**Frequency**: On file creation, modification, or periodic scan  
**Action**: Atomize if FILE_COHERENCE < 0.7

---

## Module Level

```
MODULE_COHERENCE(module) = avg(
  atom_resonance_scores,
  connection_strength,
  navigation_clarity
)

WHERE:
  connection_strength = avg(tag_completeness across atoms)
  navigation_clarity = presence_of_index AND breadcrumb_trails
```

**Components**:

### Atom Resonance Scores
- Average RESONANCE_SCORE across all atoms in module
- All atoms should maintain > 0.75 resonance
- Outliers indicate problematic atoms

### Connection Strength
- Tag completeness: Do atoms have proper #relates_to tags?
- Cross-references: Do atoms link to related atoms?
- Semantic relationships documented?

### Navigation Clarity
- Module index present? (00_module_index.md)
- Breadcrumb trails consistent?
- Reconstruction command provided?
- Navigation symbols used correctly?

**Scope**: Atomized module (collection of atoms)  
**Frequency**: After atomization, periodic review  
**Action**: Refactor if MODULE_COHERENCE < 0.75

---

## Space Level

```
SPACE_COHERENCE(space) = avg(
  module_coherence_scores,
  inter_module_connections,
  semantic_clustering
)

WHERE:
  inter_module_connections = cross-references between modules
  semantic_clustering = how well modules group by topic
```

**Components**:

### Module Coherence Scores
- Average MODULE_COHERENCE across all modules in space
- All modules should maintain > 0.75 coherence
- Outliers indicate problematic modules

### Inter-Module Connections
- Cross-references between modules
- Shared tags and semantic relationships
- Integration points documented

### Semantic Clustering
- Do related modules group together?
- Are there clear topic boundaries?
- Is navigation between related modules clear?

**Scope**: Entire knowledge space (.ibl directory)  
**Frequency**: Periodic system health check  
**Action**: Reorganize if SPACE_COHERENCE < 0.75

---

## Coherence Cascade

**Hierarchical relationship**:
```
SPACE_COHERENCE
  ↓ depends on
MODULE_COHERENCE
  ↓ depends on
FILE_COHERENCE
  ↓ depends on
RESONANCE_SCORE
```

**Propagation**:
- Poor file coherence → degrades module coherence
- Poor module coherence → degrades space coherence
- Fix at lowest level first (bottom-up repair)

---

## Health Monitoring

**System health indicators**:
- All files > 0.75 resonance: Healthy
- All modules > 0.75 coherence: Healthy
- Space > 0.75 coherence: Healthy

**Warning signs**:
- Multiple files < 0.7 resonance: Atomization backlog
- Module < 0.7 coherence: Refactoring needed
- Space < 0.7 coherence: Systemic reorganization needed

---

## Tags

#multi_scale_coherence #file_level #module_level #space_level #hierarchical_health

#relates_to:resonance_score,module_coherence,system_health

#breadcrumb:system→meta_cognitive→coherence_metrics→03_multi_scale_coherence
