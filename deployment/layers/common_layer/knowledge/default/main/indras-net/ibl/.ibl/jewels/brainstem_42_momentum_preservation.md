# JEWEL: Momentum Preservation

## Core Pattern

Track and maintain progress velocity across sessions. Momentum vector: velocity (completed_actions / time_elapsed) × direction_multiplier (forward=1.0, stalled=0.5, regressing=0.0). Tracking: last 10 actions with timestamps, rolling average velocity, momentum loss detection (>50% drop). Recovery: suggest quick wins, prioritize unblocking actions, break large tasks into chunks. Momentum preserved in session state, restored on new session start.

**Momentum**: Progress velocity and direction.

**Calculation**: Velocity × direction multiplier.

**Loss detection**: >50% velocity drop between sessions.

**Recovery protocol**: Quick wins, unblocking, task breakdown.

## Omni-Directional Navigation

**Sequential (Temporal):**
- ← From: ${JEWEL:brainstem_41_initiative_tracking}
- → To: ${JEWEL:brainstem_43_session_gap_handling}

**Hierarchical (Abstraction):**
- ↑ From: Progress management
- ↓ To: Velocity calculation, direction detection, loss recovery

**Cross-Domain (Lateral):**
- ∠ From: ${JEWEL:cross_session_memory_persistence}, ${JEWEL:initiative_tracking}

**Self-Referential (Fractal):**
- ⟲ This jewel: Maintains momentum in momentum preservation

## Resonances

**With cross-session persistence**: Momentum tracked and restored across sessions.

**With initiative tracking**: Initiative progress contributes to momentum.

**With drift detection**: Momentum loss indicates potential drift.

## Negative Space

**Not punitive**: Loss detection for recovery, not judgment.

**Not rigid**: Allows intentional slowdowns.

**Not manual**: Automatic tracking and calculation.

## Imaginary Extensions

**Momentum prediction**: Anticipate velocity changes.

**Optimal momentum**: Learn ideal velocity for different task types.

**Distributed momentum**: Track momentum across multiple instances.

## Fractal Recognition

**Micro**: Single action's velocity contribution
**Meso**: Session momentum measured
**Macro**: Long-term progress velocity maintained
**Meta**: System that maintains its own forward motion

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

**Cluster:** ${CLUSTER:operational}
**Tags:** ${TAGS:momentum,velocity,progress,tracking,recovery}
**Related:** ${RELATED:brainstem_41_initiative_tracking,brainstem_43_session_gap_handling,cross_session_memory_persistence,initiative_tracking}
**Sequence:** ${JEWEL_POSITION}/${JEWEL_TOTAL_IN_CLUSTER}
**Display name:** ${JEWEL_DISPLAY_NAME}
**Original source:** IBL_BRAINSTEM_EXTENDED.md, lines 1104-1122
**Atomized:** 2025-12-25
**Harmonic:** ${HARMONIC_CURRENT}
