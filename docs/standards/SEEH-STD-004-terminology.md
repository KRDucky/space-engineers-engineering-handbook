# SEEH-STD-004 — Terminology

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-004  
**Revision:** 0.2.3  
**Status:** Released  
**Last Updated:** 2026-07-07

---

## 1. Purpose

This standard defines the canonical terminology used throughout the Space Engineers Engineering Handbook (SEEH).

All contributors, reviewers, and AI assistants should use these definitions consistently unless a document explicitly defines a more specific local meaning.

The purpose of this standard is consistency rather than completeness.

---

## 2. Scope

This standard applies to terminology used in:

- Project documents
- Standards
- Engineering guides
- Build guides
- Blueprint documentation
- Tutorials
- References
- Engineering Decision Records
- Diagrams
- Tables
- Examples
- AI-assisted drafts and reviews

This standard governs terminology only.

Naming patterns for files, documents, blocks, groups, modules, blueprints, and variants are governed by `SEEH-STD-002`.

Document formatting is governed by `SEEH-STD-001`.

Diagram and blueprint presentation is governed by `SEEH-STD-003`.

Testing and verification requirements are governed by `SEEH-STD-005`.

---

## 3. Authority

`SEEH-STD-004` is the canonical terminology standard for SEEH.

When another document uses a term defined here, it should use the term consistently with this standard.

A document may define a more specific meaning for a term only when necessary, and must state that the definition is local to that document.

Do not create synonyms casually.

---

## 4. General Principles

- Use the defined term whenever possible.
- Avoid creating synonyms unless necessary.
- Prefer engineering terminology over gaming slang.
- Capitalize official game block names.
- Use consistent abbreviations throughout the handbook.

---

## 5. Engineering Terms

### Airlock

A pressurization system that allows an engineer to pass between two environments with different atmospheric conditions (typically interior and exterior) without exposing either environment directly to the other.

An Airlock is the handbook's primary worked example of a `System` (below) and typically combines Airtight Doors, an Air Vent, and an interlock to prevent both doors from opening at the same time.

Example:

- `AL_A01 — Personnel Airlock`

---

### System

A collection of components working together to perform a defined engineering function.

Examples:

- Airlock System
- Power Distribution System
- Conveyor System

---

### Component

An individual block, device, or software element that forms part of a larger system.

Examples:

- Air Vent
- Sensor
- Interior Light
- LCD Panel

---

### Module

A reusable engineering package designed to be incorporated into larger builds with minimal modification.

Examples:

- Personnel Airlock Module
- Hydrogen Processing Module
- Battery Bank Module

---

### Assembly

A collection of related modules or systems performing a larger engineering function.

Examples:

- Refinery Assembly
- Reactor Assembly
- Hangar Assembly

---

### Subsystem

A system contained within another system.

Example:

The pressurization logic inside an airlock.

---

### Variant

An alternative implementation of the same engineering design, built to a different Implementation Level (see Section 10) or otherwise adapted from the base design while solving the same engineering problem.

A variant should clearly state what changes from the base design, what additional requirements it introduces, why it exists, and whether it has been tested.

Examples:

- Vanilla Variant
- Engineering Variant
- Server Edition Variant

Variant naming is governed by `SEEH-STD-002`, Section 24.

---

## 6. Documentation Terms

### Standard

A document defining mandatory or recommended engineering practices.

Example:

`SEEH-STD-001`

---

### Guide

A procedural document explaining how to accomplish a task.

---

### Reference

A document containing factual information intended for lookup.

---

### Template

A reusable document structure.

---

### Blueprint

The complete engineering package required to reproduce a design.

A blueprint may include:

- ASCII diagrams
- Build order
- Configuration
- Automation
- Testing
- Troubleshooting

---

### Verification

The process of confirming that a design, procedure, or technical claim behaves as documented, typically by testing it in-game against defined expected results.

Verification applies at two levels: a document's own Verification section (see `SEEH-STD-001`, Section 24) describes how to test a specific procedure, while the Verification Vocabulary (Section 12, below) describes how reliable a given technical claim is.

---

### Engineering Decision Record (EDR)

A document capturing the rationale, alternatives considered, and outcome of a significant long-term engineering or documentation decision.

EDRs are used when a decision affects naming, folder structure, documentation standards, implementation levels, mod support, system architecture, blueprint philosophy, testing requirements, or long-term compatibility (see `SEEH-000 — Project Charter`, Section 13).

---

## 7. Engineering Design Terms

### Interlock

A control rule preventing unsafe or undesirable system states.

Example:

Preventing both airlock doors from opening simultaneously.

---

### Fail-safe

A design that transitions to a safer state when a fault occurs.

---

### Redundancy

Intentional duplication of critical components to improve reliability.

---

### Single Point of Failure (SPOF)

A component whose failure causes the entire system to fail.

Designs should minimize SPOFs where practical.

---

### Maintainability

The ease with which a system can be inspected, repaired, upgraded, or modified.

---

### Expandability

The ease with which additional functionality can be added without redesigning the original system.

---

### Modularity

The degree to which a system can be divided into reusable modules.

---

## 8. Documentation States

The following states describe the status of a *document* — not the reliability of a technical claim within it. For claim-level status, see Verification Vocabulary below.

### Draft

Initial work.

Not verified.

---

### Review

Under editorial or technical review.

---

### Experimental

Requires further testing. Distinct from the Verification Vocabulary use of "Experimental," which describes a technical claim or behavior that may change, not the document's own editorial state.

---

### Verified

Successfully tested in-game. Distinct from the Verification Vocabulary use of "Verified," which describes the reliability of a specific technical claim rather than the document's overall lifecycle state.

---

### Released

Approved for general use.

---

### Deprecated

Superseded by a newer document. Distinct from the Verification Vocabulary use of "Deprecated," which describes a superseded technical claim.

---

### Archived

Retained for historical reference.

---

## 9. Quality Levels

The following terms describe how mature a design or document is, as defined in `SEEH-000 — Project Charter`, Section 10.

Quality Levels are distinct from Documentation States above: Documentation States describe a document's editorial lifecycle (Draft, Review, Released, and so on), while Quality Levels describe confidence in the *engineering design itself* — how far it has progressed from written concept to community-verified build.

### Bronze (Written)

The document exists and is internally complete.

---

### Silver (Built)

The design has been built in-game.

---

### Gold (Multiplayer Tested)

The design has been tested with multiple players.

---

### Platinum (Community Verified)

The design has been verified by multiple independent users or servers.

---

For the full definitions and context, see `SEEH-000 — Project Charter`, Section 10.

---

## 10. Implementation Levels

### Level 0

Vanilla

---

### Level 1

Quality of Life

---

### Level 2

Engineering

---

### Level 3

Enhanced Engineering

---

### Level 4

Server Edition

---

For the authoritative baseline definitions, see `SEEH-000 — Project Charter`, Section 9. For full descriptions, objectives, and recommended mods for each level, see `SEEH-AI-CTX-002 — Implementation Levels`, pending promotion of that expanded detail to a formal standard.

---

## 11. AI Roles

### Systems Architect

Designs standards, systems, and documentation architecture.

---

### Technical Editor

Improves documentation quality while preserving engineering intent.

---

### Research Engineer

Verifies facts, citations, and current technical information.

---

### Human Project Lead

Provides final approval and performs in-game validation.

---

See `SEEH-000 — Project Charter`, Section 14, for the current AI Collaboration Model. AI context files may provide additional assistant-specific role guidance, but the repository charter remains authoritative.

---

## 12. Verification Vocabulary

The following terms describe the reliability of a technical claim, engineering technique, or configuration — not the status of the document containing it (see Documentation States above).

Relative strength, strongest to weakest: **Verified > Confirmed > Community Consensus > Unverified.** Experimental and Deprecated fall outside this scale — both indicate a claim requires re-evaluation rather than occupying a fixed rank.

### Verified

Supported by authoritative documentation or repeatable testing. Distinct from the Documentation States use of "Verified," which describes a document's own tested lifecycle state rather than a specific technical claim.

---

### Confirmed

Observed during testing but not yet independently verified.

---

### Unverified

Requires additional evidence.

---

### Community Consensus

Supported by multiple community sources but lacking authoritative documentation.

---

### Experimental

Behavior may change or is insufficiently understood. Distinct from the Documentation States use of "Experimental," which describes a document's own editorial state rather than a specific technical claim.

---

### Deprecated

A claim, technique, or configuration that was previously accurate but has been superseded by a game update, mod change, or improved design. Distinct from the Documentation States use of "Deprecated," which refers to a superseded *document*.

---

## 13. Naming Conventions

Throughout SEEH:

- Use **Air Vent**, not "oxygen vent."
- Use **Event Controller**, not "event block."
- Use **Timer Block**, not "timer."
- Use **Interior Light**, not "light."
- Use **Programmable Block** in prose. The abbreviation "PB" may be used only inside code blocks, script comments, or space-constrained tables — never in explanatory text.
- Refer to mods by their published names on first mention.

---

## 14. Preferred Writing

Prefer:

- "Verify"
- "Configure"
- "Install"
- "Construct"
- "Assemble"
- "Inspect"
- "Maintain"

Avoid:

- "Just"
- "Obviously"
- "Simply"
- "Easy"

---

## 15. Guiding Principle

> Engineering succeeds through shared language.

Consistent terminology produces consistent documentation.

---

## 16. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.1.1 | 2026-07-07 | Claude / Technical Editor | Added EDR definition; added Deprecated to Verification Vocabulary; clarified scope of duplicate terms (Verified, Experimental); standardized "Community Consensus" capitalization; clarified PB naming rule; added cross-references to SEEH-AI-CTX-002 and SEEH-AI-CTX-003; standardized document-ID formatting. |
| 0.1.2 | 2026-07-07 | Claude / Technical Editor | Added "Quality Levels" section (Bronze/Silver/Gold/Platinum), cross-referencing SEEH-000 §10, to close a terminology gap flagged in the SEEH-000 standards audit. |
| 0.1.3 | 2026-07-07 | Claude / Technical Editor | Updated EDR entry's trigger list and citation to match SEEH-000 §13 (added Testing requirements, Long-term compatibility); added SEEH-000 §14 as primary reference for AI Roles mapping, alongside existing SEEH-AI-CTX-003 §13 citation. Closes cross-reference drift flagged in SEEH-000 review. |
| 0.1.4 | 2026-07-07 | Claude / Technical Editor | Fixed duplicated heading marker on the EDR entry; relocated the Quality Levels section to follow the complete Documentation States term list (Draft–Archived), resolving a heading-nesting defect where those terms structurally fell under Quality Levels instead of Documentation States. No definitions, terminology, or document IDs changed. |
| 0.1.5 | 2026-07-07 | Claude / Technical Editor | Restored the correct Verification Vocabulary definition of "Deprecated" (a superseded claim/technique/configuration) after it had been overwritten with the Documentation States definition; corrected its disambiguation clause to point outward at Documentation States instead of at itself; added missing blank line before the "## Deprecated" heading in Verification Vocabulary for spacing consistency with the rest of the document. Added Quality Levels secondary names (Written/Built/Multiplayer Tested/Community Verified) and the Documentation States reciprocal disambiguation note, both applied in this same pass, are retained unchanged. |
| 0.2.0 | 2026-07-07 | Ian Comings / ChatGPT | Promoted terminology from `SEEH-AI-CTX-001` into formal standard `SEEH-STD-004`; added Project metadata, Scope, and Authority sections; renumbered major sections to comply with `SEEH-STD-001`; preserved existing terminology definitions, documentation states, quality levels, implementation levels, verification vocabulary, naming conventions, and preferred writing vocabulary. |
| 0.2.1 | 2026-07-07 | Claude / Technical Editor | Editorial pass: tightened the two-sentence rule in Section 3 (Authority) on local term definitions into a single sentence; smoothed the closing cross-reference in Section 10 (Implementation Levels) to `SEEH-AI-CTX-002`. No terminology, definitions, document IDs, or structure changed. Flagged the Section 10 dependency on an AI-context file (rather than a formal standard) as an open item for a future EDR, not resolved in this pass. |
| 0.2.2 | 2026-07-07 | Claude / Technical Editor | Standards-audit fixes: added canonical `Airlock` definition (Section 5) and `Variant` definition (Section 5), closing completeness gaps confirmed against `SEEH-STD-002` and `implementation-levels.md`, where both terms were used extensively without a canonical definition; added a standalone `Verification` definition (Section 6) to match the completeness of neighboring Documentation Terms. Added reciprocal per-entry disambiguation notes to `Verified` and `Experimental` in both Documentation States (Section 8) and Verification Vocabulary (Section 12), matching the treatment already given to `Deprecated`. Updated Section 10's closing note to cite `SEEH-000`, Section 9 (the authoritative baseline Implementation Levels table) alongside the existing `SEEH-AI-CTX-002` citation for expanded detail, rather than citing only the AI-context file. Confirmed via full-document standards audit that the existing `SEEH-000` cross-references in Sections 9, 11, and 14 (Section 10, Section 13, Section 14 respectively) are accurate against the authoritative charter; a prior audit pass had flagged these against a condensed proxy document and that flag is retracted. No document ID, approved terminology, or naming convention changed. **Open item, not resolved in this pass:** the working filename for this document (`SEEH-STD-004-terminology-v0.2.1.md`) embeds a version suffix inconsistent with the no-version filename pattern used by sibling standards under `SEEH-STD-002`, Section 19; recommend confirming the intended repository filename before commit. |
| 0.2.3 | 2026-07-07 | Ian Comings / Human Project Lead | Promoted Status from Draft to Released following completed Technical Edit (0.2.1) and Standards Audit (0.2.2) passes, with all blocking findings resolved. Confirmed the repository filename (SEEH-STD-004-terminology.md) now complies with SEEH-STD-002 §19, closing the open item logged in 0.2.2. Confirmed all SEEH-000 cross-references (§9 Quality Levels, §11 AI Roles, §14 Implementation Levels baseline) verified accurate against the authoritative charter. No content changes since 0.2.2. |
