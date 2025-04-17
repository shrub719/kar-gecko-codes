# Press Y to Change Size [shrub719]
# Injected at 80191A3C

# code frankensteined from y_spin and big_kirby
start:
  # CODE FROM Y_SPIN
  # checks if Y is pressed
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

  # CODE FROM BIG_KIRBY#
  # sizes player who pressed Y
  li r6, 0x1234         # prepares the size value 
                        # 1234 is a dummy so i can change it from the gecko code
  sth r6, 0x328 (r24)   # r24 points to the start of the current player's struct
                        # stores the size value offset 0x328 from the start of the struct
  li r3, 0x0            # the command the code overwrites

end:
