# Shop Floor Inspection

How to check your parts efficiently without turning into the QC department.

## Philosophy

You're a machinist, not a metrologist. But if you don't check your work:

- Scrap happens at the worst time
- Rework kills your efficiency
- Trust in your capability disappears
- Your reputation goes to shit

The trick is checking smart, not checking everything.

## First Article Inspection

### What to Check on Part #1

**Always check**:

- Critical dimensions (noted on print)
- Anything with tight tolerance (±0.001" or less)
- Features that reference datums
- Mating surfaces
- Anything you had trouble with

**Skip (usually)**:

- Reference dimensions
- Stock thickness (if you didn't machine it)
- Non-functional features
- Anything marked "TYP" after you check one

### The Order Matters

Check in this sequence:

1. **Datums first** - Everything references these
2. **Critical features** - The stuff that'll scrap the part
3. **Tight tolerances** - Before tool wear matters
4. **Everything else** - If you have time

### Documentation

Even if nobody asked, write it down:

```md
Part: Widget-123 Rev B
Date: 3/14/24
Machine: Haas VF2

| Dim  | Nominal | Tol   | Actual | Tool |
| ---- | ------- | ----- | ------ | ---- |
| A    | 2.500   | ±.005 | 2.4985 | T3   |
| B    | 0.750   | ±.001 | 0.7495 | T7   |
| Hole | Ø.500   | +.003 | 0.5015 | T12  |
```

Why? Cover Your Ass (CYA), plus you'll refer back to this.

## In-Process Inspection

### When to Check During the Run

**Check every part**:

- First 5 parts (tools warming up)
- After any adjustment
- After tool changes
- If something sounds different

**Check periodically**:

- Every 10th part on long runs
- Every 5th on aluminum (tool wear)
- Every 20th on cast iron (stable)
- When you're bored (find problems early)

### What to Check

**The smart way**:

- Pick 2-3 critical dimensions
- Rotate what you check
- Focus on what changes (tool wear dimensions)
- Skip what can't change (fixture located features)

### Trend Tracking

The secret to catching problems before scrap:

eg:

| Part # | Dimension | Direction        |
| ------ | --------- | ---------------- |
| 1      | 0.7500    | --               |
| 10     | 0.7498    | ↓                |
| 20     | 0.7495    | ↓                |
| 30     | 0.7491    | ↓ <- Adjust now! |

Tool wear is predictable. Use it.

## Quick Checks That Save Your Ass

### The Finger Test

For de-burred edges:

- Run finger along edge
- Smooth = good
- Catches = needs work
- Cuts you = you forgot to de-burr, dingus

### The Sharpie Test

For checking cutter contact:

1. Color surface with Sharpie
2. Take light pass
3. Check coverage
4. Full width = good, spots missed = tram issue

### The One-Two-Three Block Test

For perpendicularity:

1. Part against 1-2-3 block
2. Should sit flat
3. Light test - no gaps
4. Faster than indicating

### The Drop Test

For tapped holes (aluminum only):

1. Thread in appropriate screw
2. Hold part vertical
3. Screw should spin out freely
4. If it binds, tap is dull

## Catching Problems Early

### Listen to Your Machine

Sound changes mean something:

- **Higher pitch** = tool dulling
- **Chatter** = something's loose
- **Squealing** = needs coolant
- **Hammering** = broken insert

Check the part when sounds change.

### Watch Your Chips

Chips tell the truth:

- **Color change** = heat = size change
- **Shape change** = tool wear
- **No chips** = rubbing = about to break
- **Stringy** = adjust speed/feed

### Feel the Part

After roughing (when cool):

- **Hot spots** = tool rubbing
- **Rough areas** = chatter you didn't hear
- **Steps** = tool deflection
- **Raised edges** = excessive tool pressure

## Statistical Process Control (SPC) Lite

You don't need software. Just paper.

### The Poor Man's Control Chart

```md
Nominal: 1.000" ±0.002"

1.002 | • •
1.001 | • •
1.000 | • •
0.999 | •
0.998 | • <- Trending bad

Time →
```

When 3 points trend the same direction, adjust.

### The 10% Rule

Adjust when you've used 10% of tolerance:

- ±0.005" tolerance
- Adjust at 0.001" from nominal
- Gives you room for error
- Prevents scrap

### Capability Quick Check

Make 5 parts, measure same dimension:

- Range under 1/3 tolerance = good
- Range 1/3 to 2/3 tolerance = marginal
- Range over 2/3 tolerance = fix something

## Tools for Efficient Inspection

### Go/No-Go Gauges

Best investment for production:

- Instant pass/fail
- No math
- No misreading
- Operators can self-check

**When to use**:

- Holes (plug gauges)
- Shafts (ring gauges)
- Threads (thread gauges)
- Any repeated feature

### Gauge Pins

Poor man's bore gauge:

- Plus pins (should fit)
- Minus pins (should not fit)
- Faster than measuring
- Good for checking while part's in machine

### Air Gauging

For high-volume precision:

- Measures to 0.000050"
- No contact (no scratches)
- Fast
- Expensive but worth it

### Vision Systems

The future is now:

- Optical comparators for profiles
- Video measuring for small parts
- No touch = no deflection
- Great for flexible parts

## Common Inspection Mistakes

### Measuring Hot Parts

Aluminum grows 0.0001" per inch per 10°C. That's 0.001" on a 1" part at 100°C. Wait for it to cool or do the math.

### Wrong Tool for the Job

- Calipers for depth = bad
- Micrometer for ID = worse
- Tape measure for ±0.010" = you're fired

### Dirty Tools/Parts

One chip = wrong measurement!

Clean:

- Measuring surfaces
- Part surfaces
- Your hands
- The air (blow off before measuring)

### Parallax Error

Reading at an angle = reading wrong:

- Digital tools fix this
- Analog needs perpendicular viewing
- Mirrors on good tools show proper angle

### Assuming Instead of Checking

"The fixture locates it perfectly" - Until it doesn't
"The CNC is always accurate" - Until it isn't
"I checked the first one" - Tool wear is real

## The Economics of Inspection

### Time vs Risk

**High risk** (check everything):

- Critical parts (High Temp, High pressure)
- One-off customs parts
- Your first attempt

**Low risk** (spot check):

- Non-critical features
- Proven programs
- Repeat work orders
- Large tolerances

### The Hidden Cost

Bad parts cost more than inspection time:

- Scrap material
- Machine time
- Your time (twice)
- Loss of your consumers confidence

### The 10-100-1000 Rule

- $10 to prevent
- $100 to catch in-house
- $1000 to fix in field

## Building Good Habits

### Start of Shift

1. Check measuring tools (zero, damage)
2. Review prints for critical dimensions
3. Plan inspection points
4. Set up documentation

### During Production

1. First article complete check
2. Periodic critical dimensions
3. Track trends
4. Adjust before out of tolerance

### End of Shift

1. Final part inspection
2. Document any adjustments
3. Note for next shift
4. Store those gauges properly

## Your Inspection Setup

### At Your Machine

- 6" calipers
- 0-1" micrometer
- Go/no-go for repeat jobs
- De-burring tools
- Calculator

### At the Bench

- Surface plate
- Height gauge
- Indicators
- Gauge blocks
- Good lighting

### In Your Head

- Which dimensions kill parts
- How features relate
- What changes with wear
- When to stop and check

## The Bottom Line

You can't inspect quality into parts, but you can inspect scrap out of production. Check smart:

1. Know what matters
2. Check it efficiently
3. Track trends
4. Adjust early
5. Document everything

The best machinists catch their mistakes before they become problems. The worst ones let QC find them. Which one do you wanna be?
