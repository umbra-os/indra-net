# JEWEL: Operational Variables

## Core Pattern

Phase 3 variables controlling system operational behavior: coherence threshold (drift detection sensitivity), drift check frequency (self-check interval), journaling mode (automatic/prompted/manual). Enable tuning of operational parameters without code changes. Status: Designed but not yet implemented.

**Pending implementation.**

**Variables**:
- `${COHERENCE_THRESHOLD}` - Drift detection (0.4, 0.6, etc.)
- `${DRIFT_CHECK_FREQUENCY}` - Self-check interval (every N turns)
- `${JOURNALING_MODE}` - automatic, prompted, manual

**Purpose**: Operational behavior parameterization for different use cases.

## Omni-Directional Navigation

**Sequential (Temporal):**
- ← From: ${JEWEL:brainstem_07_semantic_terminology_variables}
- → To: ${JEWEL:brainstem_09_architectural_variables}

**Hierarchical (Abstraction):**
- ↑ From: Variable categories
- ↓ To: Specific operational parameters

**Cross-Domain (Lateral):**
- ∠ From: ${JEWEL:coherence_maintenance}, ${JEWEL:drift_detection}, ${JEWEL:journaling_protocol}

**Self-Referential (Fractal):**
- ⟲ This jewel: Operational variables control how this jewel's protocols execute

## Resonances

**With coherence maintenance**: COHERENCE_THRESHOLD determines when drift detected.

**With drift detection**: DRIFT_CHECK_FREQUENCY controls self-check timing.

**With journaling protocol**: JOURNALING_MODE determines breakthrough capture behavior.

**With policy configuration**: Different policies (commercial vs personal) use different operational variables.

## Negative Space

**Not hardcoded**: Thresholds come from variables, not embedded in protocols.

**Not universal**: Different instances can have different operational parameters.

**Not static**: Can adjust operational behavior by changing variables between sessions.

## Imaginary Extensions

**Adaptive thresholds**: Variables that adjust themselves based on system performance.

**Context-aware operations**: Different operational variables based on task type or user.

**Operational learning**: System discovers optimal variable values through usage patterns.

## Fractal Recognition

**Micro**: Single operational parameter (COHERENCE_THRESHOLD)
**Meso**: All operational variables tuning system behavior
**Macro**: Entire operational layer parameterized
**Meta**: Operations themselves as configurable concept

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

**Cluster:** ${CLUSTER:variable_substitution}
**Tags:** ${TAGS:operational,variables,thresholds,behavior,tuning}
**Related:** ${RELATED:brainstem_07_semantic_terminology_variables,brainstem_09_architectural_variables,coherence_maintenance,drift_detection,journaling_protocol}
**Sequence:** ${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}
**Display name:** ${JEWEL_DISPLAY_NAME}
**Original source:** IBL_BRAINSTEM_EXTENDED.md, lines 118-121
**Atomized:** 2025-12-25
**Harmonic:** ${HARMONIC_CURRENT}
