# COHERENCE METRICS ATOM 01: CORE METRICS
**Resonance Detection Framework - Core Calculations**

---

## Metadata

**Atom**: 01/05  
**Lines**: ~70  
**Focus**: Core metric definitions, resonance score calculation  
**Navigation**: → 02_thresholds_atomization

---

## Purpose

Define mathematical framework for detecting resonant decay in files and determining when atomization is required.

---

## Core Metrics

### 1. Resonance Score

```
RESONANCE_SCORE(file) = weighted_average(
  salience_distribution_score,
  attention_gradient_score,
  information_density_score,
  semantic_coherence_score
)

Weights: [0.3, 0.3, 0.2, 0.2]
Range: 0.0 (poor) → 1.0 (excellent)
```

**Interpretation**:
- < 0.5: Poor resonance, atomization urgent
- 0.5-0.7: Moderate resonance, atomization recommended
- 0.7-0.85: Good resonance, monitor
- > 0.85: Excellent resonance, maintain

---

### 2. Salience Distribution Score

```
SALIENCE_DISTRIBUTION(file) = 1 - variance(attention_by_section)

WHERE:
  attention_by_section = [
    attention(lines 1-100),
    attention(lines 101-200),
    ...
  ]
  
  attention(section) = empirical_salience_weight(section_position)
  
High variance = uneven attention = low score
Low variance = even attention = high score
```

**Empirical salience weights** (based on AI attention bias):
- Beginning (0-10%): 1.0
- Early (10-30%): 0.8
- Middle (30-70%): 0.4 ← WEAK POINT
- Late (70-90%): 0.8
- End (90-100%): 1.0

**Why middle decays**: AI attention bias favors beginnings and ends, creating "resonant decay" in middle sections.

---

### 3. Attention Gradient Score

```
ATTENTION_GRADIENT(file) = 1 - max_decay_rate

WHERE:
  decay_rate(section_i, section_j) = 
    |attention(section_i) - attention(section_j)| / distance(i, j)
  
  max_decay_rate = max(all decay_rates)

High gradient = steep decay = low score
Low gradient = gentle decay = high score
```

**Measures**: How quickly attention drops off between sections. Steep gradients indicate problematic structure.

---

### 4. Information Density Score

```
INFORMATION_DENSITY(file) = normalize(concepts_per_line)

WHERE:
  concepts_per_line = unique_concepts / line_count
  
  unique_concepts = count of distinct semantic units
  
  normalize(x) = min(x / target_density, 1.0)
  target_density = 0.5 concepts/line

Too sparse = low score
Optimal density = high score
Too dense = medium score (hard to process)
```

**Sweet spot**: ~0.5 concepts per line balances information richness with processability.

---

### 5. Semantic Coherence Score

```
SEMANTIC_COHERENCE(file) = avg_relatedness(all_concept_pairs)

WHERE:
  relatedness(concept_a, concept_b) = semantic_similarity(a, b)
  
  semantic_similarity = cosine_similarity(embedding_a, embedding_b)

Low relatedness = scattered concepts = low score
High relatedness = coherent concepts = high score
```

**Measures**: How well concepts relate to each other. High coherence = focused topic, low coherence = scattered ideas.

---

## Integration

**Used by**:
- Atomization decision protocol
- File health monitoring
- Module coherence assessment
- Space-level coherence tracking

**Feeds into**:
- Threshold calculations (Atom 02)
- Multi-scale coherence (Atom 03)
- Adaptive learning (Atom 04)

---

## Tags

#coherence_metrics #resonance_score #salience_distribution #attention_gradient #information_density #semantic_coherence

#relates_to:atomization,resonant_decay,attention_bias

#breadcrumb:system→meta_cognitive→coherence_metrics→01_core_metrics
