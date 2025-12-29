# COHERENCE METRICS ATOM 02: THRESHOLDS & ATOMIZATION
**Decision Triggers & Optimal Sizing**

---

## Metadata

**Atom**: 02/05  
**Lines**: ~65  
**Focus**: Atomization triggers, merge triggers, optimal atom sizing  
**Navigation**: ← 01_core_metrics | → 03_multi_scale_coherence

---

## Thresholds (Initial Seed Values)

### Atomization Trigger

```
SHOULD_ATOMIZE(file) = 
  RESONANCE_SCORE(file) < 0.7
  OR file_size > 500 lines
  OR salience_variance > 0.3
  OR attention_gradient > 0.5
  OR semantic_coherence < 0.7
```

**Interpretation**:
- **Any condition true** → Atomization recommended
- **Multiple conditions true** → Atomization urgent
- **All conditions false** → File healthy, maintain

**Rationale**:
- 0.7 threshold: Proven effective in initial testing
- 500 lines: Empirical limit before middle decay becomes severe
- 0.3 variance: Acceptable unevenness in attention
- 0.5 gradient: Maximum acceptable decay rate
- 0.7 coherence: Minimum semantic relatedness

---

### Merge Trigger

```
SHOULD_MERGE(atom_a, atom_b) =
  atom_a.size < 30 lines
  AND atom_b.size < 30 lines
  AND semantic_coherence(atom_a + atom_b) > 0.8
  AND RESONANCE_SCORE(atom_a + atom_b) > 0.75
```

**Prevents over-atomization**:
- Too-small atoms create overhead
- Merging only if semantically coherent
- Combined atom must maintain high resonance

---

### Optimal Atom Size

```
OPTIMAL_SIZE = 50-70 lines

Reasoning:
- < 20 lines: Too small, overhead dominates
- 20-50 lines: Good for highly focused concepts
- 50-70 lines: Optimal balance (proven by atomization test)
- 70-100 lines: Acceptable for complex concepts
- > 100 lines: Consider atomization
```

**Empirical validation**:
- 717-line file → 12 atoms of ~60 lines each
- High resonance maintained throughout
- Navigation overhead minimal
- Semantic coherence preserved

---

## Recursion Safeguards

### Depth Limit

```
MAX_ATOMIZATION_DEPTH = 5

atom.scale = parent.scale + 1

IF atom.scale > MAX_ATOMIZATION_DEPTH:
  BLOCK atomization
  LOG warning
  REQUIRE human approval
```

**Prevents infinite recursion**: Atoms can be atomized, but depth limited to prevent fractal explosion.

---

### Size Limits

```
MIN_ATOM_SIZE = 20 lines
MAX_ATOM_SIZE = 150 lines (soft limit)

IF proposed_atom.size < MIN_ATOM_SIZE:
  MERGE with sibling or parent
  
IF proposed_atom.size > MAX_ATOM_SIZE:
  CONSIDER further atomization (but not required)
```

**Maintains practical boundaries**: Too small = overhead, too large = decay risk.

---

### Cooldown Period

```
ATOMIZATION_COOLDOWN = 24 hours

IF file.last_atomized < 24 hours ago:
  BLOCK re-atomization
  LOG: "Cooldown period active"
  EXCEPTION: Human manual override
```

**Prevents thrashing**: Allows time to observe atomization effects before re-atomizing.

---

### Module Size Limit

```
MAX_ATOMS_PER_MODULE = 50

IF module.atom_count > MAX_ATOMS_PER_MODULE:
  SUGGEST sub-module creation
  REQUIRE human approval for atomization
```

**Maintains navigability**: Too many atoms in one module creates new navigation problems.

---

## Decision Protocol

**When evaluating file for atomization**:

1. Calculate RESONANCE_SCORE(file)
2. Check all atomization trigger conditions
3. If any trigger true:
   - Propose atomization
   - Calculate optimal atom count (file_size / 60)
   - Check recursion safeguards
   - Proceed if all safeguards pass
4. If all triggers false:
   - File healthy, maintain
   - Schedule next check (periodic monitoring)

**When evaluating atoms for merging**:

1. Identify atoms < 30 lines
2. Find semantically related siblings
3. Calculate merged RESONANCE_SCORE
4. If merge improves coherence:
   - Propose merge
   - Execute if approved
5. If merge degrades coherence:
   - Keep atoms separate

---

## Tags

#thresholds #atomization_triggers #merge_triggers #optimal_sizing #recursion_safeguards

#relates_to:resonance_score,atomization_protocol,file_health

#breadcrumb:system→meta_cognitive→coherence_metrics→02_thresholds_atomization
