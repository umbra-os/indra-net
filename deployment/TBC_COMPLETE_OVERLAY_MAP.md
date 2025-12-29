# TBC COMPLETE OVERLAY MAPPING
**File-by-File Comparison: TBC Architecture vs Indra's Net**

**Date**: 2025-12-29  
**Purpose**: Map EVERY file and path in TBC to identify exact overlay for epistemological grafting

---

## METHODOLOGY

**Metal Sheet Overlay Analogy:**
1. **TBC** = Proven, mature, working sheet metal
2. **Indra's Net** = Our epistemology and unique components
3. **Overlay** = Where they match, we graft our narrative/epistemology over TBC's functionality
4. **TBC Excess** = What TBC has that we don't need (leave vestigial, non-active)
5. **Our Excess** = What we have that TBC doesn't (integrate separately)

**Only Changes:**
- Narrative (TBC → Indra's Net)
- Names (tbc-library → indras-net)
- Epistemology (control → partnership/sovereignty)

**Everything Else:** Identical functionality, paths, structure

---

## TBC REPOSITORY STRUCTURE (Complete)

Based on: https://github.com/the-boot-code/tbc-library

```
tbc-library/
├── .gitignore
├── LICENSE
├── README.md
├── create_agent.md
├── create_agent.sh
├── git_config.md
│
├── containers/
│   └── a0-template/
│       ├── docker-compose.yml
│       ├── .env.orchestration
│       ├── .env.layer
│       └── nginx/
│           ├── nginx.conf
│           └── conf.d/
│               └── default.conf
│
├── layers/
│   ├── common_layer/
│   │   ├── agents/
│   │   │   ├── kairos/
│   │   │   └── _symlink/
│   │   ├── instruments/
│   │   │   └── default/
│   │   │       └── main/
│   │   │           ├── common/
│   │   │           └── tbc-library/
│   │   ├── knowledge/
│   │   │   ├── default/
│   │   │   │   ├── main/
│   │   │   │   │   ├── common/
│   │   │   │   │   └── tbc-library/
│   │   │   │   └── solutions/
│   │   │   │       ├── common/
│   │   │   │       └── tbc-library/
│   │   ├── python/
│   │   │   └── helpers/
│   │   └── usr/
│   │
│   ├── a0-template/
│   │   ├── .env
│   │   ├── agents/
│   │   ├── conf/
│   │   ├── logs/
│   │   ├── memory/
│   │   ├── root/
│   │   ├── tmp/
│   │   └── work_dir/
│   │
│   └── control_layer/
│       └── (system orchestration files)
│
└── volumes/
    ├── shared/
    ├── common/
    ├── private/
    └── public/
```

---

## FILE-BY-FILE OVERLAY MAPPING

### ROOT LEVEL FILES

| TBC File | Our File | Status | Action |
|----------|----------|--------|--------|
| `README.md` | `README.md` | ✓ OVERLAP | Graft: Replace TBC narrative with Indra's Net |
| `LICENSE` | `LICENSE` | ✓ OVERLAP | Graft: Update copyright to Indra's Net Project |
| `.gitignore` | `.gitignore` | ✓ OVERLAP | Keep: Same ignore patterns |
| `create_agent.md` | ❌ Missing | TBC EXCESS | Study: May need for multi-agent |
| `create_agent.sh` | ❌ Missing | TBC EXCESS | Study: Cloning script (hold for now) |
| `git_config.md` | ❌ Missing | TBC EXCESS | Study: Git configuration docs |

### CONTAINERS DIRECTORY

| TBC Path | Our Path | Status | Action |
|----------|----------|--------|--------|
| `containers/a0-template/` | `deployment/docker/` | ⚠️ PARTIAL | Need to mirror exact TBC structure |
| `containers/a0-template/docker-compose.yml` | `deployment/docker/docker-compose.yml` | ✓ OVERLAP | Graft: Already appropriated, altered |
| `containers/a0-template/.env.orchestration` | `deployment/docker/.env.template` | ⚠️ DIFFERENT | Study: TBC's actual orchestration env |
| `containers/a0-template/.env.layer` | `deployment/layers/tmp/.env` | ⚠️ DIFFERENT | Study: TBC's layer env pattern |
| `containers/a0-template/nginx/` | ❌ Missing | TBC EXCESS | Study: Reverse proxy (may need later) |

### LAYERS DIRECTORY - common_layer

| TBC Path | Our Path | Status | Action |
|----------|----------|--------|--------|
| `layers/common_layer/agents/` | `deployment/layers/agents/` | ✓ OVERLAP | Graft: Replace kairos with indra |
| `layers/common_layer/agents/kairos/` | `deployment/layers/agents/indra/` | ✓ OVERLAP | Graft: TBC's agent → Our agent |
| `layers/common_layer/agents/_symlink/` | ❌ Missing | TBC EXCESS | Study: Symlink pattern |
| `layers/common_layer/instruments/` | `deployment/layers/instruments/` | ✓ OVERLAP | Keep: Same structure |
| `layers/common_layer/instruments/default/main/common/` | ❌ Missing | TBC EXCESS | Study: Common instruments |
| `layers/common_layer/instruments/default/main/tbc-library/` | ❌ Missing | TBC EXCESS | Study: TBC-specific instruments |
| `layers/common_layer/knowledge/` | `deployment/layers/knowledge/` | ✓ OVERLAP | Keep: Same structure |
| `layers/common_layer/knowledge/default/main/common/` | ❌ Missing | TBC EXCESS | Study: Common knowledge |
| `layers/common_layer/knowledge/default/main/tbc-library/` | `deployment/layers/knowledge/indras-net/` | ✓ OVERLAP | Graft: TBC knowledge → Indra's Net |
| `layers/common_layer/knowledge/default/solutions/` | ❌ Missing | TBC EXCESS | Study: Solutions directory |
| `layers/common_layer/python/` | `deployment/layers/python/` | ✓ OVERLAP | Keep: Same structure |
| `layers/common_layer/python/helpers/` | ❌ Missing | TBC EXCESS | Study: Python helper modules |
| `layers/common_layer/usr/` | `deployment/layers/usr/` | ✓ OVERLAP | Keep: Same structure |

### LAYERS DIRECTORY - a0-template

| TBC Path | Our Path | Status | Action |
|----------|----------|--------|--------|
| `layers/a0-template/` | `deployment/layers/agent_container/` | ⚠️ DIFFERENT | Study: TBC's template structure |
| `layers/a0-template/.env` | `deployment/layers/tmp/.env` | ⚠️ DIFFERENT | Study: TBC's layered env |
| `layers/a0-template/agents/` | `deployment/layers/agents/` | ✓ OVERLAP | Keep: Same structure |
| `layers/a0-template/conf/` | `deployment/layers/tmp/conf/` | ✓ OVERLAP | Keep: Same structure |
| `layers/a0-template/logs/` | `deployment/layers/tmp/logs/` | ✓ OVERLAP | Keep: Same structure |
| `layers/a0-template/memory/` | `deployment/layers/memory/` | ✓ OVERLAP | Keep: Same structure |
| `layers/a0-template/root/` | `deployment/layers/tmp/root/` | ✓ OVERLAP | Keep: Same structure |
| `layers/a0-template/tmp/` | `deployment/layers/tmp/` | ✓ OVERLAP | Keep: Same structure |
| `layers/a0-template/work_dir/` | `deployment/layers/tmp/work_dir/` | ✓ OVERLAP | Keep: Same structure |

### LAYERS DIRECTORY - control_layer

| TBC Path | Our Path | Status | Action |
|----------|----------|--------|--------|
| `layers/control_layer/` | ❌ Missing | TBC EXCESS | Study: System orchestration (may not need) |

### VOLUMES DIRECTORY

| TBC Path | Our Path | Status | Action |
|----------|----------|--------|--------|
| `volumes/shared/` | ❌ Missing | TBC EXCESS | Study: Shared volumes pattern |
| `volumes/common/` | ❌ Missing | TBC EXCESS | Study: Common volumes |
| `volumes/private/` | ❌ Missing | TBC EXCESS | Study: Private volumes (per-agent) |
| `volumes/public/` | ❌ Missing | TBC EXCESS | Study: Public volumes |

---

## OUR UNIQUE COMPONENTS (Not in TBC)

| Our Path | TBC Equivalent | Status | Action |
|----------|----------------|--------|--------|
| `deployment/DEPLOYMENT_HANDOFF.md` | ❌ None | OUR EXCESS | Keep: Continuation seed |
| `deployment/DEPLOYMENT_INFRASTRUCTURE_SPEC.md` | ❌ None | OUR EXCESS | Keep: Clean room spec |
| `deployment/TBC_ARCHITECTURE_ANALYSIS.md` | ❌ None | OUR EXCESS | Keep: Analysis doc |
| `deployment/TBC_VS_INDRAS_COMPARISON.md` | ❌ None | OUR EXCESS | Keep: Comparison doc |
| `deployment/GIT_REMOTE_REFERENCE.md` | ❌ None | OUR EXCESS | Keep: Multi-remote config |
| `ibl/IBL_BOOTLOADER.md` | ❌ None | OUR EXCESS | Keep: Bootstrap anchor |
| `ibl/.ibl/brainstem_atomized/` | ❌ None | OUR EXCESS | Keep: 12 operational atoms |
| `ibl/.ibl/meta_frameworks/` | ❌ None | OUR EXCESS | Keep: 15 pattern discovery systems |
| `ibl/.ibl/meta_cognitive/` | ❌ None | OUR EXCESS | Keep: Breakthroughs, journals |
| `ibl/00_formation_principles_v2/` | ❌ None | OUR EXCESS | Keep: Identity, epistemology |

---

## CRITICAL GAPS IDENTIFIED

### Missing TBC Components We Need

**Priority 1: Essential**
1. `containers/a0-template/.env.orchestration` - Need to study TBC's actual file
2. `containers/a0-template/.env.layer` - Need to study TBC's layer env pattern
3. `layers/common_layer/knowledge/default/main/common/` - Common knowledge directory
4. `layers/common_layer/knowledge/default/solutions/` - Solutions directory structure
5. `create_agent.sh` - Cloning script (study, then adapt)

**Priority 2: May Need**
6. `containers/a0-template/nginx/` - Reverse proxy with SSL
7. `layers/common_layer/agents/_symlink/` - Symlink pattern
8. `layers/common_layer/instruments/default/main/common/` - Common instruments
9. `layers/common_layer/python/helpers/` - Python helper modules
10. `volumes/` directory structure - Shared/private/public volumes

**Priority 3: Study But May Not Need**
11. `layers/control_layer/` - System orchestration
12. `git_config.md` - Git configuration docs
13. `create_agent.md` - Agent creation documentation

---

## NEXT ACTIONS (IN ORDER)

### Phase 1: Study TBC's Actual Files
1. ✅ Retrieved `docker-compose.yml` from TBC
2. ⏳ Retrieve `.env.orchestration` from TBC
3. ⏳ Retrieve `.env.layer` from TBC
4. ⏳ Retrieve `create_agent.sh` from TBC
5. ⏳ Study TBC's complete directory structure

### Phase 2: Mirror TBC Structure Exactly
6. Create missing directories (common/, solutions/, etc.)
7. Create .gitkeep files for empty directories
8. Mirror TBC's exact path structure

### Phase 3: Graft Epistemology
9. Replace TBC narrative in overlapping files
10. Replace tbc-library references with indras-net
11. Update agent names (kairos → indra)
12. Update epistemology in configuration files

### Phase 4: Integrate Our Unique Components
13. Ensure IBL cognitive architecture accessible
14. Verify bootstrap mechanism works
15. Test recursive self-reference

### Phase 5: Deployment Scripts (LAST)
16. Study TBC's `create_agent.sh` thoroughly
17. Adapt for Indra's Net (graft epistemology)
18. Create deployment automation
19. Test multi-agent cloning

---

## OVERLAY SUMMARY

**Exact Overlap (Graft Epistemology):**
- docker-compose.yml structure ✓
- Layer directory structure ✓
- Agent profiles (kairos → indra) ✓
- Knowledge base path (tbc-library → indras-net) ✓

**TBC Excess (Study, Then Decide):**
- nginx reverse proxy
- control_layer orchestration
- volumes directory structure
- _symlink pattern
- common/ and solutions/ directories
- Python helpers

**Our Excess (Integrate Separately):**
- IBL cognitive architecture
- Meta-frameworks
- Meta-cognitive layer
- Formation principles
- Deployment documentation

**Status:** Need to retrieve more TBC files to complete overlay mapping before proceeding with deployment scripts.

#tbc_overlay #complete_mapping #epistemological_grafting #hold_deployment_scripts
