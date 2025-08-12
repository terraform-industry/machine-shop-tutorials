# Surface Finish

What those little squiggly lines on prints mean, and how to achieve them without going insane.

## Surface Finish Basics

### What the Numbers Mean

**Ra (Roughness Average)**: The most common spec

- Measured in microinches (`µin`) or less commonly in micrometers (`µm`)
- `32 µin` = Pretty rough (visible tool marks)
- `16 µin` = Normal machined finish
- `8 µin` = Smooth (barely feel tool marks)
- `4 µin` = Mirror-ish (with the right light)

**Quick conversion**: `1 µm` ≈ `40 µin`

### Reading the Symbols

```md
\_/\_
32 = 32 microinch max roughness

\_/\_
32 = Must be machined to 32 µin
✓ (no grinding allowed)

\_/\_
16 = Must be ground to 16 µin
G
```

If you see multiple numbers, the top one is usually what matters.

## How to Actually Achieve Different Finishes

### 125 µin - "Just Make Chips"

- Any tool, any speed
- Roughing passes
- Who cares, it's probably gonna get painted or powder-coated

### 63 µin - Standard Machined

- Sharp tools
- Normal feeds and speeds
- What you get when you're not trying

**Mill settings**:

- 0.003-0.005" per tooth
- Don't dwell
- Conventional milling usually better

**Lathe settings**:

- 0.006-0.010" per rev
- Sharp tool
- Positive rake

### 32 µin - Nice Machined Finish

Okay, now you need to pay attention!

**Mill**:

- Fresh tool (not brand new - slightly broken in is actually better)
- 0.002-0.003" per tooth
- Climb mill if your machine doesn't suck
- Spring pass (repeat the final pass)
- Coolant or cutting oil is a must

**Lathe**:

- 0.002-0.005" per rev
- High spindle speed
- Polished tool
- Light final pass (0.001-0.002" DOC)

### 16 µin - Smooth as a Baby's ass

We are getting serious now!

**Mill**:

- Fly cutter with polished HSS
- 200-400 SFM
- 0.001" per tooth max
- Multiple spring passes
- We're flooding on the coolant

**Lathe**:

- Polished HSS or polished carbide
- 0.001-0.002" per rev
- Maximum RPM your lathe can handle
- 0.0005" final pass
- High pressure coolant aimed directly at your cutting edge

### 8 µin or Better - Mirror Time

It usually requires secondary operations:

**Grinding**:

- Fresh dressed wheel
- Light passes
- Lots and lots of coolant
- Let the wheel do the work

**Lapping**:

- Cast iron lap
- Diamond compound
- Figure-8 patterns
- Check every 30 seconds

**Hand Work** (yeah, really):

- 400 → 600 → 800 → 1200 grit
- Always with oil
- One direction only
- Thoroughly clean between grits

## Measuring Surface Finish

### Fingernail Test (Free)

Run your fingernail (if you have them) perpendicular to lay:

- Catches hard = `63 µin` or worse
- Catches slightly = `32 µin`
- Barely feel it = `16 µin`
- Can't feel = `8 µin` or better

### Surface Comparators ($50)

- Little blocks with different finishes
- Visual and touch comparison
- Good enough for 90% of work
- Get one that matches your work

### Profilometer ($$$$)

- Drags a tiny stylus across the surface
- Actually measures real `Ra` value
- Only for when Boss or consumer demands proof
- Oh, and don't drop it!

## Factors That Affect Finish

### Tool Geometry

**Nose radius**: Bigger = better finish (to a point)

- 0.015" = General purpose
- 0.031" = Better finish
- 0.047" = Best finish (but weak)

**Relief angles**: Less = better finish, more rubbing
**Rake angles**: More positive = better finish on aluminum

### Speeds and Feeds

**General rule**: Slower feed = better finish

But also:

- Too slow = rubbing and work hardening
- Too fast = torn surface
- Find the sweet spot

**Speed**: Usually faster = better (until it isn't, experience will forecast)

### The Material Matters

**Aluminum**:

- Loves sharp tools
- High speeds
- Watch for built-up edge

**Steel**:

- Consistent feeds
- Good coolant and plenty of flow
- Honed cutting edge

**Stainless**:

- Sharp tools are mandatory
- Never stop feeding
- High Sulfur content cutting oils, or Diesel Engine spec. motor oil in a pinch

**Cast Iron**:

- Run dry
- Higher speeds
- Negative rake

### Machine Condition

**Spindle runout**: Kills finish
**Way wear**: Causes chatter
**Backlash**: Shows up as lines
**Rigidity**: Everything matters more

## Common Problems and Fixes

### Chatter Marks

Those horrible washboard patterns:

**Fixes**:

- Change speed (up or down 20%)
- Increase feed
- Reduce tool stick-out
- Change number of flutes
- Sometimes run WITHOUT coolant

### Built-Up Edge (BUE)

Aluminum welded to your tool:

**Fixes**:

- More coolant
- Higher speed
- Polish the tool
- Different coating
- Give up and use HSS

### Feed Lines Too Visible

**Fixes**:

- Smaller feed rate
- Larger nose radius
- Overlap passes more
- Spring pass
- Hand blend if allowed

### Inconsistent Finish

**Check**:

- Tool wear (measure every 10 parts)
- Coolant concentration off or coolant needs to be flushed and changed
- Machine warming up
- Material hardness variation

## Shop Finish Tricks

### The Crocus Cloth Special

For lathe work:

1. 320 grit crocus cloth
2. A few drops of oil
3. Back the tool off slightly
4. Hold cloth against spinning part
5. Move slowly along length
6. Instant improvement

**WARNING**: Fingers + spinning things = potential for a very bad time. **Be careful!**

### Fly Cutter Magic

The secret to mirror finishes on mills:

1. Stone the cutting edge
2. Run at 300-400 SFM
3. 0.0005" per tooth
4. Width of cut = 70% of diameter
5. Multiple passes at full depth

### The Scotch-Brite Finish

Job calls for a "brushed" finish?

1. Get part to `32 µin`
2. Red Scotch-Brite pad
3. Straight lines, one direction
4. Consistent pressure
5. Use Kroil (or WD-40 if you are cheap) as lubricant

### Speed Kills (Chatter)

Sometimes slower is better:

- Try 50% speed
- Heavy feed
- Drown in coolant
- Reducing speed often works when nothing else does

## Psychology

### Under Promise, Over Deliver

Consumer wants `32 µin`? Aim for 16.

- Easier to defend
- Looks better
- Same effort usually

### The Sample Game

**Always** make a sample piece first:

- Get consumer approval
- Keep it as reference
- CYA when they complain

### Know When to Say No

Some finishes aren't possible on certain:

- Materials (cast iron won't mirror)
- Geometries (deep pockets)
- Machines (worn ways)

Better to say no than make scrap.

## Equipment That Helps

### Must Have

- Sharp tools (duh)
- Good clean coolant
- Surface comparator
- Selection of polishing stones

### Nice to Have

- Profilometer
- Multiple nose radius inserts
- High-pressure coolant
- Power draw bars (more consistent)

### Secret Weapons

**Microscope** (USB scopes are $50 now)

- See what's really happening
- Catch built-up edge early
- Understand your failures
- Impress/terrify parts consumers

## The Reality

Most prints over-specify surface finish. That `16 µin` callout on a bracket? Nobody's checking. But when it matters, it REALLY matters:

eg:

- Seal surfaces
- Bearing fits
- Sliding surfaces
- Cosmetic parts

Know the difference and save yourself time.

## Quick Reference

| Ra (µin) | Feed (IPR)  | Visual             | Where Used       |
| -------- | ----------- | ------------------ | ---------------- |
| 250      | Whatever    | Rough as hell      | Hidden surfaces  |
| 125      | 0.010-0.015 | Visible tool marks | Non-critical     |
| 63       | 0.006-0.010 | Light tool marks   | General          |
| 32       | 0.003-0.005 | Smooth, some marks | Close tolerance  |
| 16       | 0.001-0.003 | Very smooth        | Bearing surfaces |
| 8        | 0.001 max   | Mirror-ish         | Seals, critical  |

Remember: Good surface finish is 20% settings, 30% tool condition, and 50% giving a damn.
