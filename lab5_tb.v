`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/02 09:55:59
// Design Name: 
// Module Name: lab5_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module lab5_tb(

    );
    
       // Declare testbench signals
    reg [3:0] num;
   
    wire LED1;
    wire LED2;
    
    // Instantiate the 4-bit full adder
  ece128_lab5 uut (
   .num(num),
   .LED1(LED1),
   .LED2(LED2)
   
 );

    // Testbench stimulus
   initial 
   begin
        // Apply test vectors
      num  = 4'b0001;// Cin = 0;MuxSelect= 1; // Expected Sum = 2, Cout = 0
        #10 num = 4'b0010;// B = 4'b0010; Cin = 0;MuxSelect= 1; // Expected Sum = 4, Cout = 0
       #10 num = 4'b0011; //B = 4'b0100; Cin = 0; MuxSelect= 0;// Expected Sum = 8, Cout = 0
       #10 num = 4'b0100; //B = 4'b1000; Cin = 0; MuxSelect= 0;// Expected Sum = 0, Cout = 1
       #10 num = 4'b0101; //B = 4'b0000; Cin = 1; MuxSelect= 1;// Expected Sum = 0, Cout = 1
       #10 num = 4'b0110; //B = 4'b0101; Cin = 1; MuxSelect= 1;// Expected Sum = 0, Cout = 1
       
        #10     num  = 4'b0111;// Cin = 0;MuxSelect= 1; // Expected Sum = 2, Cout = 0
        #10 num = 4'b1000;// B = 4'b0010; Cin = 0;MuxSelect= 1; // Expected Sum = 4, Cout = 0
       #10 num = 4'b1001; //B = 4'b0100; Cin = 0; MuxSelect= 0;// Expected Sum = 8, Cout = 0
       #10 num = 4'b1010; //B = 4'b1000; Cin = 0; MuxSelect= 0;// Expected Sum = 0, Cout = 1
       #10 num = 4'b1011; //B = 4'b0000; Cin = 1; MuxSelect= 1;// Expected Sum = 0, Cout = 1
       #10 num = 4'b1100; //B = 4'b0101; Cin = 1; MuxSelect= 1;// Expected Sum = 0, Cout = 1
       
             #10 num = 4'b1101; //B = 4'b1000; Cin = 0; MuxSelect= 0;// Expected Sum = 0, Cout = 1
       #10 num = 4'b1110; //B = 4'b0000; Cin = 1; MuxSelect= 1;// Expected Sum = 0, Cout = 1
       #10 num = 4'b1111; //B = 4'b0101; Cin = 1; MuxSelect= 1;// Expected Sum = 0, Cout = 1
#10
         $finish;
   end
endmodule
