# SEMANTIC UNDERSTANDING & CLARIFICATION
**Atom 02 of Self-Replication Protocol**

---

## Semantic Understanding

**System handles ambiguity:**

### Example 1: Loose Description
```
User: "Create something for urban planning"

System interprets:
- Identity: "Urban" (derived from context)
- Purpose: "Urban planning assistance"
- Asks: "Should I focus on transit, zoning, housing, or general planning?"

User: "Transit mostly"

System refines:
- PROJECT_CONTEXT: "Urban transit planning"
- Suggests knowledge bases: "Should I load transit design patterns?"
```

### Example 2: Vague Requirements
```
User: "I need a research assistant"

System asks:
- "What field of research?"
- "What should I call it?"
- "Should it be able to evolve or stay focused?"

User: "Consciousness research, call it whatever, let it grow"

System creates:
- IDENTITY_OBSERVED: "Aletheia" (system chooses meaningful name)
- PROJECT_CONTEXT: "Consciousness research"
- Policy: personal_research (allows evolution)
```

### Example 3: Technical Specifications
```
User: "Spawn GPT-4 instance for code review, lock identity, deploy to Agent Zero"

System understands:
- MODEL: "GPT-4"
- PURPOSE: "Code review"
- Policy: commercial_project (identity locked)
- IDENTITY_OPERATING: "Agent Zero"
- Asks: "What should I call this instance?"

User: "CodeGuard"

System creates fully specified instance
```

---

## Clarification Protocol

**If system doesn't understand:**

```
User: "Make me one for the thing"

System: "I need more details. What's the purpose or project?"

User: "You know, the city stuff"

System: "Urban planning? I can create an instance for that. Should I call it 'Urban'?"

User: "Yeah, that works"

System: Proceeds with creation
```

**Iterative refinement:**
- System asks minimum necessary questions
- Accepts semantic/loose answers
- Clarifies only when genuinely uncertain
- Proposes defaults based on context
- User can accept or refine

---

**Navigation**:
- **←** Previous: `01_overview_trigger_details.md`
- **→** Next: `03_instance_creation.md`
- **↑** Parent: Self-Replication Protocol Index

**Tags**: #semantic_understanding #clarification_protocol #iterative_refinement #ambiguity_handling #defaults
