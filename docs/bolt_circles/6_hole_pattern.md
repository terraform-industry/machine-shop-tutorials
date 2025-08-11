# Hexagonal (6-Hole) Bolt Circle Coordinates

## Understanding the Problem

When you need to create 6 holes equally spaced around a circular part, you're dealing with a hexagonal pattern. For example, a 152.4mm (6") end cap flange with 6 bolt holes:

- **Number of bolt holes**: 6 bolt holes (eg: M12 bolts)
- **Angular spacing**: 60° apart (360° ÷ 6 = 60°)
- **Bolt circle diameter**: 127mm (5")
- **Bolt circle radius**: 63.5mm (2.5")
- **Hole diameter**: 13mm (0.512") for M12 clearance

## Key Concept: The Hexagon Connection

When you have 6 points spaced 60° apart around a circle and connect them, you create a hexagon. This geometric relationship is the foundation for our calculations.

![Hexagon Concept](./images/6_hole/hexagon_concept.png)
*Figure 1: Six equally-spaced holes form a hexagon pattern on a 152.4mm flange*

## Setting Up Your Coordinate System

1. **Position your part** so that one radius line aligns with a machine axis
2. **Set the X-axis** horizontally through the center
3. **Set your dials or DRO to 0,0** at the center point

## The Magic Numbers

For a 30-60-90 triangle (which appears when working with hexagons), remember these two critical values:

### 1. **0.5** (or 1/2)

- In a 30-60-90 triangle, the radius of the bolt circle is always **twice** the length of the short side
- To find the short side: multiply radius × 0.5

### 2. **0.86603**

- This is the ratio for finding the long leg of the triangle
- To find the long side: multiply radius × 0.86603
  - PRO TIP: _This value comes from sin/cos of 30°, but just memorize it!_

![Triangle Method](./images/6_hole/triangle_method.png)
*Figure 2: The 30-60-90 triangle method showing how to calculate hole positions*

## Calculating Our Hole Positions

### For the first two holes (on the X-axis)

- Position 1: X = +63.5mm (+2.5"), Y = 0
- Position 2: X = -63.5mm (-2.5"), Y = 0

### For the remaining four holes

Using our 30-60-90 triangle relationships:

1. **Calculate the offsets**:

   - Short leg = 63.5mm × 0.5 = 31.75mm (1.25")
   - Long leg = 63.5mm × 0.86603 = 54.99mm (2.165")

2. **Apply the coordinates**:
   - **Hole 3**: X = +31.75mm (+1.25"), Y = +54.99mm (+2.165")
   - **Hole 4**: X = -31.75mm (-1.25"), Y = +54.99mm (+2.165")
   - **Hole 5**: X = -31.75mm (-1.25"), Y = -54.99mm (-2.165")
   - **Hole 6**: X = +31.75mm (+1.25"), Y = -54.99mm (-2.165")

## The Triangle Pattern

Notice how these calculations create four identical right triangles within the circle. Each triangle has:

- Hypotenuse = radius: 63.5mm (2.5")
- Short leg = 31.75mm (1.25")
- Long leg = 54.99mm (2.165")
- Angles: 30°, 60°, and 90°

![All Coordinates](./images/6_hole/all_coordinates.png)
*Figure 3: Complete layout showing all hole coordinates and the four triangular sections*

## Working Tips

1. **Material Prep**: Make sure your blank round is properly faced and centered before locating holes.

2. **Drilling Sequence**: When boring the M12 clearance holes:

   - Start with a center bore or spot drill
   - Use a 12.5mm bore for initial hole
   - Ream to final 13mm size for proper clearance

![Practical Tips](./images/6_hole/practical_tips.png)
*Figure 4: Recommended drilling sequence and verification method*

3. **Efficient Movements**: When moving between holes, change only one coordinate at a time when possible. This minimizes your setup time and also will reduce errors.

4. **QA / Verification**: After cutting the first hole, rotate to position 4 (mirror opposite) and verify the dimension is exactly 127mm (5") center-to-center.

## Quick Reference Table for Common 6-Hole Flange Sizes

| Flange Size | Bolt Circle Diameter | Radius  | Short Offset | Long Offset |
| ----------- | -------------------- | ------- | ------------ | ----------- |
| 100mm (4")  | 76.2mm (3")          | 38.1mm  | 19.05mm      | 33.00mm     |
| 150mm (6")  | 127mm (5")           | 63.5mm  | 31.75mm      | 54.99mm     |
| 200mm (8")  | 177.8mm (7")         | 88.9mm  | 44.45mm      | 76.99mm     |
| 250mm (10") | 228.6mm (9")         | 114.3mm | 57.15mm      | 98.99mm     |

## Summary

By understanding the geometric relationship between a hexagon and its inscribed circle, and remembering just two key numbers (0.5 and 0.86603), you can quickly calculate the position of any hole in a 6-hole circular pattern.