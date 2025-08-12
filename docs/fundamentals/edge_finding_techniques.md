# Edge Finding: Because Eyeballing It Is For Amateurs

Author: Johannes A. Nilsson

## Why Edge Finding Matters

You can't machine what you can't find. Every dimension on your part is
measured from somewhere, and if you don't know where that somewhere is,
you're just making expensive scrap. Edge finding is how you tell your
machine exactly where your part is, not where you think it is.

## The Paper Method (Old School)

This is what I learned first because I was too broke for real tools. Still
works great.

### What You Need

- Zig-Zag or similar Cigarette paper (0.001-0.002" thick)
- Regular paper (0.003-0.004" thick)
- Your spindle (NOT spinning)
- Patience

### The Process

1. **Put paper between tool and work**
2. **Move table until paper drags** when you pull it
3. **You're now 1 paper thickness away** from the edge
4. **Zero your DRO** and account for paper thickness + tool radius

### Pro Tips

- Use the same paper every time (consistency matters)
- Pull straight out, not at an angle
- Feel for the "grab" not the "tear"
- Works great for finding tops of parts too

### When to Use It

- Setting Z-height on tools
- Finding edges when you forgot your edge finder
- When you need dead quiet operation
- Working with non-conductive materials (for you lucky EDM guys)

## Mechanical Edge Finders (The Wobbler)

The classic tool that every machinist has dropped at least once.

### How They Work

These have a spring-loaded tip that wobbles around until it touches the
work, then it kicks off to the side.

### The Technique

1. **Chuck it up** in a collet (not a drill chuck, you savage bastard)
2. **Spin at 500-1000 RPM** (too fast and it won't work)
3. **Approach slowly** from the side
4. **Watch for the kick** - the tip will suddenly jump sideways
5. **You're now 0.100" away** (for a 0.200" tip) from the edge

### The Gotchas

- **Different tip sizes exist** - 0.200" is common, but check yours
- **Runout matters** - A bent edge finder is useless
- **Clean the tip** - Oil and chips make it stick, keep it clean and oiled
- **Height matters** - Find the edge at the same Z-height you'll be cutting

### Types of Mechanical Edge Finders

#### Standard Wobbler

- Most common
- Usually 0.200" diameter tip
- Good for ±0.0002" if you're careful

#### Double-End Edge Finder

- Has different diameter ends
- Handy for inside corners
- One end usually has a point for finding centers

#### Wiggler Sets

- Comes with various attachments
- Ball ends for finding holes
- Point for scribing
- The one attachment you need is always missing

## Electronic Edge Finders

Welcome to the 21st century. These beep when you touch the work.

### How They Work

Basic, it completes a circuit through the machine when the tip touches work.
Simple but effective.

### The Good

- **Audible feedback** - Hard to miss the beep
- **Works at any speed** - Even stationary
- **Very repeatable** - ±0.0001" is achievable
- **No "kick"** to watch for

### The Bad

- **Needs conductive material** - Won't work on plastics or ceramics
- **Batteries die** and they do so always at the worst possible time,
  keep a backup stocked!
- **More expensive** than mechanical
- **Can be fooled** by coolant or chips

### Pro Technique

1. **Clean everything** - Oil is an insulator
2. **Touch off multiple times** - Average the readings
3. **Listen for the tone change** - Not just the first beep
4. **Check your ground** - Bad ground = bad readings

## Finding the Center of Holes

Because sometimes you need to put a hole in a hole.

### Dial Indicator Method

1. **Mount indicator in spindle**
2. **Lower into hole**
3. **Adjust table until indicator reads zero** all around
4. **You're centered** (if your spindle is true)

### Ball End Method

1. **Use wiggler with ball attachment**
2. **Let it find its own center** in the hole
3. **When it stops wobbling**, you're close
4. **Fine tune with indicator**

### The Coaxial Indicator

Expensive but awesome. Two indicators in one body find center fast.

## Advanced Tricks

### Finding Angles

Use edge finder on two points along an edge, do the math for the angle.

### Finding Round Stock Centers

Touch off four sides (90° apart), average X and Y positions.

### The Safety Touch

Always do a "safety touch" - back off and approach again to verify your
first reading.

### Using Gauge Pins

For critical work, use a known diameter gauge pin in the spindle instead of
an edge finder.

## Common Mistakes

### Spindle Deflection

Pushing too hard bends the spindle and gives false readings. Let the tool
do the work.

### Forgetting Tool Diameter

Edge finder says you're at X=0.100" but you forgot to account for the
0.100" radius. Now your part is 0.200" off.

### Dirty Surfaces

Chips, oil, and rust all conduct electricity differently. Clean your shit,
and clean it often.

### Wrong RPM

Too fast and mechanical finders won't kick. Too slow and you can't see the
wobble. RTFM!

## Accuracy Comparison

From worst to best:

1. **Eyeballing**: ±0.030" (Just don't you schmuck)
2. **Paper method**: ±0.002"
3. **Mechanical finder**: ±0.0005"
4. **Electronic finder**: ±0.0002"
5. **Dial indicator**: ±0.0001" (but slow)

## When to Use What

#### Paper Method

- Quick and dirty setups
- Non-conductive materials
- When you're in a hurry
- Quick Z-height settings
- Leveling a 3D printer bed

#### Mechanical Edge Finder

- Most general work
- When you need to see the edge
- No batteries required
- Works in coolant

#### Electronic Edge Finder

- Critical dimensions
- Production work
- When repeatability matters
- Clean, dry setups

#### Dial Indicator

- Finding hole centers
- Maximum accuracy needed
- Checking your other methods
- When time doesn't matter

## The Golden Rules

1. **Find edges at cutting height** - Parts aren't always square
2. **Find multiple points** - Verify your edges are actually straight
3. **Account for tool deflection** - Especially with small tools
4. **Write down your zeros** - Memory is unreliable
5. **Verify with a test cut** - Trust but verify

## Final Thoughts

Edge finding is like foreplay - rush it and you'll regret it later. Take
the time to do it right and your parts will actually match the print. And
remember, the most expensive edge finder in the world won't help if your part
moves after you find the edge. Clamp your shit down properly.

The difference between a hack and a professional machinist is about
0.002" - and most of that comes from proper edge finding. So learn this
set of skills and get well paid.
