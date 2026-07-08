# SEEH-ATM-001 — Personnel Airlock

**Project:** Space Engineers Engineering Handbook  
**Document ID:** SEEH-ATM-001  
**Revision:** 0.1.6  
**Status:** Draft  
**Last Updated:** 2026-07-07  
**Implementation Level:** Level 0 — Vanilla  
**Quality Level:** Bronze — Written  
**Verification Level:** V0 — Written Only  
**Game Version:** Unknown  
**Required Mods:** None  
**Required Scripts:** None  
**Related Standards:** `SEEH-000`, `SEEH-STD-001`, `SEEH-STD-002`, `SEEH-STD-003`, `SEEH-STD-004`, `SEEH-STD-005`  
**Research Source:** `SEEH-ATM-001-personnel-airlock-research.md`

---

## 1. Purpose

This guide defines a baseline **Level 0 — Vanilla** personnel Airlock for Space Engineers.

The system is intended to let an engineer move between an exterior environment and a pressurized interior without directly exposing the interior to the exterior. This is achieved using a small sealed intermediate space, referred to throughout this document as the chamber, positioned between the two Airtight Doors. The baseline design uses vanilla blocks, conservative automation, clear naming, documented verification steps, and a fail-safe closed-door state.

This document is a draft engineering guide. It is not yet a verified blueprint or released build standard.

> **Note**
>
> The mechanical behavior of Air Vents and airtight boundaries is treated as researched. The complete SEEH airlock control sequence, timing values, multiplayer behavior, and recovery behavior remain **Unverified** until tested in-game using the verification plan in Section 10.

---

## 2. Scope

This document covers a simple large-grid personnel Airlock suitable for a base, station, or pressurized ship compartment.

Included:

- Level 0 — Vanilla implementation.
- Large Grid baseline.
- Two-door personnel Airlock layout.
- Air Vent-based chamber pressurization.
- Timer Block-driven control sequence.
- SEEH-compliant block and group naming.
- Basic status indication.
- Verification and troubleshooting plan.

Not included in the baseline:

- Scripted automation.
- Modded blocks.
- Hangar airlocks.
- Cargo airlocks.
- Small-grid variants.
- Piston, merge-block, or custom-door airlocks.
- Fully validated multiplayer/server behavior.

Optional future variants may add Event Controllers, Sensors, scripted automation, LCD status logic, or server-specific reliability features after testing.

---

## 3. Requirements

### 3.1 System Requirements

| Requirement | Value |
|---|---|
| Grid Size | Large Grid |
| Implementation Level | Level 0 — Vanilla |
| Required Mods | None |
| Required Scripts | None |
| Survival Ready | Intended, pending testing |
| Oxygen Supply | Required for pressurization |
| Conveyor Access | Required for the Air Vent to access oxygen |
| Minimum Quality Level | Bronze — Written |
| Minimum Verification Level | V0 — Written Only |
| DLC Requirements | None known; not yet confirmed |

### 3.2 Required Blocks

| Component | Quantity | Example Name | Notes |
|---|---:|---|---|
| Airtight Door | 2 | `AL_A01_Door_Outer`, `AL_A01_Door_Inner` | Separates exterior, chamber, and interior. |
| Air Vent | 1 | `AL_A01_Vent` | Controls chamber pressure. |
| Button Panel | 2 | `AL_A01_Button_Outside`, `AL_A01_Button_Inside` | Starts entry or exit sequence. |
| Timer Block | 3 | `AL_A01_Timer_Entry`, `AL_A01_Timer_Exit`, `AL_A01_Timer_Reset` | Controls the baseline sequence. |
| Oxygen Tank or oxygen source e.g., Oxygen Tank, Oxygen Generator | 1 minimum | Project-specific oxygen source | Required for chamber pressurization. |
| Conveyor connection | As required | Project-specific | Connects Air Vent to oxygen supply. |
| Airtight structure | As required | Project-specific | Forms the chamber shell. |

### 3.3 Recommended Optional Blocks

| Component | Quantity | Example Name | Notes |
|---|---:|---|---|
| Interior Light | 1–3 | `AL_A01_Light_Status` | Optional status indication. |
| LCD Panel | 1 | `AL_A01_LCD_Status` | Optional operating instructions or state display. |
| Event Controller | 0–2 | `AL_A01_Event_Pressurized` | Deferred to optional variant until tested. |
| Sensor | 0–2 | `AL_A01_Sensor_Chamber` | Deferred to optional variant until tested. |

> **Caution**
>
> Button Panels, LCD Panels, Sensors, and Interior Lights should not be used as part of the chamber pressure boundary (the sealed doors, walls, and Air Vent that keep the chamber's atmosphere separate from the exterior and interior) unless their airtight behavior has been specifically verified for the chosen block and orientation. For the baseline design, place them on non-critical faces or outside the sealed wall layer.

---

## 4. Compatibility

| Environment | Supported | Notes |
|---|---:|---|
| Vanilla | Yes | No mods or scripts required. |
| Creative | Yes | Useful for prototype testing. |
| Survival | Intended | Must verify oxygen supply, materials, access, and repairability. |
| Single-player | Intended | Requires functional testing. |
| Multiplayer | Unverified | Requires at least two-player testing before being marked reliable. |
| Dedicated Server | Unverified | Timer behavior and user interaction under server load must be tested. |
| Planetary Base | Intended | Exterior atmosphere may affect oxygen loss and helmet expectations. |
| Space Station | Intended | Exterior vacuum makes interlock discipline more important. |
| Small Grid | Not covered | Requires separate design and validation. |

---

## 5. Engineering Rationale

### 5.1 Engineering Problem

A pressurized interior must remain isolated from an exterior environment. If both airlock doors open at the same time, the interior can lose atmosphere or expose the base to hostile exterior conditions.

The Airlock solves this by creating a small intermediate chamber. Only one side should be open at a time during normal operation.

### 5.2 Selected Baseline

The baseline design uses:

1. One outer Airtight Door.
2. One inner Airtight Door.
3. One Air Vent in the chamber.
4. A conveyor-connected oxygen source.
5. Button Panels for operator requests.
6. Timer Blocks for a conservative action sequence.

This design was chosen because it is vanilla, easy to reproduce, beginner-accessible, and maintainable. It avoids scripts and mods while still teaching the core engineering concept: separate the environments, control the chamber pressure, and prevent unsafe door states.

### 5.3 Tradeoffs

| Design Choice | Benefit | Tradeoff |
|---|---|---|
| Timer Block baseline | Vanilla and easy to inspect | Timing must be tuned and tested. |
| Single Air Vent | Simple and compact | Pressurization speed depends on chamber volume and oxygen supply. |
| Two Airtight Doors | Clear and reliable pressure boundary | Does not protect against every manual override. |
| Recommended starting chamber size of 3×3×3 | Easier for beginners and maintainers during prototype construction | Larger than a micro-airlock and still requires in-game validation. |
| Event Controllers deferred | Keeps baseline simple | Pressure-aware automation comes later. |

### 5.4 Fail-safe State

The preferred fail-safe state is:

```text
AL_A01_Door_Outer = Closed
AL_A01_Door_Inner = Closed
AL_A01_Vent = Known documented state
```

The draft baseline uses both doors closed as the safest recoverable condition. The final preferred Air Vent state must be confirmed during testing. Until then, the guide treats the Air Vent reset state as **Unverified**.

---

## 6. Bill of Materials

This bill of materials is approximate and should be verified during prototype construction.

| Component | Quantity | Required | Notes |
|---|---:|---:|---|
| Airtight Door | 2 | Yes | Inner and outer door. |
| Air Vent | 1 | Yes | Chamber atmosphere control. |
| Button Panel | 2 | Yes | Outside and inside request controls. |
| Timer Block | 3 | Yes | Entry, exit, and reset sequence. |
| Oxygen Tank or oxygen source | 1 minimum | Yes | Must connect to the Air Vent through conveyors. |
| Conveyor blocks/tubes | As needed | Yes | Depends on installation. |
| Armor blocks | As needed | Yes | Chamber shell and surrounding structure. |
| Interior Light | 1–3 | No | Optional status indication. |
| LCD Panel | 1 | No | Optional operator instructions. |
| Event Controller | 0–2 | No | Optional future variant. |

---

## 7. Build Procedure

### 7.1 Establish the Orientation

Use the following orientation for the baseline guide:

```text
Z+ = Exterior / outside
Z- = Interior / pressurized base
Y+ = Up
X+ = Right when facing exterior
```

### 7.2 Construct the Chamber Shell

1. Select a location between the exterior and the pressurized interior.
2. Construct a sealed chamber with a target internal space of approximately 3 blocks wide × 3 blocks long × 3 blocks high.
3. Leave one door opening on the exterior side.
4. Leave one door opening on the interior side.
5. Avoid placing non-airtight utility blocks in the pressure boundary.
6. Leave access for the Air Vent conveyor connection.
7. Recommended practice: leave maintenance access to Timer Blocks and conveyors where practical.

Expected result: the chamber has a clear exterior side, a clear interior side, and enough internal space for one engineer to move without becoming trapped by door timing.

### 7.3 Install the Airtight Doors

1. Install the exterior Airtight Door.
2. Rename it to `AL_A01_Door_Outer`.
3. Install the interior Airtight Door.
4. Rename it to `AL_A01_Door_Inner`.
5. Confirm both doors can close fully.
6. Confirm neither door is blocked by nearby blocks.

Expected result: the two doors form the primary pressure boundary when closed.

### 7.4 Install the Air Vent

1. Place the Air Vent so that its functional face is exposed to the chamber.
2. Connect the Air Vent to the oxygen supply through the conveyor network.
3. Rename the Air Vent to `AL_A01_Vent`.
4. Confirm the Air Vent has power.
5. Confirm the Air Vent can access oxygen supply.

Expected result: the Air Vent can control the chamber atmosphere once the chamber is sealed.

### 7.5 Install the Controls

1. Place the outside Button Panel near the exterior approach.
2. Rename it to `AL_A01_Button_Outside`.
3. Place the inside Button Panel near the interior approach.
4. Rename it to `AL_A01_Button_Inside`.
5. Do not use either Button Panel as part of the pressure boundary unless separately verified.

Expected result: an engineer can request entry from outside and request exit from inside.

### 7.6 Install Timer Blocks

1. Recommended practice: place three Timer Blocks in a service-accessible location outside the sealed chamber, reachable without depressurizing it.
2. Rename them as follows:

```text
AL_A01_Timer_Entry
AL_A01_Timer_Exit
AL_A01_Timer_Reset
```

3. Keep all Timer Blocks reachable for inspection and replacement.
4. Group the Timer Blocks in `GRP_AL_A01_Timers`, using the Control Panel's group management tools.

Expected result: automation blocks are clearly named and maintainable.

### 7.7 Install Optional Status Indication

1. Install an Interior Light near each approach if status indication is desired.
2. Rename status lights using SEEH names, such as:

```text
AL_A01_Light_Status
```

3. Install an LCD Panel if operator instructions are desired.
4. Rename it to `AL_A01_LCD_Status`.

Expected result: status equipment supports operation without becoming part of the pressure seal.

---

## 8. Configuration

### 8.1 Block Names

| Function | Required Name |
|---|---|
| System | `AL_A01 — Personnel Airlock` |
| Outer Door | `AL_A01_Door_Outer` |
| Inner Door | `AL_A01_Door_Inner` |
| Air Vent | `AL_A01_Vent` |
| Outside Button Panel | `AL_A01_Button_Outside` |
| Inside Button Panel | `AL_A01_Button_Inside` |
| Entry Timer Block | `AL_A01_Timer_Entry` |
| Exit Timer Block | `AL_A01_Timer_Exit` |
| Reset Timer Block | `AL_A01_Timer_Reset` |
| Status LCD | `AL_A01_LCD_Status` |
| Status Light | `AL_A01_Light_Status` |

### 8.2 Block Groups

| Group Name | Contents | Purpose |
|---|---|---|
| `GRP_AL_A01_All` | All airlock blocks | Full-system inspection. |
| `GRP_AL_A01_Doors` | `AL_A01_Door_Outer`, `AL_A01_Door_Inner` | Door inspection and recovery. |
| `GRP_AL_A01_Controls` | Button Panels and Timer Blocks | Control-system inspection. |
| `GRP_AL_A01_Timers` | All Timer Blocks | Automation maintenance. |
| `GRP_AL_A01_Displays` | LCD and status lights | Operator interface maintenance. |

### 8.3 Baseline Control Concept

The baseline uses a conservative timer-driven sequence.

The intended normal states are:

| State | Outer Door | Inner Door | Air Vent | Notes |
|---|---|---|---|---|
| Idle / Safe | Closed | Closed | Documented reset state | Chamber isolated. |
| Prepare Entry | Closed | Closed | Depressurize | Chamber depressurizes so the engineer can enter from the exterior (entry cycle). |
| Exterior Access | Open | Closed | Depressurize | Engineer enters chamber from outside. |
| Pressurize Entry | Closed | Closed | Pressurize | Chamber pressurizes so the engineer can proceed to the interior (entry cycle). |
| Interior Access | Closed | Open | Pressurize | Engineer enters interior. |
| Prepare Exit | Closed | Closed | Pressurize | Chamber, already pressurized, prepares for the engineer to enter from the interior (exit cycle). |
| Chamber Access from Interior | Closed | Open | Pressurize | Engineer enters chamber from interior. |
| Depressurize Exit | Closed | Closed | Depressurize | Chamber depressurizes so the engineer can proceed to the exterior (exit cycle). |
| Exterior Exit | Open | Closed | Depressurize | Engineer exits to exterior. |

> **Caution**
>
> Exact Timer Block delays are not verified in this draft. Start with conservative delays during prototype testing, then record the tested values in the final configuration table.

> **Note**
>
> The Idle/Safe Air Vent setting is intentionally left as "Documented reset state" pending testing (see Section 5.4). During initial construction, choose either Pressurize or Depressurize as a working default, and record the chosen value and the outcome in the Section 10.1 Evidence Record. This draft does not assert which value is correct.

### 8.4 Proposed Timer Block Responsibilities

This table describes the intended behavior. It must be verified in-game before release.

| Timer Block | Intended Function | Verification Status |
|---|---|---|
| `AL_A01_Timer_Entry` | Run the outside-to-inside sequence. | Unverified |
| `AL_A01_Timer_Exit` | Run the inside-to-outside sequence. | Unverified |
| `AL_A01_Timer_Reset` | Return the system to the fail-safe closed-door state. | Unverified |

### 8.5 Button Panel Assignments

The table below describes proposed assignments. It must be verified in-game before release.

| Button Panel | Button | Action |
|---|---:|---|
| `AL_A01_Button_Outside` | 1 | Trigger `AL_A01_Timer_Entry` |
| `AL_A01_Button_Inside` | 1 | Trigger `AL_A01_Timer_Exit` |
| Both panels | 2 | Trigger `AL_A01_Timer_Reset` if configured |

> **Engineering Rationale**
>
> A visible reset action makes recovery easier after interruption, damage, or incorrect manual operation. The reset action should close both doors and return the Airlock to a known documented state.

---

## 9. Diagrams

### 9.1 Layout Diagram

**Figure 1 — Top View of AL_A01 Personnel Airlock**

```text
View: Top
Footprint: 3 wide × 3 long
Grid: Large Grid
Z+ Direction: Outside

OUTSIDE / Z+
    ↑

+---+---+---+
| W | D | W |
+---+---+---+
| W | V | W |
+---+---+---+
| W | D | W |
+---+---+---+

INTERIOR / Z-
    ↓

Legend:
D = Airtight Door
V = Air Vent
W = Wall / armor block
```

The diagram shows the functional arrangement, not every wall, ceiling, conveyor, or service block. The final blueprint should include any hidden conveyor routing needed for the Air Vent.

### 9.2 Control Flow Diagram

**Figure 2 — Baseline Control Concept**

```text
Outside Request
     ↓
AL_A01_Timer_Entry
     ↓
Close / secure inner side
     ↓
Prepare chamber for exterior access
     ↓
Open outer door
     ↓
Close outer door
     ↓
Pressurize chamber
     ↓
Open inner door
     ↓
Reset to closed-door safe state
```

```text
Inside Request
     ↓
AL_A01_Timer_Exit
     ↓
Close / secure outer side
     ↓
Prepare chamber for interior access
     ↓
Open inner door
     ↓
Close inner door
     ↓
Depressurize chamber
     ↓
Open outer door
     ↓
Reset to closed-door safe state
```

> **Note**
>
> The control flow is the design intent. The exact block actions, delays, and final reset behavior must be captured during prototype testing. The steps shown here (for example, "Close / secure inner side") describe intended behavior in plain language; they are not the literal names of Timer Block actions. The actual Timer Block action lists remain Unverified (see Section 8.4) and will be finalized during testing.

---

## 10. Verification

Do not mark this document as `Verified` or `Released` until the baseline build has been tested in Space Engineers.

### 10.1 Evidence Record

| Field | Value |
|---|---|
| Tester | Not recorded |
| Date Tested | Not recorded |
| Game Version | Unknown |
| Game Mode | Not recorded |
| Grid Size | Large Grid |
| Mods Enabled | None intended |
| Scripts Enabled | None intended |
| World Type | Not recorded |
| Oxygen Source | Not recorded |
| Known Limitations | See Section 12 |

### 10.2 Test Plan

| Test ID | Test | Preconditions | Procedure | Expected Result | Evidence Needed | Status |
|---|---|---|---|---|---|---|
| ATM-001-BLD-01 | Build verification | Baseline airlock built from documented block list | Assemble the chamber using only documented blocks and layout assumptions. | Airlock can be built without guessing and with airtight boundary intact. | Screenshots, block list, build notes | Untested |
| ATM-001-NAM-01 | Naming verification | All blocks placed | Compare block and group names against `SEEH-STD-002`. | All documented names match SEEH naming pattern. | Terminal screenshots, naming checklist | Untested |
| ATM-001-CFG-01 | Configuration verification | Automation blocks placed and powered | Check Timer Block actions, Air Vent settings, control assignments, and groups. | Documented configuration matches actual setup. | Terminal screenshots, configuration table | Untested |
| ATM-001-FUNC-01 | Functional entry cycle | Chamber idle; player outside | Press outside request and complete full outside-to-inside cycle. | Player reaches interior without both doors being open at the same time during normal operation. | Video or screenshots, sequence notes | Untested |
| ATM-001-FUNC-02 | Functional exit cycle | Chamber idle; player inside | Press inside request and complete full inside-to-outside cycle. | Player exits safely and chamber behavior matches documented sequence. | Video or screenshots, sequence notes | Untested |
| ATM-001-INTLK-01 | Door interlock behavior | Normal automation enabled | Run repeated entry and exit cycles while observing both door states. | Both doors are not open at the same time during normal operation. | Video, door-state observations | Untested |
| ATM-001-PRESS-01 | Failed pressurization | Introduce leak or open a door | Command pressurization. | Air Vent indicates failure or non-airtight state, and chamber does not fully pressurize. | Air Vent screenshot, HUD screenshot | Untested |
| ATM-001-DEPR-01 | Depressurization recovery | Oxygen storage full or disconnected | Command depressurization and observe chamber and tanks. | Actual behavior is recorded and limitation is documented if recovery is incomplete. | Tank fill screenshot, Air Vent status, notes | Untested |
| ATM-001-VENT-01 | Air Vent disabled | Airlock mid-cycle | Disable Air Vent during operation. | System failure mode is documented, and reset/recovery path is identified. | Video, recovery notes | Untested |
| ATM-001-O2-01 | Oxygen supply unavailable | Oxygen source disconnected or empty | Attempt to pressurize chamber. | Chamber fails to pressurize and failure is observable to operator. | Conveyor screenshot, Air Vent status, HUD | Untested |
| ATM-001-PWR-01 | Power interruption | Airlock mid-cycle | Remove power and then restore it. | Resulting state is documented; recovery procedure is defined. | Video, screenshots, restart notes | Untested |
| ATM-001-MAN-01 | Manual door interaction during cycle | Automated sequence active | Player manually tries to open or toggle doors mid-cycle. | Actual failure mode or safe recovery behavior is documented. | Video, terminal state notes | Untested |
| ATM-001-MULTI-01 | Opposite-direction request conflict | Two players present, one on each side | Both players request opposite directions during active or overlapping cycles. | System behavior is predictable, or unsafe/confusing behavior is documented. | Multiplayer recording, tester notes | Untested |
| ATM-001-SRV-01 | Server timing | Dedicated server or lag-prone host available | Repeat multiple cycles under multiplayer conditions. | Timing drift, desync, or misfires are recorded and classified. | Multiplayer video, server notes | Untested |
| ATM-001-MNT-01 | Maintenance recovery | Replace one critical block after setup | Rebuild the block, reapply name and settings, then rerun function tests. | System can be restored using documented maintenance steps. | Before/after screenshots, test rerun notes | Untested |

---

## 11. Troubleshooting

### Problem: The chamber does not pressurize

**Likely Causes**

- Air Vent is not connected to an oxygen source.
- Oxygen source is empty.
- Chamber is not airtight.
- One Airtight Door is open.
- A non-airtight block is part of the pressure boundary.
- Air Vent is set to depressurize.

**How to Check**

1. Inspect `AL_A01_Vent`.
2. Confirm the Air Vent has power.
3. Confirm conveyor connection to oxygen supply.
4. Confirm both doors are closed.
5. Inspect the Air Vent indicator.
6. Check the chamber shell for leaks.

**Resolution**

- Repair leaks.
- Close both doors.
- Restore oxygen supply.
- Correct the Air Vent mode.
- Rerun test `ATM-001-PRESS-01`.

### Problem: Both doors can be opened manually

**Likely Causes**

- The baseline Timer Block sequence cannot prevent every manual override.
- Door access permissions allow uncontrolled interaction.
- The operator is bypassing the intended sequence.
- Reset procedure has not been run after interruption.

**How to Check**

1. Confirm both doors are named correctly.
2. Confirm Timer Block actions are configured.
3. Check access permissions if used.
4. Run `AL_A01_Timer_Reset`.
5. Repeat the door interlock test.

**Resolution**

- Document the manual override limitation.
- Restrict direct door access if appropriate for the server.
- Consider a future Event Controller or scripted variant if manual override protection is required.

### Problem: The sequence opens a door before pressure is ready

**Likely Causes**

- Timer Block delay is too short.
- Chamber volume is larger than the tested layout.
- Oxygen supply is weak or empty.
- Server performance affects timing.
- Air Vent behavior differs from assumed prototype behavior.

**How to Check**

1. Time the actual pressurization and depressurization cycle.
2. Increase Timer Block delays.
3. Confirm oxygen supply is available.
4. Repeat the entry and exit functional tests.

**Resolution**

- Record tested delay values.
- Use conservative timing.
- Add a note that larger chambers may require longer delays.
- Consider an Event Controller-assisted variant after testing.

### Problem: The Airlock fails after block replacement

**Likely Causes**

- Replacement block was not renamed.
- Replacement block was not added to the correct group.
- Timer Block actions still point to the old block.
- Door or Air Vent settings were not restored.

**How to Check**

1. Compare block names against Section 8.1.
2. Compare group membership against Section 8.2.
3. Inspect Timer Block action lists.
4. Rerun `ATM-001-MNT-01`.

**Resolution**

- Rename the replacement block.
- Re-add it to the required groups.
- Reconfigure Timer Block actions.
- Record the repair in maintenance notes.

---

## 12. Maintenance

### 12.1 Inspection Points

Inspect the following after construction, damage, or repair:

- `AL_A01_Door_Outer`
- `AL_A01_Door_Inner`
- `AL_A01_Vent`
- Conveyor connection to oxygen supply
- `AL_A01_Timer_Entry`
- `AL_A01_Timer_Exit`
- `AL_A01_Timer_Reset`
- Button Panel assignments
- Block group membership

### 12.2 Reset Procedure

1. Stop using the Airlock.
2. Clear the chamber if possible.
3. Trigger `AL_A01_Timer_Reset`.
4. Confirm both Airtight Doors are closed.
5. Confirm the Air Vent is in the documented reset state.
6. Run the appropriate functional test before returning the Airlock to service.

### 12.3 Repair Procedure

1. Replace damaged blocks.
2. Rename each replacement block using Section 8.1.
3. Re-add each replacement block to the correct block groups.
4. Rebuild Timer Block action lists if any referenced block was replaced.
5. Run naming verification.
6. Run configuration verification.
7. Run at least one full entry and exit cycle.

---

## 13. Known Limitations

- Exact Timer Block delays are not verified.
- Multiplayer behavior is not verified.
- Dedicated server behavior is not verified.
- Manual door overrides may defeat a timer-only interlock.
- Air Vent depressurization recovery may depend on oxygen storage capacity.
- Event Controller behavior is not part of the baseline until tested.
- Sensor-assisted automation is not part of the baseline until tested.
- Small-grid behavior is not covered.
- The final reset-state Air Vent setting must be selected during testing.

---

## 14. Expansion Options

### 14.1 QoL Variant

Possible Level 1 additions:

- BuildInfo for leak and block inspection.
- Build Vision for faster block configuration.
- Rich HUD Master for better operator visibility.

These tools may improve construction and inspection but should not change the engineering design.

### 14.2 Engineering Variant

Possible Level 2 additions:

- Event Controller-assisted pressure-state logic.
- Automatic LCDs 2 status display.
- Easy Automation 2 sequence control.
- Programmable Block control logic if scripts are allowed.

These variants must document additional requirements, failure modes, and verification tests.

### 14.3 Server Edition Variant

Possible Level 4 additions:

- Multiplayer request handling.
- Access-control integration.
- Dedicated server timing tests.
- Faction ownership checks.
- Anti-grief manual override restrictions.

Server Edition behavior must not be assumed from single-player testing.

---

## 15. Drafting Notes

This draft intentionally corrected the research-provided naming examples to use SEEH-compliant underscores and system segmentation.

Research examples such as `ALA01DoorOuter` were not used because the released Naming Standard requires segmented names such as `AL_A01_Door_Outer`.

The draft also keeps Timer Block sequencing, exact delays, Event Controller behavior, and multiplayer behavior marked as **Unverified** until in-game testing produces evidence.

---

## 16. Revision History

| Version | Date | Author | Notes |
|---|---|---|---|
| 0.1.0 | 2026-07-07 | Ian Comings / ChatGPT | Initial draft based on Perplexity research for `SEEH-ATM-001`; established Level 0 vanilla baseline, SEEH-compliant naming, draft build procedure, diagrams, verification plan, troubleshooting, maintenance, and expansion options. |
| 0.1.1 | 2026-07-07 | Claude / Technical Editor | Removed the undefined `AL_A01_Light_Warning` example from Section 7.7 (never appeared in Section 3.3 or Section 8.1, risking a beginner building a block that isn't documented anywhere else). Rewrote the Notes column of the Section 8.3 state table so the four cells that previously shared identical text between the entry and exit cycles ("Chamber prepares for exterior access" / "Chamber prepares for interior access") now state direction and cycle explicitly, resolving a comprehension risk for a new player tracing the two cycles through the table. No block names, states, timer responsibilities, evidence labels, or test statuses changed. |
| 0.1.2 | 2026-07-07 | Claude / Standards Audit | Standards-audit fixes. Relabeled the "Verification Notice" callouts in Section 1 and Section 9.2 to the approved `SEEH-STD-001` §19 label "Note," since "Verification Notice" was not among the five standard notice labels (Note, Tip, Caution, Warning, Engineering Rationale). File renamed from `SEEH-ATM-001-personnel-airlock-draft.md` to `SEEH-ATM-001-personnel-airlock.md` to remove the status-derived "-draft" suffix, aligning with the no-status-suffix filename pattern in `SEEH-STD-002` §19; document status continues to be tracked solely via the header `Status` field. No block names, terminology, evidence labels, test statuses, engineering content, or Document ID changed. |
| 0.1.3 | 2026-07-07 | Claude / Beginner Readability Review | Beginner-readability clarifications. Added a one-clause definition of "chamber" at first use (Section 1) and of "pressure boundary" at first use (Section 3.3 Caution), since both terms were previously used before being explained. Added illustrative oxygen-source examples to Section 3.2. Added a pointer to the Control Panel's group management tools in Section 7.6, step 4, since block-group creation mechanics were previously unstated. Added a process note in Section 8.3 clarifying that the Idle/Safe Air Vent placeholder requires the builder to choose a working default during construction and record it in the Evidence Record, without asserting which value is correct. Added a note in Section 9.2 clarifying that Figure 2's plain-language steps describe design intent rather than literal Timer Block action names. No block names, values, procedures, evidence labels, test statuses, or engineering content changed; the missing vertical/layer diagram identified in this review remains open and is routed to blueprint review rather than fixed here. |
| 0.1.4 | 2026-07-07 | Claude / Blueprint Review | Blueprint-review fixes (additive only). Added a "DLC Requirements" row to Section 3.1 for blueprint-metadata completeness ahead of eventual packaging, per `SEEH-STD-003` §24. Clarified Section 7.6, step 1 to specify that Timer Blocks should be placed outside the sealed chamber, reachable without depressurizing it, resolving an ambiguity where "service-accessible location" did not specify relative position. The missing multi-layer/vertical diagram identified in this review (required per `SEEH-STD-003` §17 for the 3-block-high chamber) was **not** added, since it requires a reference build rather than an assumed layout; this remains open pending in-game testing. The Air Vent orientation-confirmation wording was also left open pending `seeh-fact-check`. No block names, engineering values, evidence labels, test statuses, or Document ID changed. |
| 0.1.6 | 2026-07-07 | SEEH Fact Check Follow-up | Applied the approved minimal patch set extracted from the rejected 0.1.5 corrective draft while preserving the canonical 0.1.4 document structure, formatting, section order, diagrams, notices, exact SEEH block names, exact SEEH group names, Sections 14–16, and Revision History continuity. Replaced the oxygen source example name with a neutral project-specific example to avoid implying a canonical subsystem-specific exact block name in the generic requirements table. Reworded the 3×3×3 chamber entry as a recommended starting size for prototype construction rather than an implicitly validated baseline dimension. Reworded maintenance access guidance and Timer Block placement guidance as recommended practice rather than hard mechanics requirements. Reworded the Button Panel assignment lead-in to describe proposed assignments rather than intended verified behavior. Softened the troubleshooting note on chamber size and delay relationship from `require` to `may require` to avoid overstating an untested timing claim. No gameplay validation status changed; Timer Block timing, reset-state choice, multiplayer behavior, dedicated-server behavior, and other existing Unverified items remain Unverified pending in-game testing. |
