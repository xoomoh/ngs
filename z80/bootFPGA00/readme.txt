... everything here must fit into 32k totally!
... requires ASL asm to be in this dir (.exe, .dll, .msg), addcrc.exe

 bootFPGA - ��������� ��������� �������� FPGA.

��� ������� ��������� � ��������:

1. ���������� main.rbf (������ 59215 ����) MegaLZ��: megalz main.rbf main.mlz
2. ���������� bootFPGA asl'��: mk bootFPGA
3. ��������� CRC: addcrc -n bootFPGA.bin bootFPGA.crc
4. ���������� ���� bootFPGA.crc ������� � ������ ��������� 64�� ������ (�� ������ flashsize-65536)



