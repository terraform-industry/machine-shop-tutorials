# Square and Octagonal (4 & 8-Hole) Bolt Circle Patterns

## The Easy Ones

If you can locate the center of your part and move to four corners of a square, congratulations - you can do 4-hole patterns. The 8-hole is just doing it twice with a 45° rotation. No magic numbers needed here, just basic shop math.

## 4-Hole Pattern (Square)

### The Setup

- **Angular spacing**: 90° apart (360° ÷ 4 = 90°)
- **Pattern shape**: Square inscribed in your bolt circle

### The Dead Simple Method

Starting with your center at (0,0) and radius R:

1. **Hole 1**: X = +R, Y = 0 (3 o'clock position)
2. **Hole 2**: X = 0, Y = +R (12 o'clock position)
3. **Hole 3**: X = -R, Y = 0 (9 o'clock position)
4. **Hole 4**: X = 0, Y = -R (6 o'clock position)

That's it. You're literally just moving to the radius distance on each axis.

### The 45° Rotated Method (More Common)

Most 4-hole patterns have holes at the "corners" rather than on the axes. For this layout:

All four holes are at the same distance from each axis:

- **Offset** = R × 0.7071 (or R × sin(45°))

Position all holes:

1. **Hole 1**: X = +offset, Y = +offset
2. **Hole 2**: X = -offset, Y = +offset
3. **Hole 3**: X = -offset, Y = -offset
4. **Hole 4**: X = +offset, Y = -offset

### Example: 100mm Bolt Circle

For a 100mm diameter bolt circle (50mm radius):

- Offset = 50 × 0.7071 = 35.35mm

So each hole is at (±35.35, ±35.35)

## 8-Hole Pattern (Octagonal)

An 8-hole pattern is just a 4-hole pattern done twice. You make one set of 4 holes, then another set rotated 45°.

### The Method

- **Angular spacing**: 45° apart (360° ÷ 8 = 45°)
- **Pattern shape**: Regular octagon

### Coordinate Calculation

**Set 1 - On the axes** (like the simple 4-hole):

1. **Hole 1**: X = +R, Y = 0
2. **Hole 3**: X = 0, Y = +R
3. **Hole 5**: X = -R, Y = 0
4. **Hole 7**: X = 0, Y = -R

**Set 2 - At 45° angles** (like the rotated 4-hole):

- Offset = R × 0.7071

2. **Hole 2**: X = +offset, Y = +offset
3. **Hole 4**: X = -offset, Y = +offset
4. **Hole 6**: X = -offset, Y = -offset
5. **Hole 8**: X = +offset, Y = -offset

### Example: 150mm Bolt Circle

For a 150mm diameter bolt circle (75mm radius):

- Holes 1,3,5,7: On axes at 75mm from center
- Holes 2,4,6,8: At 45° angles, 53.03mm from each axis

## Quick Reference Table

| Pattern | Bolt Circle Dia | Radius | On-Axis Distance | 45° Offset |
| ------- | --------------- | ------ | ---------------- | ---------- |
| 4-hole  | 100mm (4")      | 50mm   | 50mm             | 35.35mm    |
| 4-hole  | 150mm (6")      | 75mm   | 75mm             | 53.03mm    |
| 8-hole  | 150mm (6")      | 75mm   | 75mm             | 53.03mm    |
| 8-hole  | 200mm (8")      | 100mm  | 100mm            | 70.71mm    |

## Shop Tips

1. **Start Simple**: For 4-hole patterns, drill opposite holes first (1 & 3, then 2 & 4). This lets you verify your bolt circle diameter immediately.

2. **8-Hole Sequence**: Drill all 4 on-axis holes first, verify spacing, then add the 45° holes.

3. **Rotary Table Alternative**: If you have a rotary table, just index 90° for 4-hole or 45° for 8-hole. Way easier than coordinate math.

4. **The 0.7071 Constant**: This is just √2/2 or sin(45°). An old timer taught me to remember it as _"point seven-oh-seven"_ and left it at that.

## Verification

For any square pattern, the diagonal distance between opposite holes should be:

- **Diagonal** = Bolt circle diameter

This gives you a quick sanity check with your calipers.

## When to Use What

- **4-hole on axes**: Easier to indicate and measure, use when appearance doesn't matter
- **4-hole at 45°**: Standard for flanges and covers, looks more balanced
- **8-hole**: When you need more bolts but don't want to calculate weird angles

This is like the _training wheels_ of bolt circles. Start here, and once you've mastered it, the 5-hole and other odd patterns won't seem so intimidating.

