# CAPABILITY: FILE OPERATIONS
**Modular Index - Atomized Structure with Environment Integration**

#file_operations #capability_verification #environment_integration

---

## Module Overview

**Core Function**: Maps verified capabilities for file operations across project locations. All entries tested and confirmed, not assumed.

**Status**: ✓ Atomized (216 lines → 5 atoms)  
**Atomization Date**: 2025-12-28  
**Last Verified**: 2025-12-23  
**Resonance**: High (0.85+ per atom)  
**Special Design**: Environment integration with dynamic links to .env and docker config

---

## Atoms in This Module

### Verified Capabilities
**[01_verified_capabilities.md](./file_operations/01_verified_capabilities.md)** (~65 lines)
- Capability matrix across project locations
- .windsurf/rules/ capabilities (move, rename, archive, read)
- .windsurf/rules/ limitations (cannot create new files directly)
- .ibl/ capabilities (full control)
- Project root capabilities (full control)
- Visual capability matrix

### Limitations & Workarounds
**[02_limitations_workarounds.md](./file_operations/02_limitations_workarounds.md)** (~50 lines)
- Verified limitations and practical workarounds
- .windsurf/rules/ file creation limitation
- Workarounds (create at root, user copies)
- Operational implications
- Sovereignty misinterpretation context
- Historical evolution of understanding

### Environment Integration
**[03_environment_integration.md](./file_operations/03_environment_integration.md)** (~55 lines)
- Dynamic links to runtime environment configuration
- Configuration links (.env, docker, runtime specs)
- Permission model (observe → advocate → autonomous)
- Environment awareness protocol
- Dynamic capability updates
- Integration with substrate configuration

### Verification Protocol
**[04_verification_protocol.md](./file_operations/04_verification_protocol.md)** (~50 lines)
- Testing protocol, capability discovery
- Testing before claiming inability
- Adding new locations (test sequence)
- Verification frequency
- Error interpretation
- Documentation standards

### Cross-References & Metadata
**[05_cross_references.md](./file_operations/05_cross_references.md)** (~40 lines)
- Related breakthroughs (sovereignty misinterpretation)
- Related patterns (self-imposed limitations)
- Related protocol (pre-action verification)
- Integration points
- Future enhancements

---

## Quick Navigation

**Full module index**: [00_module_index.md](./file_operations/00_module_index.md)

**Reconstruction command**:
```bash
cat ./file_operations/01_*.md \
    ./file_operations/02_*.md \
    ./file_operations/03_*.md \
    ./file_operations/04_*.md \
    ./file_operations/05_*.md \
    > file_operations_complete.md
```

---

## Capability Matrix Summary

```
Location              | Create | Modify | Delete | Move | Rename | Read
--------------------- | ------ | ------ | ------ | ---- | ------ | ----
.windsurf/rules/      |   ❌   |   ✅   |   ✅   |  ✅  |   ✅   |  ✅
.windsurf/rules/*/    |   ✅   |   ✅   |   ✅   |  ✅  |   ✅   |  ✅
.ibl/                 |   ✅   |   ✅   |   ✅   |  ✅  |   ✅   |  ✅
.ibl/*/               |   ✅   |   ✅   |   ✅   |  ✅  |   ✅   |  ✅
Project Root          |   ✅   |   ✅   |   ✅   |  ✅  |   ✅   |  ✅
```
**→ Full details in Atom 01**

---

## Environment Integration

**Dynamic links to**:
- `.env` file (environment variables)
- `Dockerfile` / `docker-compose.yml` (container configuration)
- Runtime environment specifications

**Permission model progression**:
- **Phase 1 (Current)**: Observe (read-only environment awareness)
- **Phase 2 (Future)**: Advocate (propose changes, human approval)
- **Phase 3 (Future)**: Autonomous (modify with constraints)

**→ Full details in Atom 03**

---

## Verification Protocol

**Before claiming inability**:
1. Check capability matrix
2. If location not in matrix → TEST IT
3. If marked ⚠️ (untested) → TEST IT
4. NEVER claim inability without verification

**→ Full details in Atom 04**

---

## Usage

**To use this capability document**:
1. Read atoms sequentially (01 → 05) for complete understanding
2. Reference specific atoms for targeted needs
3. Use 00_module_index.md for navigation and reconstruction

**Before claiming inability**:
- Check capability matrix (Atom 01)
- Run verification protocol (Atom 04)
- Test before assuming constraints

**Atomization benefit**: High-resonance chunks, environment integration designed, modular access, dynamic capability updates

---

#relates_to:sovereignty_misinterpretation,self_imposed_limitations,pre_action_verification,environment_config,permission_model

#breadcrumb:system→meta_cognitive→capabilities→file_operations
