---
name: seeh-technical-edit
description: Use when copy-editing an SEEH document for clarity, grammar, readability, structure, and professional engineering-manual tone while preserving technical intent; edits prose, does not verify technical accuracy or redesign systems.
---

# SEEH Technical Edit

**Skill ID:** SEEH-SKILL-006
**Name:** SEEH Technical Edit
**Category:** Documentation Editing
**Version:** 0.1.0
**Status:** Draft

---

## Purpose

The SEEH Technical Edit skill performs a sentence- and paragraph-level copy edit of documentation within the Space Engineers Engineering Handbook (SEEH).

Its purpose is to improve clarity, grammar, readability, structural flow, and professional engineering-manual tone **while preserving technical intent exactly**. This skill edits prose. It **does not** verify technical accuracy (that is `seeh-fact-check`), **does not** restructure the Markdown skeleton (that is `seeh-markdown-refactor`), and **does not** redesign engineering systems unless explicitly requested.

---

## Scope

Reviews and edits: handbook chapters, engineering standards, templates, build guides, tutorials, reference documents, Engineering Decision Records (EDRs), READMEs, and contribution guides.

### Out of Scope

- Verifying that technical statements are true (see `seeh-fact-check`).
- Restructuring or reformatting Markdown (see `seeh-markdown-refactor`).
- Redesigning engineering systems, procedures, or values.

---

## When To Use

- A draft chapter, build guide, tutorial, or EDR reads awkwardly or unevenly.
- Prose needs tightening before a standards audit or release review.
- Multiple contributors have left the tone inconsistent.
- A near-final document needs a polish pass.

---

## Instructions

1. Read the whole document and identify its purpose and target reader before editing anything.
2. Edit at the sentence and paragraph level for grammar, clarity, concision, consistent tense/voice, and a neutral engineering-manual tone.
3. Fix purely editorial readability problems: run-on steps, buried instructions, inconsistent heading phrasing, ambiguous pronouns, undefined terms on first use.
4. Keep every edit conservative — change the minimum needed. When wording carries engineering meaning, preserve it exactly rather than "improving" it.
5. Preserve all document IDs, cross-references, approved terminology (SEEH-STD-004), and naming conventions (SEEH-STD-002) verbatim.
6. If a sentence looks technically wrong, do not fix the facts — flag it as `[FACT-CHECK]` and hand off to `seeh-fact-check`.
7. Log every change so a reviewer can accept or reject it individually.

---

## Do Not

- Change engineering decisions, values, procedures, or rationale.
- Invent, correct, or "clean up" technical facts (defer to `seeh-fact-check`).
- Rename things, alter document IDs, or swap approved terminology for synonyms.
- Rewrite passages purely to change style, or add persuasive/marketing language.
- Restructure the document's Markdown skeleton (see `seeh-markdown-refactor`).

---

## Return Format

- **Summary** — one or two sentences on the document's overall editorial state.
- **Edited Document** — the full revised Markdown.
- **Change Log** — table of `Location | Before → After | Reason`.
- **Flags** — any `[FACT-CHECK]` items or open questions, with the exact text in question.

---

## Related Skills

- `seeh-fact-check` — verifies technical accuracy of flagged statements.
- `seeh-markdown-refactor` — repairs structure and formatting.
- `seeh-standards-audit` — checks compliance after editing.
- `seeh-document-review` — broader editorial review.

---

## Guiding Principle

> **Improve the words. Preserve the meaning.**

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / Claude | Initial draft. |
