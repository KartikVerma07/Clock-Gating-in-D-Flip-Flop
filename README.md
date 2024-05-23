# Clock Gating in D-Flip Flop

## Overview 
This repository explores power-saving techniques in Very Large-Scale Integration (VLSI) circuits, focusing on clock gating applied to a Static Mux Based D Flip-Flop (DFF). 
Functional validation using testbenches and Verilog simulations demonstrated correct functionality under various scenarios.
The results highlight significant power savings through clock gating, contributing to optimized power consumption in VLSI circuits and enhancing digital system efficiency and sustainability.

## D-Flip Flop Design
   - This project utilizes a Master-Slave D Flip-Flop, consisting of two D flip-flops connected in series, with the first flip-flop as the "master" and the second as the "slave." The advantages of this configuration include:
     - ***Improved Timing Performance***: Eliminates race conditions and ensures output changes only on a clock edge, enhancing timing stability and reducing glitches.
     - ***Synchronization***: Ensures proper synchronization of input data with the clock signal, crucial for preventing data corruption in synchronous systems.
     - ***Reduced Hazards***: Minimizes undesirable transient conditions (hazards) during signal transitions, leading to more reliable operation.
     - ***Data Integrity***: Latches data at specific times synchronized with the clock signal, ensuring reliable data capture and transfer to the output without errors.
   - To apply Master Slave D-Flip Flop, we need to use inverters and transmission Gate to build the circuit. Here’s the Detail for the Inverter and Transmission Gate: 
     - ***Transmission Gate***:
       - 𝐿𝑒𝑛𝑔𝑡ℎ 𝑜𝑓 𝑁𝑀𝑂𝑆, 𝑃𝑀𝑂𝑆 = 50𝑛𝑚 (𝐹𝑖𝑥𝑒𝑑)  
       - 𝑊𝑖𝑑𝑡ℎ 𝑜𝑓 𝑁𝑀𝑂𝑆 = 90𝑛𝑚 
       - 𝑊𝑖𝑑𝑡ℎ 𝑜𝑓 𝑃𝑀𝑂𝑆 = 90𝑛𝑚 
     - ***Invertor***: 
       - 𝐿𝑒𝑛𝑔𝑡ℎ 𝑜𝑓 𝑁𝑀𝑂𝑆, 𝑃𝑀𝑂𝑆 = 50𝑛𝑚 (𝐹𝑖𝑥𝑒𝑑)  
       - 𝑊𝑖𝑑𝑡ℎ 𝑜𝑓 𝑁𝑀𝑂𝑆 = 90𝑛𝑚  
       - 𝑊𝑖𝑑𝑡ℎ 𝑜𝑓 𝑃𝑀𝑂𝑆 = 140𝑛𝑚
   - With the Inverter and Transmission Gate circuit, we can create the schematic for the Master Slave D-Flip Flop, and the schematic is shown below:\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/0b473139-642b-4466-b430-10d8376df8f2)
     

## Pre-Layout Simulation
   - For Master Slave D-Flip Flop\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/fb79396a-ac89-41d7-857a-a7bb822fa524)
     - Delay Table:\
       ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/6c9e4880-f2e9-4026-a866-5c3b77807a10)
   - For Clock Gated D-Flip Flop\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/948537dd-d18f-464b-a25a-820c9a4c3a30)
     - Delay Table:\
       ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/4991e8c2-62d8-4dad-9865-14eaf37b210e)

## Functionality Testing On Verilog
   - A Verilog module models a positive edge-triggered D Flip-Flop (DFF) with a negative edge reset.
     It captures data (d) on the rising clock edge (clk) and resets (q becomes 0) on the falling edge of the reset signal (rst).
     The module is verified against a DFF constructed in Cadence Virtuoso. Clock gating is applied using an enable signal and an AND gate. The netlist of the gated DFF is provided.\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/001674c8-1d4e-45d5-90b6-f74e8a57335d)
   - Testing involves applying the same enable and clock signals, with a clock period of 10ns and the enable signal high for 52% of a 120ns duration.
     Results show the functionality matches the optimized DFF design. 

## Power Comparison
   - Input test data was designed in the schematics of both DFFs to measure power during output transitions. Power calculations were done using the Virtuoso calculator tool.
   - Graphs for DFF and clock-gated DFF were plotted from the schematics. Current was measured over 200ns, and average power was calculated during transitions using:
     - Average Power (transition) = VDD (𝑉)×𝐼(measured during transition)(𝐴)
   - Leakage Current in DFF for 200ns:\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/749106e5-7929-43cc-a497-3089f22e0e80)
   - Leakage Current in Clock Gated DFF for 200ns:\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/159617a3-0c82-4f44-932a-b1f75c671adf)
   - The table below shows the average power over 200ns for both DFF and clock-gated DFF:\
     ![image](https://github.com/KartikVerma07/Clock-Gating-in-D-Flip-Flop/assets/60437757/e2a6a6e0-cc83-4581-a81c-626a64debbfc)

## 
   


