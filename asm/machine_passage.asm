# Oops! All Machine Passage! [shrub719]
# Injected at 8005E1A8

# injected at function that loads music from ID
# input - r3, ID of song to play
loc_0x0:
  li r3, 0x1b       # replaces all IDs with Machine Passage soundtrack (ID 0x1b)
  stwu r1, -80(r1)  # the instruction this code overwrites
