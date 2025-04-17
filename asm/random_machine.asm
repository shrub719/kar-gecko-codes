# Random Machine in Title Screen [container12345]
# Injected at 8000D358

loc_0x0:
  lis r3, 0x8041
  ori r3, r3, 0xE668    # loads 0x8041E668 into r3
                        # i think this is the location of a randomiser function?
  mtctr r3
  li r3, 0x11
  bctrl                 # branches to that location, with link (so it comes back)
  mr r20, r3            # random register stuff
  li r3, 0x0
  mr r4, r20

