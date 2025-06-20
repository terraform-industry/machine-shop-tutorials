# Basics of Geometric Dimensioning and Tolerances (GD&T)

When ±0.005" isn't enough information and the print looks like hieroglyphics.

## Why GD&T Exists

Traditional tolerances says "this hole is 0.500" ±0.005"". But that doesn't tell you:

- Can the hole be tilted?
- What if it's ovate?
- How far off center can it be?
- Does it matter if it's perpendicular?

GD&T answers these questions. It's a pain in the ass, but it prevents $50,000 scrap parts.

## The Symbols You'll Actually See

### Position ⊕

The most common and most important.

```md
⊕ 0.010 M A B C
```

Means: This feature can be off position by 0.010" max relative to datums A, B, and C.

**What it really means**:

- The center of your hole can be anywhere inside a 0.010" diameter circle
- That circle is centered on the perfect location
- Way more forgiving than ± tolerances

### Perpendicularity ⊥

```md
⊥ 0.002 A
```

Your feature can lean 0.002" per inch relative to datum A.

**Translating it**:

- Check with a square and feeler gauges
- Or indicate across the surface
- 0.002" over 1" = 0.004" over 2"

### Parallelism ∥

```md
∥ 0.003 A
```

Like perpendicularity but... Parallel.

**How to check**:

- Dial indicator on a height stand
- Zero at one end
- Sweep across part
- Total variation must be under 0.003"

### Flatness ⏥

```md
⏥ 0.001
```

The entire surface must fit between two parallel planes 0.001" apart.

**Checking it**:

- Surface plate and dial indicator
- Map the whole surface
- High point minus low point ≤ 0.001"

### Concentricity ◎

```md
◎ 0.002 A
```

All points on the surface must be within 0.002" of the datum axis.

**This one is really a bastard and has always given me a pain in the ass**:

- Nearly impossible to measure properly
- Usually position or runout is what they really want
- If you see this on a print, ask the Engineer if they really mean it

### Total Runout ⟲

```md
⟲ 0.003 A-B
```

Spin the part. Indicator can't move more than 0.003" total.

**The difference from Concentricity**:

- This you can actually measure
- Set up between centers or in chuck
- Indicate while rotating
- Read total indicator movement

## Datums: Your Reference System

Datums are the features you measure from. They're labeled A, B, C, etc.

### Primary, Secondary, Tertiary

The order matters:

1. **A** - Establishes main orientation (usually biggest flat surface)
2. **B** - Stops rotation (usually two holes or an edge)
3. **C** - Locks final degree of freedom

**I think of it like this**:

- A = Put the part on the surface plate
- B = Push it against the angle plate
- C = Slide it against a stop

### Setting Up Datums

**In practice**:

1. Clean everything (remember, one chip ruins everything!)
2. Datum A goes on your most stable surface
3. Indicate to confirm contact
4. Lock down before measuring

## Material Condition Modifiers

These little letters change everything:

### M - Maximum Material Condition (MMC)

The condition where the part weighs the most:

- Largest shaft
- Smallest hole

**Why it matters**: You get bonus tolerance as the part gets smaller/larger.

Example: 0.500" ±0.005" hole with ⊕ 0.010 M

- At 0.495" (MMC): 0.010" position tolerance
- At 0.500": 0.015" position tolerance
- At 0.505": 0.020" position tolerance

### L - Least Material Condition (LMC)

Opposite of MMC. Rarely used except for minimum wall thickness.

### RFS - Regardless of Feature Size

No bonus tolerance buddy. The tolerance is **the tolerance**, period.

## How to Actually Check This Stuff

### Poor Man's Position Check

No CMM? Hey, no problem!
(_Coordinate Measuring Machine - A $100K+ robot that measures parts automatically_)

**For holes**:

1. Make a gauge pin 0.010" smaller than MMC
2. Pin should fit through hole
3. And touch the edges of the true position
4. If it fits, part is good

**Math check**:

- Measure actual X and Y location
- Calculate distance from true position
- Distance = √[(X error)² + (Y error)²]
- Must be less than half the position tolerance

### Checking Tolerances Without Expensive Tools

**Perpendicularity**:

- Precision square
- Feeler gauges
- Do the math (0.002" per inch)

**Parallelism**:

- Dial indicator on height gauge
- Sweep the surface
- Note high and low

**Flatness**:

- Surface plate
- Dial indicator
- Grid pattern measurement

### When You Need a CMM

Be honest with yourself. You need a CMM when:

- Position callouts are under 0.005"
- Multiple datums get complex
- Profile tolerances
- The Consumer requires documentation

## Common GD&T Mistakes

### In Design

1. **Over-constraining**: Every feature doesn't need GD&T
2. **Impossible tolerances**: 0.0001" position on a drilled hole? Get the fuck out of here!
3. **Wrong symbols**: Using Concentricity when they mean runout
4. **No datum structure**: Symbols without clear references or hierarchy

### In Manufacturing

1. **Ignoring bonus tolerance**: That is like leaving money on the poker table
2. **Wrong setup**: Not following datum priority
3. **Bad math**: Position isn't the same as ±
4. **Assuming RFS**: When M gives you breathing room

### In Inspection

1. **Measuring wrong**: Like using calipers for position
2. **Setup errors**: Datums not properly established
3. **Math errors**: Not doing the trig right
4. **Over-measuring**: Checking every feature when only critical ones matter

## In The Real World

### What Actually Matters

In order of how often it screws people:

1. **Position** - Holes not lining up
2. **Perpendicularity** - Square isn't square
3. **Flatness** - Gasket surfaces leak
4. **Parallelism** - Movement in parts assemblies where there shouldn't be any
5. **Profile** - Aerospace mostly

### When to Push Back

Sometimes the engineer went crazy with GD&T:

- Ask what the part does
- Suggest loosening non-critical features
- Explain cost implications
- Always come to the table ready to offer functional alternatives

### The Magic Words

_"Does this need to be inspected or just made to print?"_

Sometimes they just want best effort. Sometimes they're buying a CMM report. Know the difference.

## Quick Reference Cheat Sheet

| Symbol | Name          | How to Check            | Shop Reality                  |
| ------ | ------------- | ----------------------- | ----------------------------- |
| ⊕      | Position      | CMM or trig             | Most common, learn this first |
| ⊥      | Perpendicular | Square + feelers        | Usually 0.002-0.005"          |
| ∥      | Parallel      | Indicator sweep         | Like flatness but relative    |
| ⏥      | Flatness      | Surface plate           | Under 0.001" is hard          |
| ◎      | Concentricity | CMM only                | Probably meant runout         |
| ⟲      | Runout        | Indicate while spinning | Actually measurable           |

## Your GD&T Survival Kit

### Must Have

- Scientific calculator (for position math)
- Surface plate
- Dial indicators
- Height gauge
- Basic GD&T chart

### Should Have

- Gauge pins
- Precision squares
- Digital height gauge
- GD&T textbook

### Nice to Have

- CMM access
- GD&T software
- Optical comparator
- Friends in QC

## Just The Basics

These are just the very basics of GD&T. It's a big subject, but most of the rest of it will lie in edge cases and not day-to-day encounters.
Start with position and perpendicularity - in reality, those cover about 80% of all the scenarios.
And remember: When in doubt, ask what the part does. Sometimes the print is wrong, and you're the only one who'll catch it.
