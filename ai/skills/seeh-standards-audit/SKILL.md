---
name: seeh-standards-audit
description: Use when auditing an SEEH document for compliance with project standards — naming conventions, approved terminology, required structure, verification requirements, and revision-history formatting; reports pass/fail findings, does not rewrite the document.
---

# SEEH Standards Audit

**Skill ID:** SEEH-SKILL-007
**Name:** SEEH Standards Audit
**Category:** Standards Compliance
**Version:** 0.1.0
**Status:** Draft

---

## Purpose

The SEEH Standards Audit skill checks a document within the Space Engineers Engineering Handbook (SEEH) against the project's standards and reports where it does and does not conform.

Its purpose is to produce an objective, cited compliance assessment covering naming, terminology, required structure, verification requirements, and revision formatting. This skill **reports findings only** — it does not rewrite prose (that is `seeh-technical-edit`), does not reformat Markdown (that is `seeh-markdown-refactor`), and does not judge whether technical content is true (that is `seeh-fact-check`).

---

## Scope

Audits: handbook chapters, engineering standards, templates, build guides, tutorials, reference documents, EDRs, and READMEs.

### Out of Scope

- Editing or reformatting the document.
- Verifying technical accuracy (see `seeh-fact-check`).
- Waiving or changing a standard's requirement.

---

## When To Use

- Reviewing a pull request for standards conformance.
- Onboarding an externally contributed document into SEEH.
- Confirming naming, terminology, and verification requirements before release.
- Periodically auditing the handbook for drift.

---

## Instructions

1. Read the document and determine its type (chapter, standard, template, build guide, tutorial, reference, EDR, README).
2. Check each applicable standard and assign a verdict of **Pass**, **Minor Issues**, **Major Issues**, or **Not Applicable**:
   - **SEEH-000** Project Charter alignment
   - **SEEH-STD-001** Documentation Style Guide
   - **SEEH-STD-002** Naming Standard (document IDs, filenames, block/system names)
   - **SEEH-STD-003** Diagram & Blueprint Standard
   - **SEEH-STD-004** Terminology (Airlock, Interlock, Fail-safe, Verification, Variant, Module, System, Component, Engineering Rationale, etc.)
   - **SEEH-STD-005** Testing & Verification Standard
3. Verify required sections exist for the document type (Purpose, Scope, Requirements, Verification, Revision History, etc.) and list any that are missing.
4. Verify the Revision History table exists and is correctly formatted (Version, Date, Author, Notes) and that the status field uses an approved value.
5. Cite the specific location for every finding and state which rule it violates.
6. Report findings only. Recommend the exact minimal fix for each finding without applying it.

---

## Do Not

- Rewrite prose or restructure the document (report the finding instead).
- Judge whether technical content is *true* (that is `seeh-fact-check`).
- Change a standard's requirement, or waive one without justification.
- Alter document IDs or approved terminology to make something "pass."

---

## Return Format

- **Audit Summary** — document type and overall compliance posture.
- **Compliance Table** — `Standard | Verdict | Findings`.
- **Missing / Malformed Sections** — list with locations.
- **Revision & Naming Findings** — specific issues with IDs, names, and revision formatting.
- **Recommended Fixes** — minimal, ordered by severity (Major before Minor).

---

## Related Skills

- `seeh-technical-edit` — applies editorial fixes.
- `seeh-markdown-refactor` — repairs structure and formatting findings.
- `seeh-fact-check` — verifies technical accuracy.
- `seeh-release-review` — consumes audit results at the release gate.

---

## Guiding Principle

> **Check against the standard. Cite the finding. Leave the fix to the author.**

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / Claude | Initial draft. |
