# Bolt Circle Coordinate Calculations

Author: Johannes A. Nilsson

## Introduction

Here is my practical approach when I need to machine parts with features
equally spaced around a circle. This might be features such as scallops,
holes, or other patterns, understanding the mathematics behind positioning
while basic, is still crucial skill that I have observed many seasoned
builders still don't fully grok. So I wrote this tutorial to teach the
fundamental principles for calculating coordinates of holes positioned around
a circle, based on radius mathematics (trigonometry).

## Available Patterns

### [6-Hole Pattern (Hexagonal)](./6_hole_pattern.md)

The most common bolt pattern using 30-60-90 triangles and simple
multipliers (0.5 and 0.86603). This is the one I get asked about most
often.

### [4 and 8-Hole Patterns (Square/Octagonal)](./4_8_hole_patterns.md)

90° and 45° spacing - the easiest patterns to calculate. 8-hole is just
4-hole with a second set rotated 45°. If you can't figure these out, maybe
take up knitting instead.

### [5-Hole Pattern (Pentagon)](./5_hole_pattern.md)

72° spacing - requires actual sine/cosine but I'll show you shortcuts so
you don't need to be embarrassed pulling out a calculator at the mill.
Included some diagrams because this one's just weird.

## General Principles

All bolt circle calculations follow the same basic approach:

1. Find your center point (0,0)
2. Determine your bolt circle radius
3. Calculate X and Y coordinates for each hole
4. Use coordinate positioning or rotary indexing to locate holes

## Closing Thoughts

I'm thinking ahead—so the next time I get asked how to do this, I've got
an easy hyperlink to send. After you've performed these operations a few
times it's just like walking. You don't even have to think about it.
