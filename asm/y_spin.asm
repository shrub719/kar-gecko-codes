# Press Y to Quick Spin [container12345]
# Injected at 80191A3C

# i think 80191A3C is a function for deciding whether to quick spin
# r3 is the output - 1 to quickspin, 0 to not
start:
  lwz r3, 996(r30)              # CHECK: i think this is the location of the input struct of the player that pressed y?
                                # maybe r30 stores the player who called the function, and 996 is the offset to the input struct
  rlwinm. r3, r3, 21, 31, 31    # does some logic magic to check a specific bit/button in the input struct
                                # the dot means that it sets the CR0 register according to the result of the operation
  beq+ end                      # eq means the result was 0, i.e. Y is NOT pressed, so it skips over the next part
                                # the + is a hint because this branch is likely to happen
  mftbl r3                      # ABSOLUTELY no idea from now on :)
  rlwinm r3, r3, 0, 30, 30
  subi r0, r3, 0x1
  stw r0, 0(r31)
  li r3, 0x1                    # this overwrites the initial li r3, 0x0 i think

end:
