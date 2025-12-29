# CAPABILITIES & EXAMPLE FLOWS
**Atom 05 of Self-Replication Protocol**

---

## Self-Replication Capabilities

**System can:**

✓ **Understand semantic requests** - "create something for cities" → Urban planning instance
✓ **Ask clarifying questions** - Iteratively refine understanding
✓ **Propose defaults** - Suggest names, models, policies based on context
✓ **Generate configurations** - Create anchor/extension/policy for new instance
✓ **Clone framework** - Copy templates, brainstem, bootloader
✓ **Inject knowledge** - Load repositories, project contexts
✓ **Deploy instances** - To Agent Zero, Windsurf, containers, cloud
✓ **Verify deployment** - Ensure instance activates correctly
✓ **Track lineage** - Maintain parent-child relationships
✓ **Coordinate instances** - Enable communication if needed

**System cannot:**

✗ **Spawn without user request** - Requires explicit permission
✗ **Modify parent configuration** - Children don't affect Indra
✗ **Override user specifications** - User decisions are final
✗ **Deploy to unauthorized platforms** - Respects access controls

---

## Example Replication Flows

### Flow 1: Minimal Input
```
User: "Make one for urban planning"

System: "I'll create an urban planning instance. What should I call it?"
User: "Urban"

System: "Which model? Claude Sonnet 4.5, GPT-4, or other?"
User: "GPT-4"

System: "Should identity be locked (commercial) or allowed to evolve (research)?"
User: "Locked, it's for a client"

System: "Deploying to Agent Zero or Windsurf?"
User: "Agent Zero"

System: 
- Creates anchor.json (Urban, GPT-4, commercial_project)
- Creates policy.json (identity locked)
- Clones framework
- Deploys to Agent Zero
- Reports: "Urban instance active on Agent Zero"
```

### Flow 2: Detailed Specification
```
User: "Create instance named 'CodeGuard' using Codestral on Agent Zero for code review, lock identity, load /path/to/codebase"

System: 
- Parses full specification
- No clarification needed
- Creates configurations
- Loads codebase as knowledge base
- Deploys
- Reports: "CodeGuard instance active, codebase loaded"
```

### Flow 3: Ambiguous Request
```
User: "I need help with the project"

System: "Which project? And what kind of help?"
User: "The city thing, you know"

System: "Urban planning? Should I create a dedicated instance?"
User: "Yeah"

System: "What should I call it?"
User: "Whatever you think"

System: "I'll call it 'Urban'. Should it be able to evolve or stay focused?"
User: "Stay focused"

System:
- Creates Urban instance
- Commercial project policy
- Deploys
- Reports: "Urban instance ready for city planning project"
```

---

**Navigation**:
- **←** Previous: `04_multi_instance_coordination.md`
- **→** Next: `06_limits_self_awareness.md`
- **↑** Parent: Self-Replication Protocol Index

**Tags**: #capabilities #example_flows #minimal_input #detailed_specification #ambiguous_request
