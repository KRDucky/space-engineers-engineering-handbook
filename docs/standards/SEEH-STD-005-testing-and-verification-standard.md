# SEEH-STD-005 — Testing and Verification Standard

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-STD-005  
**Revision:** 0.2.4  
**Status:** Released  
**Last Updated:** 2026-07-07  

---

## 1. Purpose

This standard defines how Space Engineers Engineering Handbook (SEEH) designs, procedures, claims, and blueprint packages are tested and verified.

A design should not be marked `Released` until it has been tested.

Testing exists to answer four engineering questions:

1. Was the design built as documented?
2. Does the design perform its intended function?
3. Does the design fail safely under realistic mistakes or interruptions?
4. Can another engineer reproduce and verify the result?

Verification protects the handbook from publishing untested assumptions as engineering standards.

---

## 2. Scope

This standard applies to:

- Engineering guides
- Build procedures
- Blueprint packages
- Automation procedures
- Diagrams used for construction
- Configuration instructions
- Troubleshooting procedures
- Technical claims
- Mod-dependent implementation variants
- Multiplayer engineering designs

This standard does not require every document to include every possible test.

The required depth of testing should match the document type, implementation level, risk, and release status.

---

## 3. Authority

`SEEH-STD-005` is the primary testing and verification standard for SEEH.

Related standards:

- `SEEH-000` defines project governance, quality levels, and the rule that reality verifies engineering claims.
- `SEEH-STD-001` defines document structure, verification sections, evidence expectations, and release-readiness requirements.
- `SEEH-STD-002` defines naming conventions required for repeatable tests.
- `SEEH-STD-003` defines diagram and blueprint documentation requirements.
- `SEEH-STD-004` defines verification vocabulary and terminology.

When a document includes a test, verification claim, release claim, or technical evidence label, this standard applies.

---

## 4. Verification Principles

SEEH verification should be:

- Repeatable
- Observable
- Documented
- Specific
- Honest about uncertainty
- Appropriate to the design's complexity
- Clear enough for another engineer to reproduce

A test should define:

- What is being tested
- How to perform the test
- What result is expected
- What result was observed
- Whether the test passed
- What limitations remain

Avoid vague claims such as:

```text
Works fine.
Seems good.
Tested it.
```

Prefer specific claims such as:

```text
Verified in Large Grid survival world on 2026-07-07. Entry and exit cycles completed successfully five times each. Dual-door interlock prevented both doors from opening during normal operation.
```

---

## 5. Verification Vocabulary

Use the verification vocabulary defined in `SEEH-STD-004`.

| Term | Meaning |
|---|---|
| Verified | Supported by authoritative documentation or repeatable testing |
| Confirmed | Observed during testing but not yet independently verified |
| Unverified | Requires additional evidence |
| Community Consensus | Supported by multiple community sources but lacking authoritative documentation |
| Experimental | Behavior may change or is insufficiently understood |
| Deprecated | Previously accurate but superseded by a game update, mod change, or improved design |

These terms describe the reliability of a technical claim, engineering technique, or configuration.

They do not replace the Documentation States defined in `SEEH-STD-004`, Section 8 (for example, `Draft` or `Released`). Documentation States describe a document's editorial lifecycle; the Verification Vocabulary above describes the reliability of a claim within it.

---

## 6. Quality Levels

Quality Levels describe the maturity of an engineering design or document.

Use the Quality Levels defined by `SEEH-000` and `SEEH-STD-004`.

| Quality Level | Name | Meaning |
|---|---|---|
| Bronze | Written | The document exists and is internally complete |
| Silver | Built | The design has been built in-game |
| Gold | Multiplayer Tested | The design has been tested with multiple players |
| Platinum | Community Verified | The design has been verified by multiple independent users or servers |

Quality Levels describe confidence in the engineering design.

They are distinct from Test Status Values (Section 8), which describe the outcome of one specific test, and from Documentation States (`SEEH-STD-004`, Section 8), which describe a document's editorial lifecycle rather than the maturity of the design it documents.

---

## 7. Verification Levels

Verification Levels describe how far a specific procedure, design, or blueprint has been tested.

| Level | Name | Meaning |
|---|---|---|
| V0 | Written Only | Procedure is written but not built. |
| V1 | Built | Design has been built once in-game. |
| V2 | Function Tested | Main functions have been tested. |
| V3 | Failure Tested | Common failure cases have been tested. |
| V4 | Multiplayer Tested | Design has been tested with multiple players. |
| V5 | Community Verified | Independent users have confirmed the design. |

Verification Levels are useful for detailed test reporting.

Quality Levels are useful for summarizing publication maturity.

Verification Levels and Quality Levels both describe the maturity of the engineering design. Neither describes the editorial lifecycle of the document itself, which is tracked separately as a Documentation State (`SEEH-STD-004`, Section 8).

Mapping between the two is approximate:

| Quality Level | Typical Verification Evidence |
|---|---|
| Bronze | V0 completed |
| Silver | V1, V2, or V3 completed |
| Gold | V4 completed |
| Platinum | V5 completed |

Silver spans the single-player verification range — built, function-tested, and failure-tested — because all three (V1–V3) can be demonstrated by one engineer working alone. Gold marks the transition to multiplayer evidence (V4), which cannot be produced solo.

A design may require more testing than this mapping suggests if it is safety-critical, automation-heavy, multiplayer-facing, or mod-dependent.

---

## 8. Test Status Values

Use these values in test records.

| Status | Meaning |
|---|---|
| Untested | Test has not been performed. |
| Pass | Test succeeded. |
| Fail | Test failed. |
| Partial | Test partly succeeded. |
| Blocked | Test could not be performed. |

Do not mark a failed test as `Pass` because the failure has a workaround.

Use `Partial` or `Fail`, then document the limitation or corrective action.

Test Status Values are distinct from Verification Levels (Section 7), Quality Levels (Section 6), and Documentation States (`SEEH-STD-004`, Section 8). A Test Status Value describes the outcome of one specific test; it does not by itself indicate the design's overall maturity or the document's release status.

---

## 9. Required Verification Sections

Each engineering guide should include verification content appropriate to its scope.

Common verification sections:

- Build verification
- Naming verification
- Configuration verification
- Functional verification
- Failure-mode testing
- Multiplayer testing if applicable
- Maintenance verification
- Troubleshooting validation
- Known limitations

A simple reference document may not need a test table.

A build guide or blueprint package usually does.

---

## 10. Basic Test Record Format

Use this format for test records:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-001 | Press outside request button | Airlock begins entry cycle | Untested |  |
| T-002 | Try opening both doors | Interlock prevents unsafe state | Untested |  |

Recommended test ID format:

```text
T-001
T-002
T-003
```

For larger documents, prefix test IDs by system area when useful.

Examples:

```text
AL-T-001
PWR-T-001
DCK-T-001
```

Keep test IDs stable after publication so issues, screenshots, and later revisions can reference them.

---

## 11. Test Record Fields

A complete test record may include:

| Field | Purpose |
|---|---|
| Test ID | Stable identifier for the test |
| Test | Short test description |
| Preconditions | Required setup before test begins |
| Procedure | Steps to perform the test |
| Expected Result | What should happen |
| Observed Result | What actually happened |
| Status | Untested, Pass, Fail, Partial, or Blocked |
| Evidence | Screenshot, save file, notes, video, or tester initials |
| Notes | Limitations, follow-up, or abnormal behavior |

Use shorter tables when the test is simple.

Use expanded records when the result is important, complex, or safety-relevant.

Example of an expanded record:

| Field | Value |
|---|---|
| Test ID | `AL-T-002` |
| Test | Trigger dual-door interlock during entry cycle |
| Preconditions | Chamber depressurized; both doors closed; `AL_A01_Timer_Entry` idle |
| Procedure | Start entry cycle, then attempt to open `AL_A01_Door_Inner` before pressurization completes |
| Expected Result | `AL_A01_Door_Inner` remains locked until chamber pressurization finishes |
| Observed Result | Door remained locked for the full cycle in all five trials |
| Status | Pass |
| Evidence | Screenshot `SEEH-ATM-001_fig-04_interlock-test.png`; tester initials IC |
| Notes | None |

---

## 12. Build Verification

Build verification confirms that the design can be constructed from the documentation.

Build verification should check:

- Required blocks are listed.
- Bill of materials is accurate enough for the design stage.
- Diagrams match the written procedure.
- Dimensions are correct.
- Orientation is clear.
- Block names follow `SEEH-STD-002`.
- Block groups are documented.
- Hidden or internal blocks are identified.
- Required mods, scripts, or DLC are listed.
- The design can be built without guessing.

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-001 | Build system from procedure only | System can be built without undocumented steps | Untested |  |

---

## 13. Naming Verification

Naming verification confirms that documented names match the build.

Check:

- Document ID follows `SEEH-STD-002`.
- File name follows `SEEH-STD-002`.
- System names follow the required pattern.
- Block names follow approved prefixes.
- Block groups begin with `GRP`.
- Blueprint names include project, system, number, implementation level, and revision where practical.
- Diagram labels match documented names.

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-010 | Compare block names against naming table | All required names match `SEEH-STD-002` | Untested |  |

---

## 14. Configuration Verification

Configuration verification confirms that settings, groups, toolbar actions, automation, and displays match the documentation.

Check:

- Terminal settings
- Toolbar actions
- Timer Block actions
- Event Controller conditions
- Programmable Block arguments
- Script custom data
- LCD or display surface assignments
- Conveyor sorter settings
- Connector settings
- Ownership and sharing settings where applicable

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-020 | Compare Timer Block action list to configuration table | Timer Block actions match documented sequence | Untested |  |

---

## 15. Functional Verification

Functional verification confirms that the system performs its intended function.

Examples:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-030 | Press outside request button | Airlock begins entry cycle | Untested |  |
| T-031 | Press inside request button | Airlock begins exit cycle | Untested |  |
| T-032 | Complete full entry cycle | Engineer moves from outside to interior without exposing interior | Untested |  |

Functional tests should cover normal operation before failure testing.

Do not begin failure testing until the normal function is understood.

---

## 16. Failure Testing

Failure testing checks realistic mistakes, interruptions, and abnormal states.

Examples of realistic failure conditions include:

- Power interruption
- Door blocked
- Incorrect pressure state
- Player pressing both request buttons
- Vent disabled
- LCD missing
- Automation block disabled
- Group renamed incorrectly
- Missing conveyor connection
- Damaged block
- Manual override used at the wrong time

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-040 | Disable Air Vent during airlock cycle | System fails safely or limitation is documented | Untested |  |
| T-041 | Rename required block group | System failure is clear and troubleshooting identifies cause | Untested |  |

A failure test may reveal that the design does not fail safely.

That is useful engineering information.

Document the limitation instead of hiding it.

---

## 17. Multiplayer Testing

Multiplayer tests should check:

- Two players requesting opposite directions
- One player entering during a cycle
- One player manually interacting with a controlled door
- Server lag during automation
- Ownership and permission issues
- Faction access settings
- Safe zone or territory restrictions if applicable
- Reconnection during operation
- Simultaneous toolbar or button inputs

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-050 | Two players request opposite directions | System handles requests predictably without unsafe state | Untested |  |
| T-051 | Non-owner attempts normal operation | Access behavior matches documented permissions | Untested |  |

Multiplayer testing is required for Server Edition variants and strongly recommended for shared-base systems.

---

## 18. Survival Verification

Survival verification checks whether the design is practical outside creative mode.

Check:

- Component availability
- Resource cost
- Construction order
- Access for welding and grinding
- Power availability during startup
- Oxygen or hydrogen supply where applicable
- Conveyor reachability
- Maintenance access
- Repair access
- Whether the design can be built without admin tools

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-060 | Construct design in survival or survival-equivalent conditions | Design can be built and configured without creative-only assumptions | Untested |  |

A design may be valid but not survival-ready.

Document that clearly.

---

## 19. Maintenance Verification

Maintenance verification checks whether a system can be inspected, repaired, reset, or upgraded after construction.

Check:

- Access to critical blocks
- Ability to replace damaged components
- Reset procedure
- Manual override procedure
- Safe shutdown procedure
- Diagnostic displays
- Clear troubleshooting path
- Impact of renaming or replacing blocks

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-070 | Replace a damaged Timer Block and restore configuration | System can be returned to service using documented steps | Untested |  |

Maintainability is part of engineering quality.

A design that works once but cannot be repaired should not be treated as fully mature.

---

## 20. Troubleshooting Validation

Troubleshooting validation confirms that the troubleshooting section actually helps diagnose known failures.

For each troubleshooting entry, check:

- Symptom is observable.
- Likely cause is plausible.
- Fix can be performed.
- Fix does not create a new unsafe state.
- Related test or verification step exists.

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-080 | Simulate renamed block group and follow troubleshooting entry | Troubleshooting identifies naming mismatch and restores operation | Untested |  |

Troubleshooting should be tested where practical.

Untested troubleshooting should be labeled accordingly.

---

## 21. Evidence Records

Evidence records help future maintainers understand what was tested.

Evidence may include:

- Tester name or initials
- Date tested
- Game version
- World type
- Grid size
- Mods enabled
- Script settings
- Screenshots
- Save file
- Blueprint export
- Workshop reference
- Notes from multiplayer testers

Minimum evidence for released engineering designs:

| Field | Requirement |
|---|---|
| Date Tested | Required |
| Tester | Required |
| Game Mode | Required where relevant |
| Grid Size | Required where relevant |
| Mods/Scripts | Required if used |
| Test Results | Required |
| Known Limitations | Required if any |

---

## 22. Game Version and Mod Version

When behavior may depend on game or mod version, record the version or access date where practical.

Record:

- Space Engineers game version if known
- Mod name
- Mod version if known
- Workshop access date if version is unavailable
- Script version if applicable
- Server settings that affect behavior

Example:

| Field | Value |
|---|---|
| Game Version | Unknown |
| Mod | Easy Automation 2 |
| Mod Version | Unknown |
| Workshop Access Date | 2026-07-07 |
| Notes | Verify current syntax before release |

If version information is unavailable, state that it is unavailable.

Do not invent version numbers.

---

## 23. Modded Variant Verification

Modded variants require additional verification.

Check:

- Required mods are listed by published name.
- Required dependencies are listed.
- Mod behavior is verified or cited.
- Multiplayer compatibility is considered.
- Server performance impact is considered where relevant.
- Fallback or vanilla behavior is documented if applicable.
- Mod-specific limitations are documented.

Modded features should not be presented as vanilla behavior.

If a mod changes the engineering assumptions of a system, document that change clearly.

---

## 24. Scripted Automation Verification

Scripted automation requires additional checks.

Check:

- Programmable Block name follows `SEEH-STD-002`.
- Script source or reference is documented.
- Required arguments are documented.
- Custom data is documented.
- Error messages are documented where practical.
- Manual fallback exists where practical.
- Failure behavior is documented.
- Script permissions and server rules are considered.

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-090 | Run script with missing required block group | Script reports clear failure or limitation is documented | Untested |  |

Do not assume scripts are enabled on every server.

---

## 25. Diagram Verification

Diagram verification confirms that diagrams match the actual design and procedure.

Check:

- Diagram view type is labeled.
- Orientation is correct.
- Dimensions match the build.
- Symbols match the legend.
- Diagram labels match block names.
- Diagram matches the build procedure.
- Screenshots match the current version.
- Hidden layers are documented.

Example:

| Test ID | Test | Expected Result | Status | Notes |
|---|---|---|---|---|
| T-100 | Compare top-view diagram to in-game build | Diagram matches footprint, orientation, and major components | Untested |  |

Diagrams are engineering documentation and must be verified like text.

---

## 26. Claim Evidence Labels

Technical claims should be labeled when evidence matters.

Use claim labels from `SEEH-STD-004`.

Examples:

```text
Verified: This airlock entry cycle was tested in-game on 2026-07-07.
Confirmed: This behavior was observed once during local testing.
Unverified: Multiplayer behavior has not yet been tested.
Community Consensus: Multiple community guides describe this behavior, but no official documentation was found.
Experimental: This mod behavior may change after updates.
Deprecated: This method was superseded by the Event Controller variant.
```

Do not over-label obvious procedural statements.

Use labels when the reader needs to understand confidence or uncertainty.

---

## 27. Test Result Interpretation

A failed test does not automatically invalidate a design.

A failed test means one of the following:

- The design is incorrect.
- The documentation is incomplete.
- The expected result is wrong.
- The test procedure is unclear.
- The design has a limitation that must be documented.
- The design requires a different implementation level.
- The design depends on an unlisted mod, script, setting, or condition.

Every failed test should produce a decision:

| Outcome | Meaning |
|---|---|
| Fix Design | The design must change |
| Fix Documentation | The document must change |
| Add Limitation | The design is acceptable with a documented limitation |
| Add Troubleshooting | The failure is expected and recoverable |
| Retest | The test was invalid or incomplete |
| Deprecate | The technique should no longer be recommended |

---

## 28. Release Criteria

A document may be marked `Released` only when:

- Instructions are complete.
- Required diagrams exist.
- The design has been built if the document contains an engineering build.
- Core tests pass or limitations are documented.
- Troubleshooting is included where applicable.
- Known limitations are documented.
- Required mods, scripts, and DLC are identified.
- Evidence labels are honest and consistent.
- No unresolved blocking review issues remain.

A standards document may be released without in-game testing if it defines documentation governance rather than an engineering build.

An engineering design document requires appropriate in-game verification before release.

---

## 29. Minimum Release Evidence by Document Type

| Document Type | Minimum Evidence Before Release |
|---|---|
| Project charter | Human approval and standards consistency review |
| Standard | Technical edit, standards audit, and release review |
| Reference | Source review or evidence labels for uncertain claims |
| Tutorial | Procedure review and beginner-readability review |
| Engineering guide | Build verification and functional verification |
| Blueprint package | Build verification, diagram verification, and functional verification |
| Automation guide | Configuration verification and functional verification |
| Multiplayer/server guide | Multiplayer testing or explicit limitation |
| Mod-dependent guide | Current mod source review or clear evidence label |

These are minimums.

Documents may require more verification based on complexity and risk.

---

## 30. Verification Checklist

Use this checklist before releasing an engineering guide or blueprint package.

- [ ] Purpose is clear.
- [ ] Requirements are listed.
- [ ] Required mods, scripts, and DLC are identified.
- [ ] Build procedure is complete.
- [ ] Diagrams match the procedure.
- [ ] Block names match `SEEH-STD-002`.
- [ ] Configuration is documented.
- [ ] Functional tests are included.
- [ ] Failure tests are included where applicable.
- [ ] Multiplayer tests are included where applicable.
- [ ] Troubleshooting has been validated where practical.
- [ ] Known limitations are documented.
- [ ] Evidence labels are honest.
- [ ] Revision history is complete.

---

## 31. Common Verification Problems

Common problems include:

| Problem | Why It Matters |
|---|---|
| Test says "works" without expected result | Future reviewers cannot repeat it |
| No game version or mod context | Behavior may change across updates |
| Screenshot does not match diagram | Reader cannot trust the build guide |
| Blueprint exists but procedure is incomplete | Design is not reproducible |
| Failure modes are not tested | Design may fail unsafely |
| Multiplayer behavior is assumed | Server behavior often differs from solo play |
| Troubleshooting is untested | Fixes may not actually solve the problem |
| Mod behavior is presented as vanilla | Reader may be unable to reproduce the result |

---

## 32. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft. |
| 0.2.0 | 2026-07-07 | Ian Comings / ChatGPT | Expanded testing and verification standard into a full governance draft; added authority, verification principles, vocabulary, quality-level mapping, test status values, required verification sections, test record fields, build verification, naming verification, configuration verification, functional testing, failure testing, multiplayer testing, survival verification, maintenance verification, troubleshooting validation, evidence records, game/mod version tracking, modded and scripted variant verification, diagram verification, claim evidence labels, test result interpretation, document-type release evidence, verification checklist, and common verification problems. |
| 0.2.1 | 2026-07-07 | Claude / Technical Editor | Technical edit pass (`seeh-technical-edit`). Added explicit cross-references disambiguating Verification Vocabulary (Section 5), Quality Levels (Section 6), Verification Levels (Section 7), Test Status Values (Section 8), and Documentation States (`SEEH-STD-004`, Section 8) — closing a terminology-distinction gap where the document used four overlapping maturity/status vocabularies without stating how they relate to one another or to the document-lifecycle states defined in `SEEH-STD-004`. Reformatted the Section 1 reference to `Released` as inline code to match Section 28's usage. Removed a redundant repeated phrase in Section 16 (Failure Testing) and smoothed its lead-in to the examples list. Standardized the Section 6 mapping-table wording for Bronze ("V0 documentation complete" → "V0 completed") to match the parallel phrasing already used in the Silver/Gold/Platinum rows. No engineering content, test procedures, Verification Levels, Quality Levels, Test Status Values, or document ID changed. Status remains Draft pending standards audit and release review. **Open item, not resolved in this pass:** `SEEH-STD-004` does not yet cross-reference the V0–V5 Verification Level scale defined here in Section 7; recommend a future pass add that pointer in `SEEH-STD-004`. |
| 0.2.2 | 2026-07-07 | Claude / Technical Editor | Standards-audit fixes (`seeh-standards-audit` findings M1–M3). (1) Resolved the Section 7 mapping-table gap where V3 (Failure Tested) had no corresponding Quality Level: folded V3 into Silver alongside V1 and V2, and added a sentence explaining the Silver/Gold boundary as the single-player/multiplayer evidence divide. **This is an editorial judgment call and is flagged in-document for owner confirmation before release**, consistent with the precedent set in `SEEH-STD-003` 0.2.2. (2) Added a worked example of the expanded Test Record format (Section 11), for parity with every other format definition in this document, which previously lacked one. Confirmed the standards-audit open item regarding `SEEH-STD-004`'s missing back-reference to the V0–V5 scale does **not** block this document's release, since the fix belongs to `SEEH-STD-004` and this document is self-sufficient without it. No Verification Levels, Quality Levels, Test Status Values, or document ID changed; the Section 7 mapping table's meaning was clarified, not altered in intent. |
| 0.2.3 | 2026-07-07 | Ian Comings / Human Project Lead | Reviewed and confirmed the Section 7 editorial judgment call introduced in 0.2.2: V3 (Failure Tested) correctly belongs within Silver alongside V1 and V2, since all three represent evidence a single engineer can produce without other players, and Gold correctly remains the threshold marking the first multiplayer-dependent evidence (V4). This closes the release blocker raised in the prior release review requiring owner sign-off on that placement. Removed the now-resolved `**Editorial note:**` paragraph from Section 7 and folded its confirmed rationale into standard prose. No table values, Verification Levels, Quality Levels, or document ID changed. |
| 0.2.4 | 2026-07-07 | Ian Comings / Human Project Lead | Promoted Status from Draft to Released following completed Technical Edit (0.2.1), Standards Audit (0.2.2), and Release Review passes, with the Section 7 owner-confirmation blocker resolved in 0.2.3. Confirmed alignment with `SEEH-000` (Quality Levels, release-philosophy split between standards and engineering designs), `SEEH-STD-001` (structure, status values, revision format), `SEEH-STD-002` (naming), `SEEH-STD-003` (diagram verification), and `SEEH-STD-004` (Verification Vocabulary, Quality Levels, and their disambiguation from Documentation States, Verification Levels, and Test Status Values). The open item regarding `SEEH-STD-004`'s missing back-reference to the V0–V5 scale remains logged as a non-blocking future update to `SEEH-STD-004`, not to this document. No content changes since 0.2.3. |
