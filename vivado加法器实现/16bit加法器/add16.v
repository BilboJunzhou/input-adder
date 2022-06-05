`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HoHai University
// Engineer: Junzhou Chen
// Create Date: 2022/06/05 
// Design Name: 4bit CLA ������ 16bit �ӷ�������
// Module Name: add16
// Project Name: 4bit CLA ������ 16bit �ӷ���
// Description: ʹ��֮ǰ��ƺõ�4bit��ǰ��λ�ӷ���ʵ��16 bit�ӷ���
//              ʵ��ԭ��ͨ�����мӷ���ʵ�֣���Լ�
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module add16(
    input[15:0] A,
    input[15:0] B,
    input C_in,
    output[15:0] S,
    output C_out
    );
    wire[0:2] C;
    add4 part_1(.A(A[3:0]), .B(B[3:0]), .C_in(C_in),.S(S[3:0]),.C_out(C[0]));
    add4 part_2(.A(A[7:4]), .B(B[7:4]),.C_in(C[0]),.S(S[7:4]),.C_out(C[1]));
    add4 part_3(.A(A[11:8]), .B(B[11:8]),.C_in(C[1]),.S(S[11:8]),.C_out(C[2]));
    add4 part_4(.A(A[15:12]), .B(B[15:12]),.C_in(C[2]),.S(S[15:12]),.C_out(C_out));
endmodule
