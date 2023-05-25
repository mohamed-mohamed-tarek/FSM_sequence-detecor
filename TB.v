
`timescale  1ps/1ps 

module FSM_1101_TB();
 

   reg CLK , RST , IN ;
     wire OUT ; 

FSM_1101 FSM1 (.clk(CLK) , 
               .rst(RST),
               .in(IN),
               .out(OUT)
               
               );

               initial begin
                  CLK = 1'b0;
                  RST = 1'b1 ;
                  #15
                   CLK = 1'b0;
                  RST = 1'b0 ;
               end  

               initial forever begin
                 #5 CLK = ~CLK ; 
               end

               initial begin
       $monitor ("%t | IN = %b || OUT = %b  || state =%d",$time,IN,OUT,FSM1.state);  
               end 
              

              initial begin
                #15 
                IN = 0 ; 
                #10 IN=1; #10 IN=1 ; #10 IN=0 ; #10 IN=1; #10 IN=1 ; #10 IN=0;
             
                    end


               
endmodule

