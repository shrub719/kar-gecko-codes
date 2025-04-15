# Oops! All Mics! [shrub719]
# Injected at 801A61D4

# 801A61D4 is the function for giving a player an ability
# r4 is the input for the ID of the copy ability to be given
loc_0x0:
  li r4, 0x7        # replaces all abilities with ID 7 (mic)
  stwu r1, -32(r1)  # the line that's overwritten by the branch
