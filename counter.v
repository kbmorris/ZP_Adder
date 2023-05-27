// Module: Counts how much buttons is pressed

module counter (

    //inputs
    input PMOD1,
    input PMOD2,
    input PMOD3,

    //outputs
    output D1,
    output D2
);

    //Continous Assignment: counter

    assign XORT = ~PMOD1 ^ ~PMOD2;
    assign XORB = ~PMOD3 ^ XORT;
    assign D1 = XORB;
    assign ANDT = XORT & ~PMOD3;
    assign ANDB = ~PMOD1 & ~PMOD2;
    assign D2 = ANDT | ANDB;

endmodule
