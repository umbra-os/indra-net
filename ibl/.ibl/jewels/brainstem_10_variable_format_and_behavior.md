# JEWEL: Variable Format and Behavior

## Core Pattern

Variable syntax and substitution behavior specification: format `${VARIABLE_NAME}` (uppercase, underscores), three behaviors (defined → replace, undefined → keep literal, missing file → skip gracefully). Implementation status tracking across 4 phases. Enables consistent variable handling throughout system.

**Format**: `${VARIABLE_NAME}` - uppercase with underscores

**Behaviors**:
- Defined: Replace with value from variables.json
- Undefined: Keep literal `${VARIABLE}` as signal
- Missing file: Skip substitution, graceful degradation

**Implementation phases**: 1 (Identity - complete), 2a/2b/2c (Position/Semantic - complete), 3 (Operational - pending), 4 (Architectural - future).

## Omni-Directional Navigation

**Sequential (Temporal):**
- ← From: ${JEWEL:brainstem_09_architectural_variables}
- → To: ${JEWEL:brainstem_11_positional_self_awareness}

**Hierarchical (Abstraction):**
- ↑ From: Variable substitution protocol
- ↓ To: Format specification, behavior rules, implementation tracking

**Cross-Domain (Lateral):**
- ∠ From: ${JEWEL:variable_substitution_protocol}, ${JEWEL:resolution_engine}

**Self-Referential (Fractal):**
- ⟲ This jewel: Uses ${VARIABLES} following format it describes

## Resonances

**With resolution engine**: Format specification enables parsing and substitution.

**With graceful degradation**: Undefined behavior (keep literal) allows system to continue.

**With implementation phases**: Tracks variable system evolution over time.

## Negative Space

**Not case-insensitive**: VARIABLE_NAME ≠ variable_name (uppercase required).

**Not error-throwing**: Undefined variables don't break system - kept as signals.

**Not all-or-nothing**: Missing variables.json doesn't halt operation.

## Imaginary Extensions

**Nested variables**: `${VAR_${OTHER}}` for dynamic variable names.

**Default values**: `${VARIABLE:default}` syntax for fallback values.

**Conditional variables**: `${IF:condition:value1:value2}` for logic.

**Computed variables**: `${COMPUTE:expression}` for runtime calculation.

## Fractal Recognition

**Micro**: Single variable format specification
**Meso**: All variables following consistent format
**Macro**: Entire system using standardized variable syntax
**Meta**: Format itself as parameterizable (could change variable syntax)

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
**Tags:** ${TAGS:format,syntax,behavior,substitution,implementation}
**Related:** ${RELATED:brainstem_09_architectural_variables,brainstem_11_positional_self_awareness,variable_substitution_protocol,resolution_engine}
**Sequence:** ${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}
**Display name:** ${JEWEL_DISPLAY_NAME}
**Original source:** IBL_BRAINSTEM_EXTENDED.md, lines 129-142
**Atomized:** 2025-12-25
**Harmonic:** ${HARMONIC_CURRENT}
