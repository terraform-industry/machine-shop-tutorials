# Compound Angles: Shop Hacks for Angled Holes and Bevels

Author: Johannes A. Nilsson

## The Problem Nobody Warns You About

So the print says "drill 3/8 hole at 35° from surface, 15° from edge."
Cool story bro, but how the hell do you actually set that up on a
Bridgeport?

Look, I'm not a machinist. I'm a hacker who needed to make weird parts
and figured this out the hard way through a lot of scrap metal and
swearing. This tutorial covers the dirty tricks for calculating and
setting up compound angles without a 5-axis machine or a math degree,
so you don't have to suffer like I did.

## Understanding Compound Angles

A compound angle is when you need to tilt in two directions at once. Think of
it like this:

- **Simple angle**: Tilting your drill press table to drill at 45°
- **Compound angle**: That same hole also needs to be rotated 20° from the
  front face

It's the difference between a ramp and a twisted ramp.

## Tilt and Rotate Method

If you're lucky enough to have access to a mill with a tilting head, this
is probably the most practical approach.

### Process

1. **Tilt the head** to your primary angle
2. **Rotate the part** on the table for the secondary angle
3. **Lock everything down** before you regret it

### Rotation Calculation

Hey Bro! The rotation angle isn't what the print says! You need:

$$\text{True rotation} = \arctan\left(\frac{\tan(B)}{\cos(A)}\right)$$

Where:

- $A$ = your tilt angle
- $B$ = the angle from the print

### Example: 25° tilt, 15° rotation specified

$$\text{True rotation} = \arctan\left(\frac{\tan(15°)}{\cos(25°)}\right)$$

$$= \arctan\left(\frac{0.2679}{0.9063}\right)$$

$$= \arctan(0.2956) = 16.47°$$

So you rotate 16.47°, not 15°. Miss this and your hole ends up in
your vise!

## Triangles Make Life Easier

For repeat work, make yourself a compound angle block.

### How to Make One

1. **Calculate the angles** using the formulas above
2. **Machine a block** with those angles on adjacent faces
3. **Drill and ream a hole** perpendicular to the angled face
4. **Use it as a drill guide** _forever_

Pro tip: Stamp the angles on the block. Lest you forget, future you is
forgetful.

## Grandpa's Sine Bar Method

Got a sine bar gathering dust in your tool chest? Probably inherited from
some dead guy who actually knew how to use it?

Well, thank him for passing it on, because you can use it for compound
angles too. A real machinist would use two sine bars for this.
But having TWO sine bars is like finding a unicorn. If you are that
guy, kudos to you.

I was just lucky enough to have only one that some old timer left
behind. So here's the real-world approach:

### What You Actually Have

- One sine bar (probably crusty but accurate)
- An angle plate (hopefully square)
- Jo blocks or gauge blocks (or at least some decent parallels)
- That old Starrett catalog with the sine constants table
- A calculator because almost nobody memorizes that shit

### The Single Sine Bar Setup

Since you probably only have one sine bar, here's how to make it work:

1. **Primary angle**: Use your sine bar to set angle $A$
2. **Secondary angle**:
   - Clamp your work to the sine bar
   - Now rotate the whole assembly (sine bar + work) on an angle plate
   - Set this rotation to: $B \times \cos(A)$

### The Broke-Ass Alternative

No angle plate? I saw that one coming.  
Use your vise:

1. Set sine bar to primary angle in the vise
2. Shim one side of the vise jaw to create the secondary angle
3. Calculate shim height based on vise jaw width and needed angle
4. Cross your fingers and take light cuts

If you are that well equipped guy, got lucky at the estate sale, or
you have a company charge card - life with TWO sine bars is much nicer.
Read on, the following is for you.

### Example: 30° from vertical, 20° from front

1. Set first sine bar to 30°
2. Calculate second angle:

   $$20° \times \cos(30°) = 20° \times 0.866 = 17.32°$$

3. Set _second_ sine bar to 17.32°
4. Your drill will now be at the true compound angle
5. Pour one out for your boss or the old timer who left you these tools

## Quick Reference Formulas

Look, I know math isn't everyone's strong suit, so let me break this down
for the n00bs:

### For Tilt and Rotate

- **Tilt angle**: $A$ (as printed) - this one's easy, just use what's on
  the drawing
- **Rotation angle**: This is where it gets tricky

$$\theta_{rotation} = \arctan\left(\frac{\tan(B)}{\cos(A)}\right)$$

**What this means**: When you tilt the head, the rotation angle
changes. The formula compensates for this. If you just rotate by angle B
without this correction, your hole will be off.

**Calculator steps**:

1. Take tan of angle B
2. Divide by cos of angle A
3. Take arctan (tan⁻¹) of the result
4. That's your actual rotation angle

### For Stacked Sine Bars

- **First sine bar**: $A$ (as printed) - straight from the drawing
- **Second sine bar**: Here's where the magic happens

$$\theta_{second} = B \times \cos(A)$$

**Why this works**: The second angle gets "compressed" when you tilt
the first sine bar. Think of looking at a tilted picture frame - it
looks narrower from the side. Same deal here.

### For Resultant Angle

Want to know what angle your tool actually makes with the surface?
(Useful for checking if you'll have clearance)

$$\theta_{resultant} = \arccos(\cos(A) \times \cos(B))$$

**In English**: Multiply the cosines of both angles, then take the
arc-cosine. This tells you the true angle between your tool and the
work surface. If it's over 45°, you might have clearance issues.

## Common Compound Angles

| Application            | Angle A | Angle B | Result | Notes                  |
| ---------------------- | ------- | ------- | ------ | ---------------------- |
| Drill jig bushings     | 15°     | 15°     | 21.0°  | Standard drill jig     |
| Countersink relief     | 30°     | 20°     | 34.8°  | Allows tool clearance  |
| Turbine blades         | 45°     | 30°     | 51.3°  | Typical inlet angle    |
| Weird automotive stuff | 22.5°   | 17°     | 27.5°  | Because race car       |

## Shop Tricks

### The Sharpie Method

1. Set up your compound angle
2. Hold a Sharpie in the spindle
3. Lower it to barely touch the work
4. If it makes a perfect dot, you're square to the surface
5. If it makes an oval, you're off

### The Test Block

Always do a test hole in scrap material first. Somehow compound
angles have a way of being exactly wrong when you think they're right.

### The "Good Enough" Check

For non-critical angles under 20°:

- The error from ignoring the compound effect is about 2% per 10° of
  secondary angle
- Sometimes that's good enough
- Sometimes it's not - so know your tolerances

## When to Just Say No

If the print calls for:

- Compound angles over 45° in both directions
- Three different angles (not joking, that's actually a thing)
- Angles that result in tool holder interference

Consider:

1. Re-designing the part
2. Using a 5-axis machine
3. EDM?
4. Finding a new job

## Safety Note

Compound angle setups are sketchy as fuck. Everything wants to slip, rotate,
or launch itself across the shop and kill you.

- Use proper clamping (rule of thumb, use more than you think you
  need)
- Take light cuts until you trust the setup
- Keep your head out of the line of fire and wear a face shield AND
  safety glasses

## Closing Thoughts

Compound angles are where real machinists earn their money and hack-ass
machinists learn humility.

Take your time, check your math twice, and always do a test cut.
And remember - if the engineer who designed the job couldn't figure out
how to make it flat, that's their problem, not yours. But now you know
how to solve it anyway.
