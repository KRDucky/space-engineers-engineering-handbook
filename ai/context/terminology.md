# SEEH AI Context — Terminology

**Document ID:** SEEH-AI-CTX-001  
**Version:** 0.1.1  
**Status:** Draft  
**Last Updated:** 2026-07-07

---

# Purpose

This document defines the canonical terminology used throughout the Space Engineers Engineering Handbook (SEEH).

All AI assistants, contributors, and reviewers should use these definitions consistently unless a document explicitly defines a more specific meaning.

The purpose of this document is consistency rather than completeness.

---

# General Principles

- Use the defined term whenever possible.
- Avoid creating synonyms unless necessary.
- Prefer engineering terminology over gaming slang.
- Capitalize official game block names.
- Use consistent abbreviations throughout the handbook.

---

# Engineering Terms

## System

A collection of components working together to perform a defined engineering function.

Examples:

- Airlock System
- Power Distribution System
- Conveyor System

---

## Component

An individual block, device, or software element that forms part of a larger system.

Examples:

- Air Vent
- Sensor
- Interior Light
- LCD Panel

---

## Module

A reusable engineering package designed to be incorporated into larger builds with minimal modification.

Examples:

- Personnel Airlock Module
- Hydrogen Processing Module
- Battery Bank Module

---

## Assembly

A collection of related modules or systems performing a larger engineering function.

Examples:

- Refinery Assembly
- Reactor Assembly
- Hangar Assembly

---

## Subsystem

A system contained within another system.

Example:

The pressurization logic inside an airlock.

---

# Documentation Terms

## Standard

A document defining mandatory or recommended engineering practices.

Example:

`SEEH-STD-001`

---

## Guide

A procedural document explaining how to accomplish a task.

---

## Reference

A document containing factual information intended for lookup.

---

## Template

A reusable document structure.

---

## Blueprint

The complete engineering package required to reproduce a design.

A blueprint may include:

- ASCII diagrams
- Build order
- Configuration
- Automation
- Testing
- Troubleshooting

---

## Engineering Decision Record (EDR)

A document capturing the rationale, alternatives considered, and outcome of a significant long-term engineering or documentation decision.

EDRs are used when a decision affects naming, folder structure, documentation standards, implementation levels, mod support, system architecture, or blueprint philosophy (see `SEEH-AI-CTX-003 — Project Charter`, Section 17).

---

# Engineering Design Terms

## Interlock

A control rule preventing unsafe or undesirable system states.

Example:

Preventing both airlock doors from opening simultaneously.

---

## Fail-safe

A design that transitions to a safer state when a fault occurs.

---

## Redundancy

Intentional duplication of critical components to improve reliability.

---

## Single Point of Failure (SPOF)

A component whose failure causes the entire system to fail.

Designs should minimize SPOFs where practical.

---

## Maintainability

The ease with which a system can be inspected, repaired, upgraded, or modified.

---

## Expandability

The ease with which additional functionality can be added without redesigning the original system.

---

## Modularity

The degree to which a system can be divided into reusable modules.

---

# Documentation States

The following states describe the status of a *document* — not the reliability of a technical claim within it. For claim-level status, see Verification Vocabulary below.

## Draft

Initial work.

Not verified.

---

## Review

Under editorial or technical review.

---

## Experimental

Requires further testing.

---

## Verified

Successfully tested in-game.

---

## Released

Approved for general use.

---

## Deprecated

Superseded by a newer document.

---

## Archived

Retained for historical reference.

---

# Implementation Levels

## Level 0

Vanilla

---

## Level 1

Quality of Life

---

## Level 2

Engineering

---

## Level 3

Enhanced Engineering

---

## Level 4

Server Edition

---

For full descriptions, objectives, and recommended mods for each level, see `SEEH-AI-CTX-002 — Implementation Levels`.

---

# AI Roles

## Systems Architect

Designs standards, systems, and documentation architecture.

---

## Technical Editor

Improves documentation quality while preserving engineering intent.

---

## Research Engineer

Verifies facts, citations, and current technical information.

---

## Human Project Lead

Provides final approval and performs in-game validation.

---

See `SEEH-AI-CTX-003 — Project Charter`, Section 13, for the current mapping of these roles to specific AI assistants.

---

# Verification Vocabulary

The following terms describe the reliability of a technical claim, engineering technique, or configuration — not the status of the document containing it (see Documentation States above).

Relative strength, strongest to weakest: **Verified > Confirmed > Community Consensus > Unverified.** Experimental and Deprecated fall outside this scale — both indicate a claim requires re-evaluation rather than occupying a fixed rank.

## Verified

Supported by authoritative documentation or repeatable testing.

---

## Confirmed

Observed during testing but not yet independently verified.

---

## Unverified

Requires additional evidence.

---

## Community Consensus

Supported by multiple community sources but lacking authoritative documentation.

---

## Experimental

Behavior may change or is insufficiently understood.

---

## Deprecated

A claim, technique, or configuration that was previously accurate but has been superseded by a game update, mod change, or improved design. Distinct from the Documentation States use of "Deprecated," which refers to a superseded *document*.

---

# Naming Conventions

Throughout SEEH:

- Use **Air Vent**, not "oxygen vent."
- Use **Event Controller**, not "event block."
- Use **Timer Block**, not "timer."
- Use **Interior Light**, not "light."
- Use **Programmable Block** in prose. The abbreviation "PB" may be used only inside code blocks, script comments, or space-constrained tables — never in explanatory text.
- Refer to mods by their published names on first mention.

---

# Preferred Writing

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

# Guiding Principle

> Engineering succeeds through shared language.

Consistent terminology produces consistent documentation.

---

# Revision History

| Version | Date | Author | Notes |
|----------|------|--------|-------|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.1.1 | 2026-07-07 | Claude / Technical Editor | Added EDR definition; added Deprecated to Verification Vocabulary; clarified scope of duplicate terms (Verified, Experimental); standardized "Community Consensus" capitalization; clarified PB naming rule; added cross-references to SEEH-AI-CTX-002 and SEEH-AI-CTX-003; standardized document-ID formatting. |