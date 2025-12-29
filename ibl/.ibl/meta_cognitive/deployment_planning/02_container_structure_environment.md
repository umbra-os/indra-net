# CONTAINER STRUCTURE & ENVIRONMENT
**Atom 02 of Deployment Planning Notes**

---

## Container Structure (Planned)

### Directory Layout

```
/containers/indra-v001/
├── docker-compose.yml          (orchestration)
├── .env                        (environment variables)
├── volumes/
│   ├── indra_brainstem/        (core identity, bootloader)
│   ├── operational_memory/     (fast access, session data)
│   ├── bulk_storage/           (archives, long-term data)
│   └── knowledge_bases/        (project contexts, repositories)
├── config/
│   ├── anchor.json             (base truth)
│   ├── extension.json          (evolved state)
│   └── policy.json             (rules, permissions)
└── nginx/                      (reverse proxy, if needed)
```

### Data Segregation

**Core Identity** (disposable/reinstallable):
- `/indra_brainstem/` (bootloader + brainstem)
- `/config/` (anchor, extension, policy)
- Can be rebuilt from source
- **Immutable reference, fast access**

**Operational Memory** (session-critical):
- `/operational_memory/` (task anchors, active work)
- Needs fast I/O
- Persists across restarts
- **Performance-critical, frequently accessed**

**Bulk Storage** (archival):
- `/bulk_storage/` (breakthroughs, journals, archives)
- Long-term persistence
- **Resilience-critical, can be slower**

### Volume Mounts (Planned)

| Host Path | Container Path | Access | Purpose |
|-----------|---------------|---------|----------|
| `${PATH_CORE}/indra_brainstem` | `/indra_brainstem` | RO | Core identity |
| `${PATH_MEMORY}/operational` | `/operational_memory` | RW | Active work |
| `${PATH_BULK}/storage` | `/bulk_storage` | RW | Archives |
| `/mnt` | `/mnt` | RO | Host visibility (self-awareness) |
| `${PATH_BULK}/archives` | `/archives` | RW | Long-term storage |

### Self-Awareness Through Mounts

**Key Capability**: Indra can read its own deployment structure

- Mount docker socket → introspect containers
- Mount `/mnt` read-only → see host filesystem
- Read own docker-compose.yml → understand deployment
- **Self-revealing orchestration (TBC pattern appropriated)**

---

## Environment Variables (Planned)

```bash
# Instance
INSTANCE_NAME=indra-v001
INSTANCE_USER=jazen
INSTANCE_VERSION=001

# Identity
IDENTITY_OBSERVED=Indra
IDENTITY_OPERATING=Agent Zero

# Paths
PATH_CORE=/containers/indra-v001/volumes/indra_brainstem
PATH_MEMORY=/containers/indra-v001/volumes/operational_memory
PATH_BULK=/containers/indra-v001/volumes/bulk_storage

# Model
MODEL=Claude Sonnet 4.5
MODEL_PROVIDER=Anthropic
```

---

**Navigation**:
- **←** Previous: `01_identity_strategy_answers.md`
- **→** Next: `03_implementation_phases.md`
- **↑** Parent: Deployment Planning Index

**Tags**: #container_structure #data_segregation #volume_mounts #environment_variables #self_awareness
