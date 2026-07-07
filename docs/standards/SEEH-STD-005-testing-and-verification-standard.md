# SEEH-STD-005 — Testing and Verification Standard

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-005  
**Revision:** 0.1.0  
**Status:** Draft  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines how SEEH designs are tested and verified.

A design should not be marked as released until it has been tested.

## 2. Verification Levels

| Level | Name | Meaning |
|---|---|---|
| V0 | Written Only | Procedure is written but not built. |
| V1 | Built | Design has been built once in-game. |
| V2 | Function Tested | Main functions have been tested. |
| V3 | Failure Tested | Common failure cases have been tested. |
| V4 | Multiplayer Tested | Design has been tested with multiple players. |
| V5 | Community Verified | Independent users have confirmed the design. |

## 3. Required Test Sections

Each engineering guide should include:

- Build verification
- Functional verification
- Failure-mode testing
- Multiplayer testing if applicable
- Maintenance verification
- Troubleshooting validation

## 4. Basic Test Record Format

Use this format:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-001 | Press outside request button | Airlock begins entry cycle | Untested |  |
| T-002 | Try opening both doors | Interlock prevents unsafe state | Untested |  |

## 5. Status Values

Use these values:

| Status | Meaning |
|---|---|
| Untested | Test has not been performed. |
| Pass | Test succeeded. |
| Fail | Test failed. |
| Partial | Test partly succeeded. |
| Blocked | Test could not be performed. |

## 6. Failure Testing

Failure testing should include realistic mistakes.

Examples:

- Power interruption
- Door blocked
- Incorrect pressure state
- Player pressing both request buttons
- Vent disabled
- LCD missing
- Automation block disabled
- Group renamed incorrectly

## 7. Multiplayer Testing

Multiplayer tests should check:

- Two players requesting opposite directions
- One player entering during a cycle
- One player manually interacting with a controlled door
- Server lag during automation
- Ownership and permission issues

## 8. Release Criteria

A document may be marked `Released` only when:

- Instructions are complete.
- Required diagrams exist.
- The design has been built.
- Core tests pass.
- Troubleshooting is included.
- Known limitations are documented.

## 9. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
