# Random Size Changer [shrub719]
# Injected at 80191A3C

# with code from container12345's random_machine
loc_0x0:
  # check whether it should be run
  lhz r5, 0x32A (r24)   # gets "size set?" value
  cmpwi r5, 0x00FF      # 0x00FF means it has
  beq+ end              # skip setting it if it has
  
  # tick off when it's run
  li r5, 0x00FF
  sth r5, 0x32A (r24)   # sets "size set?" to true

  # randomiser
  lis r3, 0x8041
  ori r3, r3, 0xE668    # loads 0x8041E668 into r3
                        # i think this is the location of a randomiser function?
  mtctr r3
  li r3, 0x200          # r3 is input to the function, the max value to generate
  bctrl                 # branches to that location, with link (so it comes back)
  
  # sets player size
  mr r6, r3             # copies r3 (output of randomiser) to r6
  addi r6, r6, 0x3F00   # 3F00 is the lower limit i picked for the size
                        # it adds a random value onto that
  sth r6, 0x328 (r24)   # r24 points to the start of the current player's struct
                        # stores the size value offset 0x328 from the start of the struct

end:
  # sets machine size
  # has to be run every time if switched machine
  lhz r6, 0x328 (r24)   # loads the size
  lwz r5, 0x18 (r24)    # pointer to machine
  sth r6, 0x3B0 (r5)    # stores the size value to the machine
  li r3, 0x0            # the command the code overwrites
