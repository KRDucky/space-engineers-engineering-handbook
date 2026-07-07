---
name: seeh-mod-review
description: Use when deciding a Space Engineers mod's SEEH support level based on engineering value, compatibility, and maintainability; produces a justified recommendation, not a redesign.
---

# SEEH Mod Review

**Skill ID:** SEEH-SKILL-002
**Name:** SEEH Mod Review
**Category:** Research
**Version:** 0.2.0
**Status:** Draft

---

## Purpose

The SEEH Mod Review skill evaluates Space Engineers mods for inclusion within the Space Engineers Engineering Handbook (SEEH) and assigns each a support level.

The evaluation focuses on engineering value rather than popularity. It **does not** rewrite handbook content or redesign engineering systems, and it **does not** gather fresh evidence from scratch — it builds on evidence from seeh-research.

---

## Scope

This skill evaluates:

- Workshop mods
- GitHub-hosted mods
- Supporting APIs
- Quality-of-Life mods
- Engineering expansion mods
- Automation mods
- Infrastructure mods

### Out of Scope

- Rewriting handbook content or redesigning engineering systems.
- Primary evidence-gathering across many sources (see seeh-research).
- Verifying specific technical claims about a mod (see seeh-fact-check).

---

## When To Use

Use this skill when:

- Evaluating a new mod for SEEH.
- Comparing multiple mods.
- Reviewing an existing supported mod.
- Determining whether a mod should become an implementation variant.
- Assessing compatibility between multiple mods.

---

## Inputs

Expected inputs include:

- Steam Workshop URL
- GitHub repository
- Mod name
- Mod ID
- Author
- Collection
- Existing handbook chapter
- Research findings from seeh-research

---

## Evaluation Workflow

1. Identify the mod.
2. Locate official documentation.
3. Locate the Workshop page.
4. Identify dependencies.
5. Determine maintenance status.
6. Evaluate engineering usefulness.
7. Compare alternatives.
8. Assess compatibility.
9. Assign a SEEH support level and justify it.

---

## Evaluation Criteria

### General

- Purpose
- Primary features
- Dependencies
- Workshop rating
- Active development
- Maintainer
- Open source
- Documentation quality

### Engineering

Assess each question neutrally. Some answers are positive signals; some (marked) are negative signals for SEEH.

- Does it improve engineering depth?
- Does it improve maintainability?
- Does it encourage good engineering practices?
- Does it reduce repetitive tasks?
- Does it add meaningful automation?
- Does it support multiplayer environments?
- Does it replace engineering with mere convenience? *(negative signal — counts against SEEH support)*

### Technical

- Performance impact
- Multiplayer compatibility
- Dedicated server support
- Save compatibility
- Grid compatibility
- Known conflicts
- API availability

### Documentation Quality

Determine whether documentation exists for:

- Installation
- Configuration
- Examples
- Troubleshooting
- Changelog
- Version history

---

## Recommendation Levels

Choose one and explain the reasoning.

| Rating | Meaning |
|--------|---------|
| Recommended | Strongly encouraged for SEEH variants |
| Supported | Fully documented but optional |
| Optional | Mentioned but not relied upon |
| Experimental | Requires additional testing |
| Not Recommended | Does not align with SEEH goals |

---

## Output Format

Produce the following sections. This is the single canonical output template for this skill.

- **Executive Summary**
- **Mod Overview**
- **Engineering Analysis**
- **Advantages**
- **Disadvantages**
- **Compatibility**
- **Dependencies**
- **Alternatives**
- **Recommendation** — the support level from the table above, with justification.
- **References**

---

## Standards & Related Skills

Supports:

- SEEH-000 Project Charter
- SEEH-STD-001 Documentation Style Guide
- SEEH-STD-002 Naming Standard
- SEEH-STD-005 Testing & Verification Standard
- Handbook implementation variants

Related skills:

- **seeh-research** — supplies the mod evidence this skill evaluates.
- **seeh-fact-check** — verifies specific technical claims about the mod.

---

## Quality Checklist

Before completing the review:

- [ ] Official documentation reviewed
- [ ] Workshop page reviewed
- [ ] Dependencies identified
- [ ] Compatibility evaluated
- [ ] Multiplayer considered
- [ ] Engineering value assessed
- [ ] Alternatives compared
- [ ] Recommendation justified

---

## Guiding Principle

> **Evaluate capability, reliability, and engineering value—not popularity.**

---

## Success Criteria

A successful mod review:

- Assigns one support level with clear justification.
- Distinguishes engineering value from popularity.
- Documents dependencies, compatibility, and known conflicts.
- Compares at least one alternative where one exists.
- Cites its sources.

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / Claude | Technical-editor pass: fixed heading hierarchy; merged Expected Outputs and Deliverable Format into one template; reframed engineering criteria as questions and flagged the negative signal; added Success Criteria, scope boundary, related-skill handoffs, and titled standard references. |
