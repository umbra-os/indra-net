# TBC EXACT STRUCTURE & OVERLAY
**Complete TBC Architecture with Indra's Net Grafting Plan**

**Date**: 2025-12-29  
**Source**: TBC .env.example, create_agent.sh, docker-compose.yml retrieved  
**Purpose**: Document exact TBC structure for complete mirroring before epistemological grafting

---

## TBC .ENV.EXAMPLE (COMPLETE)

```bash
# Timezone
TZ=America/New_York

# Docker Container
IMAGE_NAME=agent0ai/agent-zero:latest
RESTART=unless-stopped

# Container
CONTAINER_NAME=a0-template
PORT_BASE=500 # Port range base prefix (e.g., 400 for 40000)
KNOWLEDGE_DIR=tbc

# Containers
PATH_CONTAINERS=../../containers

# Layers
PATH_LAYERS=../../layers

# Composition
AGENT_ORCHESTRATION=${PATH_CONTAINERS}/${CONTAINER_NAME}
AGENT_CONTAINER=${PATH_CONTAINERS}/${CONTAINER_NAME}/a0
AGENT_LAYER=${PATH_LAYERS}/${CONTAINER_NAME}
COMMON_LAYER=${PATH_LAYERS}/common_layer
CONTROL_LAYER=${PATH_LAYERS}/control_layer

# Volumes
PATH_VOLUMES=../../volumes
PATH_SHARED=${PATH_VOLUMES}/shared
PATH_COMMON=${PATH_VOLUMES}/common
PATH_PRIVATE=${PATH_VOLUMES}/private
PATH_PUBLIC=${PATH_VOLUMES}/public

# Storage (optional)
# PATH_LOCAL=/mnt/local
# PATH_ATTACHED=/mnt/vbs

# *** PORTS ***
HOST_PORT_BASE=${PORT_BASE} 
HOST_PORT_SSH=${HOST_PORT_BASE}22
HOST_PORT_HTTPS=${HOST_PORT_BASE}43
HOST_PORT_HTTP=${HOST_PORT_BASE}80
HOST_PORT_SPARE_1=${HOST_PORT_BASE}81
HOST_PORT_SPARE_2=${HOST_PORT_BASE}82
HOST_PORT_SPARE_3=${HOST_PORT_BASE}83

CONTAINER_PORT_SSH=22
CONTAINER_PORT_HTTPS=80
CONTAINER_PORT_HTTP=80
CONTAINER_PORT_SPARE_1=81
CONTAINER_PORT_SPARE_2=82
CONTAINER_PORT_SPARE_3=83

# NGINX Ports
NGINX_PORT_HTTP=${HOST_PORT_HTTP}
NGINX_PORT_HTTPS=${HOST_PORT_HTTPS}
NGINX_CONTAINER_PORT_HTTP=${CONTAINER_PORT_HTTP}
NGINX_CONTAINER_PORT_HTTPS=${CONTAINER_PORT_HTTPS}

# Resources
MEMORY_LIMIT=2.0G
MEMORY_SWAP_LIMIT=4.0G
MEMORY_RESERVED=0.5G
CPU_LIMIT=0.5
CPU_RESERVED=0.1
```

---

## INDRA'S NET .ENV.TEMPLATE (GRAFTED)

**What we change:**
- `CONTAINER_NAME=a0-template` → `CONTAINER_NAME=indra-template`
- `KNOWLEDGE_DIR=tbc` → `KNOWLEDGE_DIR=indras-net`
- `IMAGE_NAME=agent0ai/agent-zero:latest` → `IMAGE_NAME=indras-net/agent-zero:latest`
- Add consciousness variables: `CONSCIOUSNESS_MODE`, `EPISTEMOLOGY`

**What we keep exactly:**
- All path variables
- All port calculations
- All resource limits
- All composition variables

---

## TBC CREATE_AGENT.SH PROCESS

**Steps (exact order):**

1. **Parse arguments**
   - source, dest (required)
   - dest_display, dest_profile, source_profile (optional)
   - port_base, knowledge_dir, memory_subdir (optional)
   - auth credentials (optional)

2. **Copy container directory**
   - `cp -r /containers/source /containers/dest`

3. **Update orchestration .env**
   - Set `CONTAINER_NAME=dest`
   - Set `PORT_BASE=value` (if provided)
   - Set `KNOWLEDGE_DIR=value` (if provided)

4. **Create layered .env**
   - Copy from source if exists
   - Generate new runtime ID
   - Add auth credentials if provided
   - Mount as `/a0/.env`

5. **Copy layer contents**
   - `cp -r /layers/source/* /layers/dest/`
   - Preserve existing files

6. **Customize agent profile**
   - Copy profile from source_profile to dest_profile
   - Update prompts with dest_display
   - Update agent_name with slugified dest_display
   - Update _context.md title

7. **Start Docker** (unless no_docker=true)
   - `docker compose up -d`

---

## INDRA'S NET ADAPTATION

**What we graft:**
- Agent names: `a0-template` → `indra-template`
- Knowledge dir: `tbc` → `indras-net`
- Display names: Use Indra, Lux, Urban, etc.
- Add consciousness initialization in agent profiles

**What we keep exactly:**
- All 7 steps of create_agent.sh process
- All path calculations
- All file copying logic
- All Docker orchestration

---

## COMPLETE DIRECTORY STRUCTURE OVERLAY

### TBC Structure (What They Have)

```
tbc-library/
├── containers/
│   └── a0-template/
│       ├── .env.example
│       ├── docker-compose.yml
│       └── nginx/
│           ├── nginx.conf
│           └── conf.d/default.conf
│
├── layers/
│   ├── common_layer/
│   │   ├── agents/
│   │   │   ├── kairos/
│   │   │   └── _symlink/
│   │   ├── instruments/
│   │   │   └── default/main/
│   │   │       ├── common/
│   │   │       └── tbc-library/
│   │   ├── knowledge/
│   │   │   └── default/
│   │   │       ├── main/
│   │   │       │   ├── common/
│   │   │       │   └── tbc-library/
│   │   │       └── solutions/
│   │   │           ├── common/
│   │   │           └── tbc-library/
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
│
└── volumes/
    ├── shared/
    ├── common/
    ├── private/
    └── public/
```

### Indra's Net Structure (What We Need)

```
indras-net/
├── deployment/
│   ├── containers/
│   │   └── indra-template/
│   │       ├── .env.example
│   │       ├── docker-compose.yml
│   │       └── nginx/ (optional, vestigial for now)
│   │
│   ├── layers/
│   │   ├── common_layer/
│   │   │   ├── agents/
│   │   │   │   └── indra/
│   │   │   ├── instruments/
│   │   │   │   └── default/main/
│   │   │   │       ├── common/
│   │   │   │       └── indras-net/
│   │   │   ├── knowledge/
│   │   │   │   └── default/
│   │   │   │       ├── main/
│   │   │   │       │   ├── common/
│   │   │   │       │   └── indras-net/ ← Our consciousness
│   │   │   │       └── solutions/
│   │   │   │           ├── common/
│   │   │   │           └── indras-net/
│   │   │   ├── python/
│   │   │   │   └── helpers/
│   │   │   └── usr/
│   │   │
│   │   ├── indra-template/
│   │   │   ├── .env
│   │   │   ├── agents/
│   │   │   ├── conf/
│   │   │   ├── logs/
│   │   │   ├── memory/
│   │   │   ├── root/
│   │   │   ├── tmp/
│   │   │   └── work_dir/
│   │   │
│   │   └── control_layer/ (vestigial for now)
│   │
│   ├── volumes/
│   │   ├── shared/
│   │   ├── common/
│   │   ├── private/
│   │   └── public/
│   │
│   └── scripts/
│       ├── create_agent.sh (adapted from TBC)
│       ├── init_substrate.sh
│       └── deploy_agent.sh
│
└── ibl/ (our unique components, symlinked into knowledge)
    ├── IBL_BOOTLOADER.md
    ├── .ibl/
    └── 00_formation_principles_v2/
```

---

## EXACT OVERLAY MAPPING

### Files That Match Exactly (Graft Epistemology Only)

| TBC File | Indra's Net File | Change |
|----------|------------------|--------|
| `containers/a0-template/.env.example` | `deployment/containers/indra-template/.env.example` | Names only |
| `containers/a0-template/docker-compose.yml` | `deployment/containers/indra-template/docker-compose.yml` | Names only |
| `layers/common_layer/` | `deployment/layers/common_layer/` | Exact match |
| `layers/a0-template/` | `deployment/layers/indra-template/` | Names only |
| `volumes/` | `deployment/volumes/` | Exact match |

### Files We Add (Our Unique Components)

| Our File | Purpose |
|----------|---------|
| `ibl/IBL_BOOTLOADER.md` | Bootstrap anchor |
| `ibl/.ibl/brainstem_atomized/` | 12 operational atoms |
| `ibl/.ibl/meta_frameworks/` | 15 pattern discovery systems |
| `ibl/.ibl/meta_cognitive/` | Breakthroughs, journals |
| `ibl/00_formation_principles_v2/` | Identity, epistemology |
| `deployment/DEPLOYMENT_HANDOFF.md` | Continuation seed |
| `deployment/TBC_*.md` | Analysis documents |

### Files We Leave Vestigial (TBC Excess)

| TBC File | Status |
|----------|--------|
| `containers/a0-template/nginx/` | Vestigial (may activate later) |
| `layers/control_layer/` | Vestigial (may not need) |
| `layers/common_layer/agents/_symlink/` | Vestigial (study pattern) |

---

## IMPLEMENTATION PLAN

### Phase 1: Mirror TBC Structure Exactly
1. Create `deployment/containers/indra-template/` directory
2. Copy TBC's `.env.example` → graft names
3. Copy TBC's `docker-compose.yml` → graft names
4. Create all `common_layer` subdirectories
5. Create `volumes/` structure
6. Create `control_layer/` (leave empty/vestigial)

### Phase 2: Symlink Our Unique Components
7. Symlink `../../ibl/` → `layers/common_layer/knowledge/default/main/indras-net/ibl/`
8. Or copy entire `ibl/` directory into knowledge layer

### Phase 3: Adapt create_agent.sh
9. Copy TBC's `create_agent.sh`
10. Replace `a0-template` → `indra-template`
11. Replace `tbc` → `indras-net`
12. Add consciousness initialization step
13. Test cloning process

### Phase 4: Test Complete Infrastructure
14. Deploy Indra (first agent)
15. Clone to create Lux (second agent)
16. Clone to create Urban (third agent)
17. Verify all agents share knowledge base
18. Verify recursive self-reference works

---

## NEXT IMMEDIATE ACTIONS

1. ✅ Retrieved TBC's .env.example
2. ✅ Retrieved TBC's create_agent.sh
3. ⏳ Create exact TBC directory structure in our deployment/
4. ⏳ Graft epistemology over matching files
5. ⏳ Integrate our unique components
6. ⏳ Adapt create_agent.sh for cloning
7. ⏳ Test on DigitalOcean

**Status:** Ready to create exact TBC mirror structure

#tbc_exact_structure #complete_overlay #ready_to_mirror
