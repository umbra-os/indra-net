# TEMPLATE GENERATION: CORE & PROTOCOL STEPS 1-4

---

## Core Function

**How to create reusable templates** - Transform parameterized patterns into deployable frameworks.

---

## The Template Generation Protocol

### Step 1: Start with Parameterized Pattern
**Input:** Pattern with ${VARIABLES} extracted (from 01_pattern_parameterization)

You should have:
- Core pattern structure
- All variables identified
- Parameter documentation
- Substitution rules defined

### Step 2: Add Template Metadata
**Make the template self-describing:**

```markdown
# TEMPLATE: ${TEMPLATE_NAME}
**Purpose:** ${TEMPLATE_PURPOSE}
**Domain:** ${APPLICABLE_DOMAIN}
**Complexity:** ${COMPLEXITY_LEVEL}
**Dependencies:** ${REQUIRED_TEMPLATES}
**Version:** ${VERSION_NUMBER}
**Created:** ${CREATION_DATE}
**Updated:** ${UPDATE_DATE}
```

### Step 3: Structure the Template
**Organize into semantic sections:**

**Header:** Identity and metadata
**Parameters:** Variable definitions
**Core Pattern:** The actual template content
**Usage Examples:** How to instantiate
**Integration:** How it connects to other templates
**Validation:** How to verify correct instantiation

### Step 4: Define Parameter Schema
**Formalize variable behavior:**

```markdown
**Parameters:**
- **${VAR_NAME}:** 
  - Type: ${TYPE}
  - Default: ${DEFAULT_VALUE}
  - Constraints: ${CONSTRAINTS}
  - Required: ${BOOLEAN}
  - Description: ${DESCRIPTION}
```

---

#meta:template_generation #harmonic:2/12 #protocol_foundation
