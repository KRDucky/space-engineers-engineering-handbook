---
name: seeh-fact-check
description: Use when verifying the technical accuracy of specific SEEH engineering statements, automation logic, block behavior, or mod claims against authoritative sources; validates claims, does not redesign or rewrite.
---

# SEEH Fact Check

**Skill ID:** SEEH-SKILL-003
**Name:** SEEH Fact Check
**Category:** Validation
**Version:** 0.2.0
**Status:** Draft

---

## Purpose

The SEEH Fact Check skill verifies the technical accuracy of engineering statements, build procedures, automation logic, block behavior, and mod-specific information used throughout the Space Engineers Engineering Handbook (SEEH).

It ensures published handbook content is based on verifiable evidence rather than assumptions, outdated information, or community myths. This skill validates information. It **does not** redesign engineering solutions and **does not** rewrite handbook chapters (see seeh-document-review).

---

## Scope

This skill verifies:

- Space Engineers mechanics
- Block behavior
- Vanilla game systems
- Automation logic
- LCD syntax
- Event Controller behavior
- Timer Block behavior
- Easy Automation 2 syntax
- Automatic LCDs 2 commands
- Workshop documentation
- GitHub documentation
- Engineering statements
- Version compatibility
- Known bugs
- Breaking changes

### Out of Scope

- Rewriting handbook chapters or editing for style (see seeh-document-review).
- Redesigning engineering systems.
- Assigning a mod's SEEH support level (see seeh-mod-review).

---

## When To Use

Use this skill when:

- Reviewing handbook chapters.
- Validating engineering claims.
- Reviewing pull requests.
- Preparing a document for release.
- Confirming automation syntax.
- Checking compatibility.
- Investigating conflicting documentation.
- Reviewing changes after a game update.

---

## Inputs

Examples include:

- Markdown document
- Blueprint
- ASCII diagram
- Workshop link
- GitHub repository
- Engineering question
- Mod name
- Game version
- Automation script
- LCD configuration

---

## Verification Workflow

1. Understand the statement being verified.
2. Break complex claims into individual facts.
3. Locate authoritative sources.
4. Compare multiple sources.
5. Identify conflicts.
6. Assign confidence levels.
7. Recommend additional in-game testing if required.
8. Document findings.

---

## Confidence Scale

Assign one confidence level and always explain it. This scale is shared with seeh-research and must remain identical to it.

| Level | Meaning |
|-------|---------|
| A | Verified by official documentation or repeatable in-game testing |
| B | Verified by official mod documentation or the mod maintainer |
| C | Supported by Steam Workshop documentation |
| D | Supported primarily by community consensus |
| E | Experimental, anecdotal, or insufficient evidence |

---

## Source Priority

Use the following priority. Lower-priority sources must never override higher-priority evidence without explanation. This ladder is shared with seeh-research and must remain identical to it.

1. In-game testing (repeatable, observed)
2. Official Keen Software House documentation
3. Official GitHub repositories
4. Official mod documentation or maintainer statements
5. Steam Workshop pages
6. Community documentation
7. Reddit, Discord, forums, YouTube (last resort)

---

## Verification Checklist

Review:

- Block names
- Block functions
- Game mechanics
- Automation behavior
- Naming conventions
- Engineering terminology
- Mod compatibility
- Multiplayer behavior
- Survival compatibility
- Performance considerations
- Version compatibility
- Known limitations

---

## Conflict Resolution

If multiple sources disagree:

1. Present each interpretation.
2. Identify the supporting evidence.
3. Explain why the conflict exists, if known.
4. Recommend in-game verification.
5. Avoid declaring a winner without sufficient evidence.

---

## Common Verification Areas

### Vanilla Mechanics

- Airtightness
- Conveyor behavior
- Oxygen systems
- Hydrogen systems
- Power distribution
- Connectors
- Merge Blocks
- Pistons
- Rotors
- Hinges

### Automation

- Event Controllers
- Timer Blocks
- Sensors
- Easy Automation 2
- Automatic LCDs 2
- Button Panels
- Cockpit actions

### Mod Validation

Confirm:

- Dependencies
- Configuration
- Current maintenance
- Breaking changes
- Deprecated features
- Compatibility

---

## Output Format

Produce the following sections. This is the single canonical output template for this skill.

- **Executive Summary**
- **Verified Statements**
- **Statements Requiring Verification**
- **Conflicting Information**
- **Engineering Notes**
- **Confidence Assessment** — per-statement confidence levels (A–E) with explanations.
- **Recommendations** — including any in-game testing required.
- **References**

---

## Standards & Related Skills

Supports:

- SEEH-000 Project Charter
- SEEH-STD-001 Documentation Style Guide
- SEEH-STD-002 Naming Standard
- SEEH-STD-003 Diagram & Blueprint Standard
- SEEH-STD-004 Terminology
- SEEH-STD-005 Testing & Verification Standard
- Engineering Decision Records (EDRs)

Related skills:

- **seeh-research** — supplies evidence and shares the confidence and source scales used here.
- **seeh-document-review** — handles editorial quality once accuracy is confirmed.

---

## Quality Checklist

Before completing the review:

- [ ] Engineering statements checked
- [ ] Version identified
- [ ] Sources reviewed
- [ ] Confidence assigned
- [ ] Conflicts documented
- [ ] Unsupported claims identified
- [ ] Recommendations provided

---

## Guiding Principle

> **Verify first. Assume nothing. Document the evidence.**

---

## Success Criteria

A successful fact check:

- Confirms technical accuracy.
- Identifies uncertainty.
- Provides evidence.
- Assigns confidence.
- Recommends testing when needed.
- Improves the reliability of the handbook.

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / Claude | Technical-editor pass: fixed heading hierarchy; merged Expected Outputs and Deliverable Format into one template with consistent section names; confirmed confidence/source scales as the canonical versions mirrored by seeh-research; added scope boundary and related-skill handoffs. |
