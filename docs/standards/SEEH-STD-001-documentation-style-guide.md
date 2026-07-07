# SEEH-STD-001 — Documentation Style Guide

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-001  
**Revision:** 0.1.0  
**Status:** Draft  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines how SEEH documentation is written and formatted.

The goal is consistency. A reader should not need to relearn the document structure every time they open a new chapter.

## 2. Writing Style

Write in plain English.

Use direct instructions.

Avoid unexplained jargon.

Avoid filler words such as:

- simply
- obviously
- just
- easy

If a step matters, document it.

## 3. Standard Document Structure

Engineering documents should use this structure when applicable:

1. Purpose
2. Scope
3. Requirements
4. Compatibility
5. Engineering Rationale
6. Build Procedure
7. Configuration
8. Verification
9. Troubleshooting
10. Maintenance
11. Expansion Options
12. Revision History

## 4. Headings

Use Markdown headings in order.

```text
# Document Title
## Major Section
### Subsection
#### Procedure
```

Do not skip heading levels unless there is a clear reason.

## 5. Lists

Use numbered lists when order matters.

Use bullets when order does not matter.

Correct:

1. Place the block.
2. Rename the block.
3. Add the block to the group.
4. Verify the block works.

## 6. Tables

Use tables for configuration, compatibility, and comparison data.

Example:

| Property | Value |
|---|---|
| Block Name | AL_A01_Vent |
| Group | GRP_AL_A01_All |
| Function | Airlock pressurization |

## 7. Notices

Use standardized notice labels.

> **Note**
>
> Additional information that helps the reader.

> **Tip**
>
> A useful shortcut or best practice.

> **Caution**
>
> A mistake here may cause malfunction.

> **Warning**
>
> A mistake here may damage the build, endanger players, or break automation.

> **Engineering Rationale**
>
> Explains why the design uses this approach.

## 8. Code Blocks

Use fenced code blocks for:

- ASCII diagrams
- terminal commands
- automation examples
- LCD examples
- configuration snippets

Always label the code block language when useful.

## 9. Verification Sections

Every procedure should include verification steps.

Example:

- Confirm the outer door is closed.
- Confirm the inner door is locked.
- Confirm the vent is pressurizing.
- Confirm the LCD shows the expected state.

## 10. Troubleshooting Sections

Troubleshooting should be organized by symptom.

Use this pattern:

```text
Problem:
Likely Causes:
How to Check:
Resolution:
```

## 11. Revision History

Every document ends with a revision history table.

| Version | Date | Author | Notes |
|---|---|---|---|

## 12. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
