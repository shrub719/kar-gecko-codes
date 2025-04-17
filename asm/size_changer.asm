# Universal Size Changer [shrub719]
# Injected at 80191A3C

# some code from big_kirby, some from y_spin
# runs for every single player
loc_0x0:
  li r6, 0x1234         # prepares the size value
                        # 1234 is a dummy so i can change it from the gecko code
  sth r6, 0x328 (r24)   # r24 points to the start of the current player's struct
                        # stores the size value offset 0x328 from the start of the struct
  li r3, 0x0            # the command the code overwrites
