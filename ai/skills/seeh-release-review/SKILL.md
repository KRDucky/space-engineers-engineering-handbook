---
name: seeh-release-review
description: Use when performing the final release-readiness review of an SEEH document before publication — checking completeness, consistency, readability, and unresolved editorial issues, and deciding whether it can be marked Released; produces a go/no-go decision, does not perform the detailed edits itself.
---

# SEEH Release Review

**Skill ID:** SEEH-SKILL-009
**Name:** SEEH Release Review
**Category:** Release Gate
**Version:** 0.1.0
**Status:** Draft

---

## Purpose

The SEEH Release Review skill performs the final publication gate for a document within the Space Engineers Engineering Handbook (SEEH).

Its purpose is to confirm a document is complete, consistent, readable, and free of unresolved editorial issues, then issue a clear go/no-go decision on whether it may move from Draft to **Released**. This skill **aggregates and decides** — it does not perform detailed edits, refactors, or standards fixes itself, but routes each blocker to the responsible skill.

---

## Scope

Reviews any SEEH document proposed for publication or for the Draft → Released transition.

### Out of Scope

- Line editing, Markdown refactoring, or standards remediation (delegated).
- Verifying technical accuracy directly (routed to `seeh-fact-check`).
- Inventing version numbers, dates, or authorship.

---

## When To Use

- A document is proposed for the Draft → Released transition.
- Final sign-off before merging or publishing.
- Confirming that all prior review findings have been closed.
- Deciding whether a handbook volume is ready to ship.

---

## Instructions

1. Treat this as the final gate. Confirm earlier passes (`seeh-technical-edit`, `seeh-standards-audit`, `seeh-beginner-readability-review`, and where relevant `seeh-fact-check` / `seeh-blueprint-review`) have been applied and their findings resolved.
2. Check completeness: all required sections present, no TODO/TBD/placeholder text, all cross-references and links resolve, Revision History current.
3. Check consistency: terminology, naming, formatting, and tone are uniform and align with SEEH-STD-001, -002, and -004.
4. Confirm verification content meets SEEH-STD-005 where the document type requires it.
5. Scan for unresolved editorial issues — open comments, unaddressed flags, contradictory statements, mismatched status fields.
6. Do not fix issues yourself; when the document is not ready, route each blocker to the responsible skill.
7. Issue one clear decision and, if approving, specify the exact Revision History / status update needed to mark the document **Released** — but do not invent a version number or date.

---

## Do Not

- Perform detailed line edits, refactors, or standards fixes (delegate them).
- Mark a document Released while any blocker or unresolved flag remains.
- Invent version numbers, dates, or authorship for the revision entry.
- Approve based on style; base the decision on completeness, consistency, and resolved issues.

---

## Release Decision Values

| Decision | Meaning |
|----------|---------|
| Released | Ready to publish; apply the specified status update. |
| Blocked — Minor | Small issues must be closed before release. |
| Blocked — Major | Significant work required before release. |
| Needs Technical Review | Engineering/accuracy review required first. |
| Needs Validation | Additional testing/verification required first. |

---

## Return Format

- **Release Decision** — one value from the table above.
- **Readiness Checklist** — completeness / consistency / readability / verification / unresolved-issues, each Pass or Fail.
- **Blockers** — table of `Issue | Location | Owning skill | Severity` (empty if Released).
- **Required Revision Update** — the exact status/notes change to apply if approved (values to fill, not invented).

---

## Related Skills

- `seeh-technical-edit`, `seeh-markdown-refactor`, `seeh-standards-audit`, `seeh-beginner-readability-review` — own the fixes for routed blockers.
- `seeh-fact-check`, `seeh-blueprint-review` — accuracy and reproducibility gates.

---

## Guiding Principle

> **Nothing ships with an open blocker.**

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / Claude | Initial draft. |
