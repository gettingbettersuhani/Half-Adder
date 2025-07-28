// A Half Adder adds two single bits number. It produces a sum and carry as output
module half_adder(sum,carry,a,b);
  input a,b; // default data type is net
  output sum,carry;
  // assign is used in continuous assignment i.e will update the value of LHS whenver RHS changes
  assign sum = a ^ b; // sum is XOR of inputs
  assign carry = a & b; // carry is AND of inputs
endmodule
