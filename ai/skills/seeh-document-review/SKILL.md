---
name: seeh-document-review
description: Use when performing editorial review of SEEH documentation for clarity, completeness, Markdown quality, and standards compliance; improves documentation quality without redesigning engineering systems.
---

# SEEH Document Review

**Skill ID:** SEEH-SKILL-004
**Name:** SEEH Document Review
**Category:** Documentation Review
**Version:** 0.2.0
**Status:** Draft

---

## Purpose

The SEEH Document Review skill performs a comprehensive editorial review of engineering documentation within the Space Engineers Engineering Handbook (SEEH).

Its purpose is to ensure documents are complete, consistent, internally coherent, easy to understand, and compliant with SEEH standards before publication. This skill reviews documentation quality. It **does not** verify engineering or technical accuracy (that is the role of seeh-fact-check) and **does not** redesign engineering systems unless explicitly requested.

---

## Scope

This skill reviews:

- Handbook chapters
- Engineering standards
- Templates
- Build guides
- Tutorials
- Reference documents
- Engineering Decision Records (EDRs)
- README files
- Contribution guides

### Out of Scope

- Verifying that technical statements are true (see seeh-fact-check).
- Checking whether a build is reproducible (see seeh-blueprint-review).
- Redesigning engineering systems.

---

## When To Use

Use this skill when:

- Reviewing a pull request.
- Preparing a document for release.
- Reviewing a new handbook chapter.
- Reviewing revisions.
- Auditing documentation quality.
- Checking standards compliance.
- Performing editorial review.

---

## Inputs

Examples include:

- Markdown document
- Pull request
- Engineering standard
- Tutorial
- README
- Design guide
- Engineering Decision Record
- Documentation collection

---

## Review Workflow

1. Read the document completely.
2. Identify the document purpose.
3. Verify structure.
4. Review writing quality.
5. Review engineering terminology.
6. Review Markdown formatting.
7. Check SEEH standards compliance.
8. Identify missing sections.
9. Recommend improvements.
10. Assign publication readiness.

---

## Review Categories

### Structure

- Logical organization
- Heading hierarchy
- Consistent formatting
- Table quality
- Lists
- Revision history

### Completeness

Determine whether the document contains, and identify any missing sections:

- Purpose
- Scope
- Requirements
- Compatibility
- Engineering rationale
- Build procedure
- Configuration
- Verification
- Troubleshooting
- Maintenance
- References
- Revision history

### Readability

- Plain English
- Accessibility to the target reader
- Technical clarity
- Consistency
- Sentence structure
- Redundancy
- Ambiguity

Avoid unnecessary complexity.

### Engineering Terminology

Confirm terminology matches SEEH standards. Examples include:

- Airlock
- Interlock
- Fail-safe
- Verification
- Variant
- Module
- System
- Component
- Engineering Rationale

Recommend updates when inconsistent terminology is found.

### Markdown Quality

- Heading hierarchy
- Code blocks
- Tables
- Lists
- Quotes
- Relative links
- Images
- ASCII diagrams
- Formatting consistency

### Cross References

- Internal document references
- Standard references
- Related handbook chapters
- Engineering Decision Records
- Appendix references

---

## Standards Compliance

Review compliance with each standard and mark it Pass, Minor Issues, Major Issues, or Not Applicable:

- SEEH-000 Project Charter
- SEEH-STD-001 Documentation Style Guide
- SEEH-STD-002 Naming Standard
- SEEH-STD-003 Diagram & Blueprint Standard
- SEEH-STD-004 Terminology
- SEEH-STD-005 Testing & Verification Standard

---

## Editorial Rules

Always:

- Preserve engineering intent.
- Preserve document IDs.
- Preserve naming conventions.
- Explain recommendations.
- Recommend targeted improvements.

Never:

- Rewrite for style alone.
- Change engineering decisions.
- Invent missing technical information.
- Remove engineering rationale.
- Change standards without justification.

---

## Publication Status

Assign one recommendation and explain it.

| Status | Meaning |
|--------|---------|
| Ready | Ready for publication |
| Minor Revisions | Small improvements required |
| Major Revisions | Significant work required |
| Needs Technical Review | Engineering review required |
| Needs Validation | Additional testing required |
| Reject | Not suitable for publication |

---

## Output Format

Produce the following sections. This is the single canonical output template for this skill.

- **Executive Summary**
- **Overall Assessment**
- **Strengths**
- **Issues Found**
- **Standards Compliance**
- **Missing Sections**
- **Editorial Recommendations**
- **Publication Recommendation** — the status from the table above, with justification.

---

## Standards & Related Skills

Supports:

- SEEH-000 Project Charter
- SEEH-STD-001 through SEEH-STD-005 (see Standards Compliance)
- Handbook Volumes
- Templates
- Engineering Decision Records
- AI-Contributing Guide

Related skills:

- **seeh-fact-check** — verifies technical accuracy before or alongside editorial review.
- **seeh-blueprint-review** — reviews build reproducibility for construction documents.

---

## Quality Checklist

Before completing the review:

- [ ] Purpose identified
- [ ] Structure reviewed
- [ ] Standards checked
- [ ] Markdown reviewed
- [ ] Terminology reviewed
- [ ] Missing sections identified
- [ ] Editorial recommendations provided
- [ ] Publication status assigned

---

## Guiding Principle

> **Preserve intent. Improve clarity. Publish with confidence.**

---

## Success Criteria

A successful document review:

- Improves readability.
- Improves consistency.
- Preserves engineering intent.
- Identifies missing information.
- Confirms standards compliance.
- Produces actionable recommendations.

---

## Revision History

| Version | Date | Author | Notes |
|---------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / Claude | Technical-editor pass: fixed heading hierarchy; resolved the technical-accuracy vs documentation-quality contradiction by deferring accuracy to seeh-fact-check; merged output templates and aligned the output label with the Publication Status table; reworded "beginner friendliness"; added scope boundary and related-skill handoffs. |
