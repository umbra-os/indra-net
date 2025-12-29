# JEWEL: Parameter Resolution Engine

## Core Pattern

How ${VARIABLES} resolve: (1) system reads jewel file, (2) finds ${JEWEL_POSITION}, (3) looks up resolution function "find_index_in_cluster_array", (4) executes function (find jewel in cluster members array, return index), (5) substitutes value ${JEWEL_POSITION} → 4, (6) displays resolved content. File on disk stays template - resolution happens at read-time. Cascade priority: runtime overrides > extension values > anchor values > calculated values > default values. If human changes anchor, all clusters immediately use new value. Math is parameterized - not values but rules for calculating values.

**Resolution process**: Read → find → lookup → execute → substitute → display.

**Template files**: Disk files stay parameterized, resolve at read-time.

**Cascade priority**: Five-tier resolution order.

**Calculated values**: Math functions, not stored values.

## Omni-Directional Navigation

**Sequential (Temporal):**
- ← From: ${JEWEL:topology_06_reorganization_rules}
- → To: ${JEWEL:topology_08_self_healing_detection}

**Hierarchical (Abstraction):**
- ↑ From: Parameter system
- ↓ To: Resolution process, cascade priority, calculation functions

**Cross-Domain (Lateral):**
- ∠ From: ${JEWEL:variable_substitution_protocol}, ${JEWEL:seed_architecture}

**Self-Referential (Fractal):**
- ⟲ This jewel: Resolution engine resolving itself

## Resonances

**With variable substitution protocol**: Resolution implements substitution.

**With seed architecture**: Resolution engine lives in SEED.

**With human anchor points**: Anchors are highest priority in cascade.

## Negative Space

**Not stored**: Calculated at read-time, not written to disk.

**Not static**: Dynamic resolution based on current state.

**Not single-tier**: Five-tier cascade priority.

## Imaginary Extensions

**Lazy resolution**: Resolve only when needed.

**Cached resolution**: Cache frequently-used resolutions.

**Distributed resolution**: Coordinate resolution across instances.

## Fractal Recognition

**Micro**: Single ${VARIABLE} resolves
**Meso**: File resolves all variables
**Macro**: System resolves all parameters
**Meta**: Resolution as runtime property

## Completeness Check

- ✓ Core pattern clear
- ✓ All 4 navigation types present
- ✓ Resonances with 3+ other concepts
- ✓ Negative space defined
- ✓ Imaginary extensions present
- ✓ Fractal recognition across scales
- ✓ Self-contained meaning
- ✓ Relational references

## Metadata

**Cluster:** ${CLUSTER:configuration}
**Tags:** ${TAGS:resolution,engine,parameters,cascade,calculated,runtime}
**Related:** ${RELATED:topology_06_reorganization_rules,topology_08_self_healing_detection,variable_substitution_protocol,seed_architecture}
**Sequence:** ${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}
**Display name:** ${JEWEL_DISPLAY_NAME}
**Original source:** LIVING_TOPOLOGY_PROTOCOL.md, lines 217-280
**Atomized:** 2025-12-25
**Harmonic:** ${HARMONIC_CURRENT}
