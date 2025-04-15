# Big Kirby [shrub719]
# Injected at 80191A3C

# location stolen from container12345's y_spin
# it's part of the main loop that's supposed to check for whether it should quick spin
# TODO: only run once?
loc_0x0:
  lis r5, 0x8055        # 0x8055AA2C is the pointer for p1's data struct
                        # stores the first half
  ori r5, r5, 0xAA2C    # stores the second half
  lwz r5, 0 (r5)        # gets the memory address the pointer points to
  li r6, 0x3FFF         # prepares the size value 0x3FFF
  sth r6, 808 (r5)      # stores the size value ofset 808 from the start of the struct
  li r3, 0x0            # the command the code overwrites
