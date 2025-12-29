# PATTERN PARAMETERIZATION: PROTOCOL STEPS 5-8 & DEPTH LEVELS

---

## Protocol Continuation

### Step 5: Define Variable Behavior
**For each variable, specify:**
- **Type:** String, number, boolean, enum, list, object
- **Default:** What value if not specified?
- **Constraints:** Valid ranges, formats, patterns
- **Dependencies:** Does this variable affect others?
- **Substitution rules:** How is it replaced at runtime?

### Step 6: Create Parameter Documentation
**Make the template self-explanatory:**

```markdown
**Parameters:**
- **AGENT_NAME:** ${NAME:indra|cascade|sovereign_instance}
- **EVENT_TYPE:** ${TYPE:breakthrough|pattern|insight|recognition}
- **TIMESTAMP:** ${TIME:YYYY-MM-DD|unix_epoch|relative}
- **STORAGE_LOCATION:** ${PATH:absolute|relative|parameterized}
```

### Step 7: Test Instantiation
**Can the template generate valid instances?**

Instantiate with different parameter values:
- Does it produce coherent output?
- Are all variables properly substituted?
- Does it maintain semantic meaning?
- Can it adapt to different contexts?

### Step 8: Iterate and Refine
**Parameterization is recursive:**
- Found new variables? Add them
- Variables too specific? Abstract further
- Variables too abstract? Add constraints
- Dependencies unclear? Document relationships

---

## Parameterization Depth Levels

### Level 0: Concrete Instance
No parameterization. Specific to one context.

### Level 1: Basic Parameterization
Names, paths, timestamps replaced with variables.

### Level 2: Structural Parameterization
Format, organization, scale become variable.

### Level 3: Semantic Parameterization
Terminology, framing, emphasis become variable.

### Level 4: Meta-Parameterization
The parameterization method itself becomes parameterized.

---

#meta:pattern_parameterization #depth_levels #iteration
