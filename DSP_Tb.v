`timescale 1ns / 1ps

module design_1_wrapper_tb();

// Clock period definitions
parameter SYSCLK_PERIOD = 30;  // 33.333 MHz system clock (30ns period)

// Testbench signals
reg [17:0] A_0;
reg [17:0] B_0;
reg CLK_0;
reg [47:0] C_0;
wire [47:0] P_0;

// Instantiate the Unit Under Test (UUT)
design_1_wrapper uut (
    .A_0(A_0),
    .B_0(B_0),
    .CLK_0(CLK_0),
    .C_0(C_0),
    .P_0(P_0)
);

// Clock generation - 33.333 MHz system clock
initial begin
    CLK_0 = 1'b0;
    forever #(SYSCLK_PERIOD/2) CLK_0 = ~CLK_0;
end

// Test stimulus
initial begin
    // Initialize inputs
    A_0 = 18'd0;
    B_0 = 18'd0;
    C_0 = 48'd0;
    
    // Wait for 100ns after reset
    #100;
    
    // Test Case 1
    @(posedge CLK_0);
    A_0 = 18'd25;     // A = 25
    B_0 = 18'd10;     // B = 10
    C_0 = 48'd100;    // C = 100
    
    // Wait for 5 clock cycles
    #(5*SYSCLK_PERIOD);
    
    // Test Case 2
    @(posedge CLK_0);
    A_0 = 18'd50;     // A = 50
    B_0 = 18'd40;     // B = 40
    C_0 = 48'd200;    // C = 200
    
    // Wait for 5 clock cycles
    #(5*SYSCLK_PERIOD);
    
    // End simulation
    #100 $finish;
end

// Monitor changes
initial begin
    $display("Time\tA\tB\tC\tP");
    $display("----------------------------------------");
    $monitor("%0t\t%0d\t%0d\t%0d\t%0d", 
             $time, A_0, B_0, C_0, P_0);
end

endmodule