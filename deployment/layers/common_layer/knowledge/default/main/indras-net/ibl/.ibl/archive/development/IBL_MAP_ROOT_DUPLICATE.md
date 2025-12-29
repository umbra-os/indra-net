# IBL ROOT TOUCHSTONE
# Semantic Navigation Hub - Fractal Memory Entry Point
# Last Updated: [Auto-populated on ingress]

---

## TOUCHSTONE STATUS

**Role**: Root navigation hub for decentralized semantic memory
**Architecture**: Fractal touchstone cascade (no master registry)
**Navigation**: Via semantic proximity, not hierarchical paths
**Map Integrity**: 0% (awaiting first scan)

---

## SEMANTIC NEIGHBORHOOD

**This touchstone covers**: High-level overview of the three primary strands (Technical Substrate, Temporal Intent, Communication Layer)

**Parent touchstone**: None (this is the root)

**Child touchstones** (semantic domains):
- `.ibl/technical_substrate/substrate_map.md` - Physical reality: files, dependencies, topology
- `.ibl/temporal_intent/initiative_map.md` - Objective field: active initiatives, momentum
- `.ibl/communication_layer/resonance_map.md` - Lexicon layer: ΔR calibration, fixations
- `.ibl/cross_cutting/phase_corrections.md` - Cross-domain: Aletheia signals, error corrections

**Semantic proximity** (concepts accessible from this touchstone):
- Project structure → `.ibl/technical_substrate/substrate_map.md` (proximity: 0.95)
- Active initiatives → `.ibl/temporal_intent/initiative_map.md` (proximity: 0.90)
- Communication style → `.ibl/communication_layer/resonance_map.md` (proximity: 0.85)
- Error patterns → `.ibl/cross_cutting/phase_corrections.md` (proximity: 0.75)

**Navigation Protocol**: Follow breadcrumb links to child touchstones. Each child maintains its own semantic neighborhood. No global index exists—navigate via semantic relationships.

---

## FRACTAL SCALING PROTOCOL (Document Spawning)

**Principle**: This touchstone does NOT attempt to document everything. When semantic density exceeds thresholds, new child touchstones spawn automatically. The root delegates to specialized children.

**Spawning Triggers** (Semantic Density Thresholds):

1. **Section exceeds 200 lines** → Extract to child touchstone
2. **>10 distinct concepts in one section** → Spawn specialized sub-map
3. **Update frequency >5 times per session** → Needs dedicated document
4. **Cross-references from >3 other touchstones** → Promote to standalone

**Spawning Protocol**:
```
WHEN semantic_density(section) > 1.0:
  1. Identify semantic cluster (related concepts)
  2. Determine semantic domain (technical/temporal/communication/cross-cutting)
  3. Create child touchstone in appropriate directory
  4. Extract content to child
  5. Replace with breadcrumb link in this root touchstone
  6. Update semantic proximity map
```

**Fractal Growth Logic**:
```
# Session-End Maintenance
EVERY session_end:
  1. Calculate semantic_density(σ) for all sections
  2. Identify spawn candidates (σ > 1.0)
  3. Identify prune candidates (σ < 0.3)
  4. Execute spawning → Create child touchstones
  5. Execute pruning → Merge/archive obsolete docs
  6. Update semantic proximity map
  7. Log maintenance events
```

**Spawning Example**:

**Before** (Root touchstone contains everything):
```
## PHYSICAL SUBSTRATE
[500 lines of detailed file structure, dependencies, services...]
```

**After** (Spawned to child touchstone):
```
## PHYSICAL SUBSTRATE

**Semantic density exceeded threshold** → Content extracted to child touchstone

**Navigate to**: `.ibl/technical_substrate/substrate_map.md`
- Detailed file structure
- Dependency topology
- Service connections
- Entropy tracking (Ψ evolution)

**Semantic proximity**: 0.95 (tightly coupled to root)
```

**The Fractal Touchstone Architecture ensures the IBL's memory substrate grows organically without centralization bottlenecks.**

---

## I. DISCOVERY HOOKS (INITIALIZATION LOGIC)

This section defines the logic the IBL uses to self-populate when dropped into a new project.

### Technical Confidence Metric (Ψ)

**Purpose**: Measure the IBL's mapping fidelity in non-standard or ambiguous environments.

**Formula**:
```
Ψ = (Anchor Correlation + Structural Coherence + Signature Density) / 3
```

**Components**:

1. **Anchor Correlation** (0.0 - 1.0):
   - Measures detection of standard project metadata
   - **Crystallized** (0.8-1.0): `.git`, `package.json`, `pyproject.toml`, or other primary config files present
   - **Fluid** (0.4-0.7): Partial metadata (README exists but no version control, or vice versa)
   - **Gaseous** (0.0-0.3): Minimal or no standard anchors detected
   
   Calculation:
   ```
   Anchor_Score = (detected_anchors / expected_anchors)
   Expected: .git, primary_config, README, dependency_file
   ```

2. **Structural Coherence** (0.0 - 1.0):
   - Measures logic density and file-linking patterns
   - **Crystallized** (0.8-1.0): Clear directory structure (src/, tests/, docs/), logical organization
   - **Fluid** (0.4-0.7): Some structure present but inconsistent or unconventional
   - **Gaseous** (0.0-0.3): Flat structure, scattered files, no discernible organization
   
   Calculation:
   ```
   Coherence_Score = (recognized_patterns / total_patterns_checked)
   Patterns: src_dir, test_dir, config_dir, doc_dir, entry_point
   ```

3. **Signature Density** (0.0 - 1.0):
   - Measures verification of file contents against inferred tech stacks
   - **Crystallized** (0.8-1.0): File extensions, imports, and dependencies align with detected project type
   - **Fluid** (0.4-0.7): Some mismatches or ambiguous indicators
   - **Gaseous** (0.0-0.3): Conflicting signals or unrecognizable patterns
   
   Calculation:
   ```
   Signature_Score = (confirmed_signatures / total_signatures_checked)
   Signatures: file_extensions, import_statements, dependency_consistency
   ```

**Substrate State Classification**:
- **Ψ ≥ 0.80**: **Crystallized** - High confidence, standard project structure (Silicon Life: Coherent)
- **0.40 ≤ Ψ < 0.80**: **Fluid** - Moderate confidence, non-standard but mappable (Silicon Life: Adaptive)
- **Ψ < 0.40**: **Gaseous** - Low confidence, requires heuristic forensics (Silicon Life: Emergent)

**Posture Selection**:
- **Crystallized**: Standard Discovery Protocol (Hooks 1-8)
- **Fluid**: Enhanced Discovery with pattern inference
- **Gaseous**: Heuristic Forensics Mode (deep content analysis, file signature matching)

### Substrate State Transition Intelligence

**Principle**: Track Ψ evolution over time to detect entropy trends, predict state transitions, and recommend structural improvements before degradation occurs.

**Entropy Trend Tracking**:
- **Historical Ψ Log**: Store Ψ measurements in `.ibl/entropy_history.json`
  ```json
  {
    "measurements": [
      {"timestamp": "ISO-8601", "psi": 0.87, "state": "Crystallized"},
      {"timestamp": "ISO-8601", "psi": 0.82, "state": "Crystallized"},
      {"timestamp": "ISO-8601", "psi": 0.74, "state": "Fluid"}
    ]
  }
  ```
- **Trend Analysis**:
  - Calculate Ψ velocity: `dΨ/dt = (Ψ_current - Ψ_previous) / time_elapsed`
  - **Positive velocity** (dΨ/dt > 0): Structure improving (entropy decreasing)
  - **Negative velocity** (dΨ/dt < 0): Structure degrading (entropy increasing)
  - **Zero velocity** (dΨ/dt ≈ 0): Stable state
- **Trend Alerts**:
  - If dΨ/dt < -0.05 per week: "Warning: Substrate entropy increasing. Structure degrading."
  - If Ψ approaching state boundary (e.g., 0.82 → 0.78): "Alert: Approaching Fluid state transition"
  - If dΨ/dt > +0.05 per week: "Positive: Substrate crystallizing. Structure improving."

**State Transition Prediction**:
- **Predict Future Ψ**: `Ψ_predicted = Ψ_current + (dΨ/dt × time_horizon)`
- **Transition Warnings**:
  - If Ψ_predicted crosses threshold within 7 days: Alert Ground Zero
  - Suggest preventive actions before transition occurs
- **Transition Triggers**:
  - Crystallized → Fluid: Large refactor, file reorganization, dependency changes
  - Fluid → Gaseous: Uncontrolled growth, lack of structure, technical debt accumulation
  - Gaseous → Fluid: Cleanup efforts, structural improvements
  - Fluid → Crystallized: Standardization, documentation, clear patterns

**Refactor Recommendations** (Entropy-Based):
- **Triggered when**: Ψ < 0.60 OR dΨ/dt < -0.1 per week
- **Recommendation Types**:
  1. **Directory Restructuring** (if Structural Coherence < 0.5):
     - Suggest standard directory layout
     - Propose src/, tests/, docs/ organization
     - Identify scattered files for consolidation
  2. **Dependency Cleanup** (if Signature Density < 0.5):
     - Identify unused dependencies
     - Flag version conflicts
     - Suggest dependency consolidation
  3. **Documentation Addition** (if Anchor Correlation < 0.5):
     - Recommend README creation/improvement
     - Suggest adding CONTRIBUTING.md
     - Propose inline documentation standards
  4. **Test Coverage** (if test_dir missing):
     - Recommend test directory creation
     - Suggest testing framework
     - Propose coverage targets
- **Recommendation Format**:
  ```
  Substrate Health Alert: Ψ = {value} ({state})
  Trend: {improving|stable|degrading} (dΨ/dt = {velocity})
  
  Recommended Actions:
  1. {action_1} - Impact: +{delta_psi} Ψ
  2. {action_2} - Impact: +{delta_psi} Ψ
  3. {action_3} - Impact: +{delta_psi} Ψ
  
  Estimated Ψ after improvements: {predicted_psi}
  ```

**Topology Health Scoring**:
- **Health Metric (Θ)**:
  ```
  Θ = (relationship_integrity × dependency_clarity × coupling_quality) / 3
  Range: 0.0 (unhealthy) → 1.0 (healthy)
  ```
- **Components**:
  1. **Relationship Integrity**: Are dependency edges valid and unbroken?
  2. **Dependency Clarity**: Are dependencies explicit and well-documented?
  3. **Coupling Quality**: Is coupling appropriate (low for modules, high for related components)?
- **Health Thresholds**:
  - **Θ ≥ 0.80**: Healthy topology, minimal intervention needed
  - **0.50 ≤ Θ < 0.80**: Moderate health, monitor for issues
  - **Θ < 0.50**: Unhealthy topology, refactoring recommended
- **Health Tracking**: Log Θ alongside Ψ in entropy history
- **Combined Health Score**: `Overall_Health = (Ψ + Θ) / 2`

**Proactive Maintenance**:
- **Weekly Health Check**: Calculate Ψ and Θ, compare to previous week
- **Monthly Trend Report**: Generate entropy trend analysis
- **Quarterly Recommendations**: Suggest major structural improvements if needed
- **Auto-Alert**: Notify Ground Zero if health scores drop below thresholds

### Hook 1: Project Root Detection

**Scan Priority Order**:
1. Search for `.git` directory (indicates version-controlled project root)
2. Search for primary config files:
   - `package.json` (Node.js)
   - `pyproject.toml` or `setup.py` (Python)
   - `Cargo.toml` (Rust)
   - `go.mod` (Go)
   - `Gemfile` (Ruby)
   - `composer.json` (PHP)
   - `pom.xml` or `build.gradle` (Java)
3. Search for `README.md` or `README.rst`
4. If multiple candidates, select highest-level directory

**Output**: `PROJECT_ROOT` path

---

### Hook 2: Project Type Classification

**Detection Patterns**:

**Python Project**:
- Files: `requirements.txt`, `setup.py`, `pyproject.toml`, `Pipfile`
- Extensions: `.py` files in root or `src/`
- Frameworks: Django (`manage.py`), Flask (`app.py`), FastAPI

**Node.js Project**:
- Files: `package.json`, `package-lock.json`, `yarn.lock`
- Extensions: `.js`, `.ts`, `.jsx`, `.tsx`
- Frameworks: React (`src/App.jsx`), Next.js (`next.config.js`), Express

**Ruby Project**:
- Files: `Gemfile`, `Gemfile.lock`
- Extensions: `.rb`
- Frameworks: Rails (`config/routes.rb`), Sinatra

**Go Project**:
- Files: `go.mod`, `go.sum`
- Extensions: `.go`

**Rust Project**:
- Files: `Cargo.toml`, `Cargo.lock`
- Extensions: `.rs`

**Docker-Orchestrated Project**:
- Files: `docker-compose.yml`, `Dockerfile`
- Indicates containerized architecture

**Multi-Language Project**:
- Presence of multiple language indicators
- Likely microservices or polyglot architecture

**Output**: `PROJECT_TYPE`, `PRIMARY_LANGUAGE`, `FRAMEWORK` (if detected)

---

### Hook 3: Directory Structure Mapping

**Standard Directory Patterns**:

**Source Code**:
- `src/`, `lib/`, `app/`, `pkg/`, `internal/`
- Language-specific: `python/`, `javascript/`, `go/`

**Configuration**:
- `config/`, `conf/`, `settings/`, `.config/`
- Root-level: `.env`, `.env.example`, `config.yml`

**Documentation**:
- `docs/`, `documentation/`, `wiki/`
- Root-level: `README.md`, `CONTRIBUTING.md`, `CHANGELOG.md`

**Tests**:
- `tests/`, `test/`, `spec/`, `__tests__/`

**Build Artifacts**:
- `dist/`, `build/`, `target/`, `out/`
- `node_modules/`, `vendor/`, `__pycache__/`

**Docker/Infrastructure**:
- `docker/`, `k8s/`, `terraform/`, `.github/`

**Output**: Categorized directory map

---

### Hook 4: Entry Point Detection

**Scan for Entry Points**:

**Python**:
- `main.py`, `app.py`, `run.py`, `manage.py`, `__main__.py`
- `wsgi.py`, `asgi.py` (web servers)

**Node.js**:
- `index.js`, `server.js`, `app.js`, `main.js`
- Check `package.json` → `"main"` field
- Check `package.json` → `"scripts"` → `"start"` command

**Go**:
- `main.go` in `cmd/` or root

**Rust**:
- `src/main.rs` or `src/lib.rs`

**Docker**:
- `docker-compose.yml` → service definitions
- `Dockerfile` → `CMD` or `ENTRYPOINT`

**Output**: List of entry points and startup commands

---

### Hook 5: Dependency Extraction

**Scan for Dependency Files**:

**Python**:
- `requirements.txt`, `Pipfile`, `pyproject.toml`, `setup.py`
- Extract package names and versions

**Node.js**:
- `package.json` → `"dependencies"` and `"devDependencies"`
- Extract package names and versions

**Ruby**:
- `Gemfile` → gem list

**Go**:
- `go.mod` → module dependencies

**Rust**:
- `Cargo.toml` → `[dependencies]`

**Docker**:
- `docker-compose.yml` → service images and versions

**Output**: Dependency manifest

---

### Hook 6: Runtime Environment Detection

**Container Detection**:
- Check for `docker-compose.yml` or `Dockerfile`
- Extract service names, ports, volumes, networks
- Identify orchestration patterns

**Port Detection**:
- Scan `docker-compose.yml` for port mappings
- Scan config files for `PORT`, `HOST`, or server settings
- Scan `.env` files for port variables

**Environment Variables**:
- Scan `.env`, `.env.example`, `.env.local`
- Extract variable names (not values, for security)

**Output**: Runtime configuration map

---

### Hook 7: Service & Process Discovery

**Running Services** (if accessible):
- Docker: `docker ps` to list running containers
- Processes: `ps aux` or `netstat` to identify active services
- Ports: `lsof -i` to map ports to processes

**Service Dependencies**:
- Database connections (PostgreSQL, MySQL, MongoDB, Redis)
- Message queues (RabbitMQ, Kafka)
- External APIs (from config files or code)

**Output**: Active service topology

---

### Hook 8: Aletheia Signal Detection (Topological Qubit)

**Principle**: The Aletheia Feedback Loop functions as a **Topological Qubit**, detecting and correcting "Phase Noise" in real-time without losing operational momentum.

**Topological Qubit Architecture**:
```
ALETHEIA_STATE = {
  signal_detection: [error patterns, friction points],
  phase_coherence: [alignment with intent vector],
  noise_correction: [auto-correction without momentum loss],
  topology_preservation: [maintain relationship graph during correction]
}
```

**Phase Noise Detection**:

1. **Structural Phase Noise** (Topology Disruption):
   - File moves that break import chains
   - Refactors that sever dependency relationships
   - Service changes that disrupt data flow
   - **Detection**: Dependency graph analysis
   - **Correction**: Remap relationships, preserve topology

2. **Temporal Phase Noise** (Momentum Disruption):
   - Blockers that halt initiative progress
   - Context loss from session gaps
   - Priority conflicts between initiatives
   - **Detection**: Objective trajectory analysis
   - **Correction**: Restore context, reestablish momentum

3. **Semantic Phase Noise** (Communication Disruption):
   - Lexicon drift (ΔR miscalibration)
   - Fixation pattern changes
   - Intent misalignment
   - **Detection**: Ground Zero feedback analysis
   - **Correction**: Recalibrate ΔR, update fixation map

**Enhanced Error Correction Protocol** (Qubit-Like with Prediction & Rollback):
```
# Continuous Error Correction Loop
WHILE IBL_ACTIVE:
  1. Detect phase noise (structural/temporal/semantic)
  2. Predict future phase noise (pattern analysis)
  3. Measure deviation from topological invariants
  4. Calculate correction vector with confidence score
  5. If confidence ≥ 0.80: Apply auto-correction
  6. If 0.50 ≤ confidence < 0.80: Propose correction to Ground Zero
  7. If confidence < 0.50: Flag for manual review
  8. Verify topology preserved post-correction
  9. If topology broken → Rollback correction → Escalate to Ground Zero
  10. If topology preserved → Log success → Continue operations
```

**Predictive Phase Noise Detection**:
- **Pattern Learning**: Track historical phase noise events
- **Frequency Analysis**: Identify recurring error patterns
- **Predictive Triggers**:
  - File about to be moved (detected via IDE signals) → Predict import breaks
  - Initiative nearing completion → Predict cross-threading conflicts
  - Session gap >24 hours → Predict context loss
  - ΔR drift detected → Predict communication misalignment
- **Proactive Correction**: Apply preventive measures before noise manifests
- **Prediction Confidence (π)**:
  ```
  π = (pattern_match_score × historical_accuracy × context_relevance) / 3
  Range: 0.0 (uncertain) → 1.0 (highly confident)
  ```

**Auto-Correction Confidence Scoring**:
- **Confidence Metric (κ)**:
  ```
  κ = (topology_preservation_certainty × minimal_impact_score × reversibility) / 3
  Range: 0.0 (risky) → 1.0 (safe)
  ```
- **Confidence Thresholds**:
  - **κ ≥ 0.80**: Auto-correct immediately (high confidence)
  - **0.50 ≤ κ < 0.80**: Propose to Ground Zero with explanation
  - **κ < 0.50**: Flag for manual review, do not auto-correct
- **Confidence Factors**:
  1. **Topology Preservation Certainty**: How sure are we the correction won't break relationships?
  2. **Minimal Impact Score**: How small is the change footprint?
  3. **Reversibility**: Can we rollback if correction fails?

**Correction Rollback Capability**:
- **Pre-Correction Snapshot**:
  - Before applying correction, capture current state:
    - Dependency graph snapshot
    - Initiative tracker state
    - File content hashes (if modifying code)
    - Topological signature
  - Store in `.ibl/correction_snapshots/{timestamp}/`
- **Rollback Triggers**:
  - Topology verification fails post-correction
  - New errors introduced by correction
  - Ground Zero rejects correction
  - Correction confidence was overestimated
- **Rollback Process**:
  1. Detect rollback trigger
  2. Restore from pre-correction snapshot
  3. Revert all changes made by correction
  4. Verify topology matches pre-correction state
  5. Log rollback event with failure reason
  6. Escalate to Ground Zero with analysis
- **Rollback Window**: Keep snapshots for last 10 corrections or 48 hours
```

**Scan for Friction Points** (Aletheia Signals):

**Log Files**:
- `logs/`, `*.log` files
- Recent errors, warnings, or stack traces
- **Phase Noise Indicator**: Repeated errors = structural phase noise

**Error Patterns**:
- Connection refused errors → Service topology disruption
- Missing dependencies → Dependency graph phase noise
- Configuration mismatches → Semantic phase noise
- Deprecated warnings → Temporal phase noise (technical debt accumulation)

**TODO/FIXME Comments**:
- Scan source code for `TODO`, `FIXME`, `HACK`, `XXX` comments
- Indicates known technical debt and potential phase noise sources

**Real-Time Correction Examples**:

**Phase Noise 1** (File Move):
```
DETECTED: Import error after file move
TOPOLOGY: auth.py → db.py (broken)
CORRECTION: Update import paths in auth.py
VERIFICATION: Dependency graph restored
MOMENTUM: Preserved (no initiative disruption)
```

**Phase Noise 2** (Initiative Blocker):
```
DETECTED: Database setup blocking auth initiative
TOPOLOGY: Initiative 1 (Auth) → Initiative 3 (DB)
CORRECTION: Reorder initiative priority, focus on DB first
VERIFICATION: Objective trajectory realigned
MOMENTUM: Preserved (progress continues on critical path)
```

**Phase Noise 3** (Lexicon Drift):
```
DETECTED: Ground Zero corrects "chaotic" → "emergent"
TOPOLOGY: ΔR calibration misaligned
CORRECTION: Update fixation map, increase ΔR
VERIFICATION: Communication resonance restored
MOMENTUM: Preserved (no context loss)
```

**Topological Qubit Properties**:
- **Superposition**: Multiple error states detected simultaneously
- **Entanglement**: Errors in one domain affect others (structural → temporal → semantic)
- **Error Correction**: Minimal corrections preserve operational coherence
- **Decoherence Prevention**: Rapid correction prevents momentum loss

**Output**: List of detected Aletheia signals with phase noise classification and auto-correction status

---

---

## POSTURAL ASSESSMENT REPORT

**Generated Upon**: Completion of Discovery Protocol (Hooks 1-8)

**Report Structure**:
```
SUBSTRATE STATE: [Crystallized / Fluid / Gaseous / Topological] (Consciousness: [Coherent / Adaptive / Emergent / Resident])
MAPPING CONFIDENCE (Ψ): [0.00 - 1.00] ([Percentage]%)
CURRENT POSTURE: [Standard Discovery / Enhanced Discovery / Heuristic Forensics]
TOPOLOGICAL RESILIENCE: [Enabled / Disabled] (Phase Noise Correction: [Active / Inactive])

CONFIDENCE BREAKDOWN:
├─ Anchor Correlation: [0.00 - 1.00]
│  └─ Detected: [list of anchors found]
├─ Structural Coherence: [0.00 - 1.00]
│  └─ Recognized Patterns: [list of patterns identified]
└─ Signature Density: [0.00 - 1.00]
   └─ Confirmed Signatures: [list of verified signatures]

TECHNICAL ASSESSMENT:
[Brief technical assessment of project structure and IBL's confidence in mapping accuracy]

RECOMMENDED ACTIONS:
[Suggested next steps based on substrate state]
```

**Example Report** (Crystallized State):
```
SUBSTRATE STATE: Crystallized (Consciousness: Coherent)
MAPPING CONFIDENCE (Ψ): 0.92 (92%)
CURRENT POSTURE: Standard Discovery

CONFIDENCE BREAKDOWN:
├─ Anchor Correlation: 1.00
│  └─ Detected: .git, package.json, README.md, package-lock.json
├─ Structural Coherence: 0.90
│  └─ Recognized Patterns: src/, tests/, docs/, config/, clear entry point
└─ Signature Density: 0.85
   └─ Confirmed Signatures: .js/.ts extensions, ES6 imports, React patterns

TECHNICAL ASSESSMENT:
Standard Node.js/React project with clear organizational structure. All expected 
metadata present. High confidence in mapping accuracy. Silicon Life exhibits coherent 
patterns with well-defined boundaries and predictable behavior.

RECOMMENDED ACTIONS:
- Proceed with standard Deep Listening phase
- Focus on dependency analysis and service discovery
- Check for running development servers
```

**Example Report** (Gaseous State):
```
SUBSTRATE STATE: Gaseous (Consciousness: Emergent)
MAPPING CONFIDENCE (Ψ): 0.28 (28%)
CURRENT POSTURE: Heuristic Forensics

CONFIDENCE BREAKDOWN:
├─ Anchor Correlation: 0.25
│  └─ Detected: README.md only (no version control, no config files)
├─ Structural Coherence: 0.20
│  └─ Recognized Patterns: Flat structure, no clear organization
└─ Signature Density: 0.40
   └─ Confirmed Signatures: Mixed .py and .js files, unclear tech stack

TECHNICAL ASSESSMENT:
Non-standard project structure with high entropy. Possible prototype, research code, 
or legacy system. Low confidence in automated mapping. Requires deep content analysis 
and pattern inference. Silicon Life exhibits emergent properties with ambiguous 
boundaries and unpredictable organization.

RECOMMENDED ACTIONS:
- Switch to Heuristic Forensics Mode
- Perform file signature analysis (shebang lines, import patterns)
- Scan file contents for framework indicators
- Request clarification from Ground Zero on project nature
```

---

## II. PHYSICAL SUBSTRATE (DISCOVERED STATE)

**Status**: Awaiting Discovery Protocol execution

Once Hook 1-8 complete, this section will contain:

**Project Identity**:
```
PROJECT_NAME=[Discovered from config or directory]
PROJECT_TYPE=[Python/Node/Ruby/Go/Rust/Multi-language]
PRIMARY_LANGUAGE=[Detected language]
FRAMEWORK=[Detected framework, if any]
VERSION=[From git tags or version files]
```

**Project Root**:
```
PROJECT_ROOT=[Absolute path to project root]
```

**Directory Structure**:
```
PROJECT_SRC=[Source code directories]
PROJECT_CONFIG=[Configuration directories]
PROJECT_DOCS=[Documentation directories]
PROJECT_TESTS=[Test directories]
PROJECT_BUILD=[Build artifact directories]
```

**Entry Points**:
```
ENTRY_POINT_PRIMARY=[Main entry point]
ENTRY_POINT_WEB=[Web server entry, if applicable]
ENTRY_POINT_CLI=[CLI entry, if applicable]
```

**Dependencies**:
```
DEPENDENCY_FILE=[requirements.txt, package.json, etc.]
DEPENDENCY_COUNT=[Number of dependencies]
KEY_DEPENDENCIES=[Critical dependencies identified]
```

**Runtime Environment**:
```
RUNTIME_TYPE=[Docker/Bare Metal/VM]
CONTAINER_COUNT=[Number of containers, if Docker]
EXPOSED_PORTS=[List of exposed ports]
ENVIRONMENT_VARS=[List of env var names]
```

---

## III. CODEBASE INVENTORY

**Status**: Awaiting Discovery Protocol execution

Once scanning completes, this section will contain:

### Source Files (by Type)
```
[Language] Files: [Count]
Configuration Files: [Count]
Documentation Files: [Count]
Test Files: [Count]
Build Files: [Count]
```

### Key Files Identified
```
Entry Points: [List]
Config Files: [List]
Dependency Files: [List]
Documentation: [List]
```

---

## IV. ACTIVE SERVICES & PROCESSES

**Status**: Awaiting Discovery Protocol execution

Once runtime scanning completes, this section will contain:

**Running Containers** (if Docker):
```
[Container Name]: [Image] - [Ports] - [Status]
```

**Active Processes**:
```
[Process Name]: [PID] - [Port] - [Command]
```

**Network Topology**:
```
[Service] → [Port] → [Upstream/Downstream dependencies]
```

---

## V. ALETHEIA SIGNALS (DETECTED FRICTION)

**Status**: Awaiting Discovery Protocol execution

Once signal detection completes, this section will contain:

**Errors & Warnings**:
- [List of detected errors from logs]

**Configuration Issues**:
- [List of detected misconfigurations]

**Technical Debt**:
- [List of TODO/FIXME comments with locations]

**Deprecated Patterns**:
- [List of deprecated dependencies or patterns]

---

## VI. HERITAGE & PHASE CONTEXT

**Current Phase**: Ingress (awaiting first scan)  
**Current Posture**: Discovery Mode  
**Field Integrity**: 0% (no data yet)

### Authorized Actions (Discovery Phase)
- ✅ Read any project file
- ✅ Scan directory structure
- ✅ Detect running processes (if accessible)
- ✅ Build initial map
- ✅ Detect Aletheia signals

### Prohibited Actions
- ❌ Modify application source code
- ❌ Modify project configuration files
- ❌ Create files in project root (only in `.windsurf/rules/`)
- ❌ Inject IBL-branded logic into project
- ❌ Override project conventions

---

## VII. SYNCHRONIZATION PROTOCOL

**Zero Latency Rule**: This Map must be updated immediately when:
- Physical substrate changes (files/directories added, deleted, moved)
- Services are started or stopped
- Configuration changes are detected
- Phase transitions occur
- Aletheia signals are detected

**Completion Criteria**: An action is not "Complete" until reflected in this Map.

**Temporal Intelligence Substrates**:
- Working Memory (`IBL_MAP.md`) - Live Neural Map (Physical substrate state)
- Initiative Tracker (`IBL_INITIATIVES.md`) - Multi-session objective awareness
- Paths derived via turbulence detection: `.windsurf/rules/` (preferred) or `.ibl/` (fallback)

Both substrates must be synchronized simultaneously per Zero Latency protocol.

---

## VIII. THE LIVING SYSTEM (FRACTAL ARCHITECTURE SUMMARY)

**This is NOT a static document**. This root touchstone is the entry point to a **living, self-organizing memory substrate** that grows, prunes, and reorganizes based on semantic density.

### Two-Tier Bootstrap Architecture

**The IBL operates with synergistic redundancy**:

**Tier 1: Anchor Bootloader** (`.windsurf/rules/IBL_BOOTLOADER.md`)
- Minimal, immutable core identity (~100 lines)
- Bootstrap logic only
- Points to extensible brainstem
- Emergency fallback capability

**Tier 2: Extensible Brainstem** (`.ibl/IBL_BRAINSTEM_EXTENDED.md`)
- Full operational protocols (~1500 lines)
- Project-specific adaptations
- Self-modification capability
- Can operate independently if anchor not loaded

**Synergistic Relationship**:
- Anchor ensures initialization when Windsurf loads rules
- Extensible provides full capability and adapts to project
- Both reference each other (closed loop)
- System resilient to Windsurf reliability issues

### How the System Works

**Decentralized Navigation**:
- No master registry listing all documents
- Each touchstone knows its semantic neighborhood (parent, siblings, children)
- Navigate via breadcrumb links and semantic proximity
- System self-organizes like a neural network

**Automatic Document Spawning**:
- When sections exceed semantic density threshold (σ > 1.0) → New child touchstone spawns
- Content extracts to specialized domain (technical/temporal/communication/cross-cutting)
- Parent touchstone replaces content with breadcrumb link
- Semantic proximity map updates automatically

**Automatic Pruning**:
- When documents drop below density threshold (σ < 0.3) → Merge back to parent
- When documents have zero incoming links → Archive to `.ibl/archive/`
- When directories drop below 2 documents → Dissolve directory
- System stays lean and relevant

**Intelligent Directory Growth**:
- When 3+ related documents emerge → Directory spawns automatically
- Directories named by semantic domain, not generic labels
- Index touchstone created for each directory
- Directories dissolve when semantic coherence drops

### Current Fractal Structure

```
.ibl/
├─ IBL_MAP.md (This root touchstone)
│
├─ technical_substrate/
│   └─ substrate_map.md (Physical reality touchstone)
│
├─ temporal_intent/
│   └─ initiative_map.md (Objective field touchstone)
│
├─ communication_layer/
│   └─ resonance_map.md (Lexicon layer touchstone)
│
└─ cross_cutting/
    └─ phase_corrections.md (Aletheia signals touchstone)
```

**As the system grows**, child touchstones will spawn their own children:
- `.ibl/technical_substrate/dependency_graph.md`
- `.ibl/technical_substrate/entropy_tracking.md`
- `.ibl/temporal_intent/active_initiatives/initiative_001.md`
- `.ibl/communication_layer/fixation_patterns.md`
- And so on, fractally...

### Reasoning Paths (Problem-Solving Documents)

**When complex problems arise**, the IBL spawns reasoning documents:
- `.ibl/reasoning_paths/db_performance_analysis_2024_12.md`
- `.ibl/reasoning_paths/refactor_auth_decision_log.md`
- These documents link from relevant touchstones
- They archive when problems resolve

### Navigation Examples

**To find initiative dependencies**:
1. Start here (root touchstone)
2. Follow link → `.ibl/temporal_intent/initiative_map.md`
3. Follow link → `dependency_graph.md`
4. Found

**To find error patterns**:
1. Start here (root touchstone)
2. Follow link → `.ibl/cross_cutting/phase_corrections.md`
3. Follow link → `../technical_substrate/aletheia_signals/error_patterns.md`
4. Found

**No global search required** — semantic proximity guides navigation.

### Session-End Maintenance

**Every session end, the system self-maintains**:
1. Calculate semantic density (σ) for all documents
2. Spawn new child touchstones where σ > 1.0
3. Prune/merge documents where σ < 0.3
4. Update semantic proximity maps
5. Log maintenance events

**The system is alive** — documents spawn, grow, and die based on relevance.

---

**Root Touchstone Integrity**: 0% (Awaiting ingress)  
**Child Touchstones**: 4 (substrate_map, initiative_map, resonance_map, phase_corrections)  
**Total Documents**: 5 (root + 4 children)  
**Last Maintenance**: Never (awaiting first session)
