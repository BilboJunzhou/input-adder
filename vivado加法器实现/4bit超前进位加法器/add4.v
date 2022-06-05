`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: HoHai University
// Engineer: Junzhou Chen
// Create Date: 2022/06/05 
// Design Name: 4bit���н�λ�ӷ�������
// Module Name: add4
// Project Name: 4bit���н�λ�ӷ���
// Description: ��ǰ��λ�ӷ����Ż��Ľ��в���λ���Ĺؼ�·����ͨ�����ò��м����λ��
//              ������������в���λ�ӷ����Ľ�λ�������⡣
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////

module add4(
    // �����Ա����
    input[3:0] A,   // ����A
    input[3:0] B,   // ����B
    input C_in,     // ��λ����
    output[3:0]S,   // S���
    output C_out    // ��λ���
    );
    wire[3:0] G ,P ,C ;  
    assign G = A & B; // �����źţ�Generate��
    assign P = A ^ B; // �����źţ�Propagate��
    // ��λ�ź�
    assign C[0] = C_in; 
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & (G[0] | (P[0] & C[0])));
    assign C[3] = G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & C[0])))));
    assign C_out = G[3] | (P[3] & (G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & C[0])))))));
    assign S = A ^ B ^ C;
endmodule
