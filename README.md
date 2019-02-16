# MIPS32_Single_Cycle_Processor
This project include a single cycle MIPS processor but only supporting the R-type instructions in
the MIPS Green Sheet. 
This Processor takes a 32 bit instruction as input and write the result to the $rd register as R-type instructions require.
Only the register block desingned using by behavioral but other than that, all block designed using by structural.

## --> General Design For Processor

![prj3_schema](https://user-images.githubusercontent.com/23150175/52898693-d90e8e80-31f1-11e9-97b4-9055aaee445a.png)

This schema includes general processor design for this project. All implementations are made according to the blocks in 
this schema like register block, control unit, alu unit block etc.

## --> Desing For Control Unit

![screenshot_2](https://user-images.githubusercontent.com/23150175/52898786-322af200-31f3-11e9-8707-d554bf531cff.png)

Control unit must takes 6 bits input and gives 3 bits outputs. This schema shows the design of 3 bits that will be output.

## --> Modelsim Result 

![screenshot_3](https://user-images.githubusercontent.com/23150175/52898927-11639c00-31f5-11e9-9491-21dcaf75226a.png)

## --> Register File Result

![screenshot_5](https://user-images.githubusercontent.com/23150175/52898993-d57d0680-31f5-11e9-8f92-72abdb4a29a1.png)

Register file result is related to test instructions. The test instructions are given within the modelim results.
