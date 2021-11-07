local arr = std.range(5, 8);
{
  array_comprehensions: {
    higher: [x + 3 for x in std.range(5, 8)],
    lower: ["one", "two"] + ["three"],
    evens: [x for x in arr if x % 2 == 0],
    odds: [x for x in arr if x % 2 == 1],
    evens_and_odds: [
      '%d-%d' % [x, y]
      for x in arr
      if x % 2 == 0
      for y in arr
      if y % 2 == 1
    ],
  },
  object_comprehensions: {
    evens: {
      ['f' + x]: true
      for x in arr
      if x % 2 == 0
    },
    // Use object composition (+) to add in
    // static fields:
    mixture: {
      f: 1,
      g: 2,
    } + {
      [x]: 0
      for x in ['a', 'b', 'c']
    },
  },
}