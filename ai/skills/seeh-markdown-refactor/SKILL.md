---
name: seeh-markdown-refactor
description: Use when refactoring messy SEEH Markdown into a cleaner, more consistent structure — heading hierarchy, tables, lists, code blocks, spacing, and links — while preserving the exact meaning, technical intent, wording, and document identity; formatting only, not a copy edit.
---

# SEEH Markdown Refactor

**Skill ID:** SEEH-SKILL-010
**Name:** SEEH Markdown Refactor
**Category:** Markdown Structure
**Version:** 0.1.0
**Status:** Draft

---

## Purpose

The SEEH Markdown Refactor skill cleans up the structure and formatting of a document within the Space Engineers Engineering Handbook (SEEH) without changing what it says.

Its purpose is to normalize heading hierarchy, tables, lists, code blocks, spacing, and links to SEEH-STD-001 while preserving meaning, technical intent, wording, and document identity exactly. This skill **changes formatting and structure only** — it does not reword prose or fix grammar (that is `seeh-technical-edit`) and does not alter technical content.

---

## Scope

Refactors the Markdown of any SEEH document: chapters, standards, templates, build guides, tutorials, references, EDRs, and READMEs.

### Out of Scope

- Rewording prose, fixing grammar, or changing tone (see `seeh-technical-edit`).
- Altering technical content, values, procedures, diagrams, or rationale.
- Reorganizing content beyond what is needed for a valid, consistent structure.

---

## When To Use

- A document has broken or inconsistent Markdown from multiple editors or a paste-in.
- Heading levels, tables, or code blocks render incorrectly.
- Formatting needs to be normalized before an edit, audit, or release pass.
- Converting rough notes into SEEH-standard document structure.

---

## Instructions

1. Read the document and preserve its meaning exactly. Change formatting and structure, not the words that carry technical content.
2. Normalize heading hierarchy (single H1, no skipped levels), list style, table formatting, code-fence language tags, blank-line spacing, and link syntax to SEEH-STD-001.
3. Preserve ASCII diagrams and blueprint blocks verbatim; if a diagram's fencing is broken, repair only the fence, never the diagram content (per SEEH-STD-003).
4. Reorder or regroup content only when it is clearly misplaced, and only enough to restore a logical structure — never a wholesale reorganization.
5. Keep document IDs, cross-references, filenames, terminology, and the Revision History table intact and correctly formatted.
6. Where prose itself (not its formatting) is unclear, do not rewrite it — note it for `seeh-technical-edit`.
7. Produce the cleaned Markdown plus a structural change note so nothing silently shifts.

---

## Do Not

- Reword prose, fix grammar, or change tone (that is `seeh-technical-edit`).
- Alter technical content, values, procedures, diagrams, or rationale.
- Change document IDs, naming, terminology, or cross-references.
- Reorganize the document beyond what is needed to make the structure valid and consistent.

---

## Return Format

- **Summary** — the structural problems found.
- **Refactored Document** — the full cleaned Markdown.
- **Structure Change Notes** — table of `Change | Reason` (e.g., heading normalization, list style, code fences).
- **Handoffs** — any prose-level clarity issues noted for `seeh-technical-edit`.

---

## Related Skills

- `seeh-technical-edit` — handles prose-level clarity issues noted during refactor.
- `seeh-standards-audit` — confirms SEEH-STD-001 formatting compliance.
- `seeh-blueprint-review` — reviews diagram/blueprint content preserved here.

---

## Guiding Principle

> **Fix the formatting. Touch none of the meaning.**

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / Claude | Initial draft. |
