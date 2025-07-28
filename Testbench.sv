module tb_half_adder;
  reg a_tb,b_tb;
  wire sum_tb,carry_tb;
  
  // Instantiate the Half adder
  half_adder dut(
    .a(a_tb),
    .b(b_tb),
    .sum(sum_tb),
    .carry(carry_tb) );
  
  // Applying and controling stimulation
  initial
    begin
      $dumpfile("dump.vcd"); // This tells the simulator to create a Value Change Dump (VCD) file named dump.vcd
    $dumpvars(0, tb_half_adder); // This tells the simulator which signals to record. 0 means record all signals, and tb_half_adder specifies the module scope.
      // $monitor is used print the values whenever a singal changes
      $monitor("Time=%0t  a=%b  b=%b  sum=%b  carry=%b", $time,a_tb,b_tb,sum_tb,carry_tb);
      #10
      a_tb=0;
      b_tb=0;
      #10;
      a_tb=0;
      b_tb=1;
      #10;
      a_tb=1;
      b_tb=0;
      #10;
      a_tb=1;
      b_tb=1;
      #10;
      $finish;
    end  // ending the stimulation
endmodule 
