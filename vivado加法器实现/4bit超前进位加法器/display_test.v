`timescale 1ns / 1ps //���浥λʱ��Ϊ 1ns������Ϊ 1ps
module display_test;
 // Inputs
 reg [3:0] A;
 reg [3:0] B;
 reg cin;
 // Outputs
 wire [3:0] S;
 wire cout;
 // Instantiate the Unit Under Test (UUT)
 add4 test (
 .A(A), 
 .B(B), 
 .C_in(cin), 
 .S(S), 
 .C_out(cout)
 );
 initial begin
 // Initialize Inputs
 A = 0;
 B = 0;
 cin = 0;
 // Wait 100 ns for global reset to finish
 #100;
 // Add stimulus here
 end
 always #10 A = $random; //$random Ϊϵͳ���񣬲���һ������� 32 λ��
 always #10 B = $random; //#10 ��ʾ�ȴ�10 ����λʱ��(10ns)����ÿ��10ns����ֵһ������� 32 λ��
 always #10 cin = {$random} % 2; //����ƴ�ӷ���{$random}����һ���Ǹ������� 2 ȡ��õ� 0 �� 1
endmodule