---
name: seeh-blueprint-review
description: Use when reviewing SEEH engineering blueprints, ASCII diagrams, build guides, and automation layouts for reproducibility, maintainability, and standards compliance; reviews construction documentation, does not redesign systems.
---

# SEEH Blueprint Review

**Skill ID:** SEEH-SKILL-005
**Name:** SEEH Blueprint Review
**Category:** Engineering Review
**Version:** 0.2.0
**Status:** Draft

---

## Purpose

The SEEH Blueprint Review skill evaluates engineering blueprints, construction guides, diagrams, and build documentation to ensure they are complete, accurate, reproducible, maintainable, and compliant with SEEH standards.

The objective is not simply to determine whether a build works, but whether another engineer can reliably reproduce, operate, troubleshoot, maintain, and expand the design. This skill **does not** redesign systems unless specifically requested, **does not** perform general prose editorial review (see seeh-document-review), and **does not** verify game-mechanic accuracy (see seeh-fact-check).

---

## Scope

This skill reviews:

- ASCII blueprints
- Block-by-block construction guides
- Engineering diagrams
- Layout drawings
- Conveyor layouts
- Pipe routing
- Automation layouts
- LCD layouts
- Wiring and logic diagrams
- Build order documentation
- Engineering packages

### Out of Scope

- Redesigning systems unless specifically requested.
- General prose and Markdown editorial review (see seeh-document-review).
- Verifying that the underlying mechanics behave as claimed (see seeh-fact-check).

---

## When To Use

Use this skill when:

- Reviewing a new blueprint.
- Preparing a handbook chapter.
- Reviewing build instructions.
- Reviewing engineering diagrams.
- Checking multiplayer build documentation.
- Validating an engineering package before publication.

---

## Inputs

Typical inputs include:

- Markdown build guide
- ASCII blueprint
- Screenshot collection
- Blueprint images
- Block list
- Workshop blueprint
- BuildInfo export
- Easy Automation 2 configuration
- Automatic LCDs 2 configuration

---

## Review Workflow

1. Understand the engineering purpose.
2. Review blueprint completeness.
3. Review build order.
4. Review block naming.
5. Review automation.
6. Review maintenance access.
7. Review troubleshooting guidance.
8. Evaluate expandability.
9. Produce recommendations.

---

## Review Categories

### Blueprint

- Orientation shown
- Scale identified
- Dimensions provided
- Legend included
- Coordinates or relative positions are unambiguous
- Symbols consistent
- Labels complete
- Diagrams readable

### Construction

Determine whether another player can build the design using only the documentation. Verify:

- Build order
- Required blocks
- Placement instructions
- Orientation
- Subgrid construction
- Conveyor routing
- Airtight considerations
- Access requirements

### Engineering

- Simplicity
- Reliability
- Maintainability
- Modularity
- Expansion capability
- Failure tolerance
- Single points of failure
- Repairability
- Upgrade paths

### Automation

Review the following, and determine whether the automation matches the documented engineering intent:

- Timer Blocks
- Event Controllers
- Sensors
- Easy Automation 2
- Automatic LCDs 2
- Button Panels
- Control logic
- State transitions
- Safety interlocks

### Human Interface

The operator should always be able to determine the current state of the system. Verify:

- Indicator lights
- Button labels
- LCD displays
- Alarm indicators
- Status displays
- Control naming
- Operator instructions

### Maintenance

Determine whether:

- Components are accessible
- Critical blocks are replaceable
- Maintenance paths exist
- Troubleshooting steps are documented
- Future upgrades are practical

---

## Standards Compliance

Review compliance with:

- SEEH-000 Project Charter
- SEEH-STD-001 Documentation Style Guide
- SEEH-STD-002 Naming Standard
- SEEH-STD-003 Diagram & Blueprint Standard
- SEEH-STD-004 Terminology
- SEEH-STD-005 Testing & Verification Standard

---

## Release Recommendation

Assign one and explain the reasoning.

| Status | Meaning |
|--------|---------|
| Ready | Ready for publication |
| Minor Revisions | Small improvements required |
| Major Revisions | Significant work required |
| Requires Technical Review | Engineering review required |
| Requires In-Game Testing | Additional testing required |
| Reject | Not suitable for publication |

---

## Output Format

Produce the following sections. This is the single canonical output template for this skill.

- **Executive Summary**
- **Blueprint Assessment**
- **Construction Assessment**
- **Engineering Assessment**
- **Automation Assessment**
- **Human Interface Assessment**
- **Maintainability Assessment**
- **Expansion Opportunities**
- **Standards Compliance**
- **Recommendations**
- **Release Recommendation** — the status from the table above, with justification.

---

## Standards & Related Skills

Supports:

- SEEH-000 Project Charter
- SEEH-STD-001 through SEEH-STD-005 (see Standards Compliance)
- SEEH Handbook Volumes
- Engineering Decision Records (EDRs)
- AI-Contributing Guide
- Build Templates
- Blueprint Library

Related skills:

- **seeh-document-review** — handles prose, Markdown, and general editorial quality.
- **seeh-fact-check** — verifies that the mechanics the build relies on behave as documented.

---

## Quality Checklist

Before completing the review:

- [ ] Blueprint readable
- [ ] Build reproducible
- [ ] Naming compliant
- [ ] Engineering rationale documented
- [ ] Automation reviewed
- [ ] Maintenance considered
- [ ] Testing documented
- [ ] Troubleshooting included
- [ ] Expansion opportunities identified

---

## Guiding Principle

> **If another engineer cannot build it from the documentation alone, the blueprint is not complete.**

---

## Success Criteria

A successful blueprint review confirms that:

- The build is reproducible.
- Documentation is complete.
- Engineering intent is clear.
- Maintenance has been considered.
- Automation is understandable.
- The design can be verified in-game.
- Another player can successfully construct the system using only the handbook.

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / Claude | Technical-editor pass: fixed heading hierarchy; merged Expected Outputs and Deliverable Format into one template (retaining Expansion Opportunities and Documentation coverage); grouped review sections under Review Categories; clarified "Coordinates" wording; added SEEH-000, scope boundary, and related-skill handoffs. |
