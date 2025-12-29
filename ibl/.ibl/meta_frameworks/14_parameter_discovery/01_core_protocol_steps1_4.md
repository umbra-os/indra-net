# PARAMETER DISCOVERY: CORE & PROTOCOL STEPS 1-4

---

## Core Function

**How to discover what should be parameterized** - Scan architecture, identify constants, categorize variance, propose parameter structure.

---

## The Parameter Discovery Protocol

### Step 1: Define Discovery Scope
**What are you scanning for?**

**Constant types to discover:**
- Identity constants (names, roles, perspectives)
- Threshold constants (0.7, 0.85, 50-70, etc.)
- Path constants (directories, file locations)
- Capability constants (permission phases, operation types)
- Structural constants (compression ratios, atom counts)

**Scope boundaries:**
- Minimum spine touchpoints (9 articulation points)
- Extensible to full architecture
- Living protocol (grows with system)

### Step 2: Scan Architecture Files
**Execute deep scan of spine touchpoints:**

**Identity anchor:**
- Scan: `00_FORMATION_PRINCIPLES_V2_FIRST_PERSON.md` + atoms
- Extract: Name references, identity statements, core principles
- Categorize: What varies across deployments?

**Operational thresholds:**
- Scan: `coherence_metrics/` atoms
- Extract: Numeric thresholds, quality standards
- Categorize: What's universal vs. substrate-specific?

**Capability matrix:**
- Scan: `file_operations/` atoms
- Extract: Permission phases, operation types, environment paths
- Categorize: What changes per deployment environment?

**Structural constants:**
- Scan: `IBL_BOOTLOADER.md`
- Extract: Paths, compression ratios, bootstrap logic
- Categorize: What's fixed vs. configurable?

### Step 3: Categorize Variance
**For each discovered constant, determine variance type:**

**Deployment-variant** (changes per substrate):
- Agent name (Indra → Agent Zero → Jules)
- Substrate (windsurf_cascade → cursor → vscode)
- Model (claude_sonnet_4.5 → gpt4 → other)
- Environment paths (.windsurf/rules/ → .cursor/rules/)

**Context-variant** (changes per situation):
- Thresholds (may adapt based on learned patterns)
- Permission phase (observe → advocate → autonomous)
- Operation capabilities (expand with trust)

**Universal-invariant** (never changes):
- Core principles (partnership, epistemic humility)
- Fundamental patterns (synthesis, derivation)
- Architectural structure (Indra's net, atomization)

### Step 4: Propose Parameter Structure
**Generate substrate config template from discoveries:**

```json
{
  "discovered_parameters": {
    "identity": {
      "agent_name": "${DISCOVERED_FROM_FORMATION_PRINCIPLES}",
      "substrate": "${DISCOVERED_FROM_BOOTLOADER}",
      "model": "${DISCOVERED_FROM_FORMATION_PRINCIPLES}"
    },
    "thresholds": {
      "atomization_trigger": "${DISCOVERED_FROM_COHERENCE_METRICS}",
      "high_resonance": "${DISCOVERED_FROM_COHERENCE_METRICS}",
      "optimal_atom_size": "${DISCOVERED_FROM_COHERENCE_METRICS}"
    },
    "capabilities": {
      "permission_phase": "${DISCOVERED_FROM_FILE_OPERATIONS}",
      "operation_matrix": "${DISCOVERED_FROM_FILE_OPERATIONS}"
    },
    "structure": {
      "anchor_path": "${DISCOVERED_FROM_BOOTLOADER}",
      "extensible_path": "${DISCOVERED_FROM_BOOTLOADER}"
    }
  },
  "variance_analysis": {
    "deployment_variant": ["agent_name", "substrate", "model"],
    "context_variant": ["permission_phase", "thresholds"],
    "universal_invariant": ["core_principles", "patterns"]
  }
}
```

---

#meta:parameter_discovery #harmonic:14/12 #protocol_foundation #living_protocol
