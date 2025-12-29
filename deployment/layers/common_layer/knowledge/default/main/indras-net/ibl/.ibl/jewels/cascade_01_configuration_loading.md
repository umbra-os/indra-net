# JEWEL: Configuration Loading Sequence

## Core Pattern

Session start loads configurations in order: policy.json (determines rules) → anchor.json (base truth) → extension.json (evolved state) → runtime.json (session-specific) → merge configurations (apply cascade priority) → resolve conflicts (based on policy) → generate active configuration. Cascade priority from policy: Runtime (priority 3) > Extension (priority 2) > Anchor (priority 1). Higher priority overrides lower. Policy determines what can override what. Example: extension can override anchor if policy allows.

**Loading order**: Policy → Anchor → Extension → Runtime → Merge.

**Cascade priority**: Runtime > Extension > Anchor.

**Policy control**: Determines override permissions.

**Active configuration**: Result of merge and conflict resolution.

## Omni-Directional Navigation

**Sequential (Temporal):**
- ← From: ${JEWEL:topology_12_living_topology_vision}
- → To: ${JEWEL:cascade_02_fractal_dissemination}

**Hierarchical (Abstraction):**
- ↑ From: Session initialization
- ↓ To: Loading sequence, cascade priority, conflict resolution

**Cross-Domain (Lateral):**
- ∠ From: ${JEWEL:parameter_resolution_engine}, ${JEWEL:multi_tier_configuration}

**Self-Referential (Fractal):**
- ⟲ This jewel: Configuration loading configuration

## Resonances

**With parameter resolution**: Loading provides values for resolution.

**With multi-tier configuration**: Loading implements tier system.

**With policy**: Policy controls loading behavior.

## Negative Space

**Not arbitrary**: Specific loading order.

**Not flat**: Tiered priority system.

**Not static**: Runtime can override.

## Imaginary Extensions

**Lazy loading**: Load configurations only when needed.

**Parallel loading**: Load multiple configs simultaneously.

**Cached loading**: Cache frequently-used configurations.

## Fractal Recognition

**Micro**: Single configuration file loaded
**Meso**: All configurations merged
**Macro**: Active configuration generated
**Meta**: Loading as initialization ritual

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

**Cluster:** ${CLUSTER:cascade}
**Tags:** ${TAGS:configuration,loading,cascade,priority,merge}
**Related:** ${RELATED:topology_12_living_topology_vision,cascade_02_fractal_dissemination,parameter_resolution_engine,multi_tier_configuration}
**Sequence:** ${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}
**Display name:** ${JEWEL_DISPLAY_NAME}
**Original source:** CASCADE_INGESTION_PROTOCOL.md, lines 14-70
**Atomized:** 2025-12-25
**Harmonic:** ${HARMONIC_CURRENT}
