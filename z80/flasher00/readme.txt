
  ???????????? ??????

 ??????????? ????? ? ??????? 512?? ? ??????????? ?? 64?? (????????? ??????????).
???? ?????? ??????? ?? ???? ?????? ?????? (m29f040b ?? ST microelectronics),
?? ????? ????????? ? ??????, ??????????????? ????????????? ???????????.
??? m29f040b: manufacturer code = $20, device code = $E2.


  ????????????

 ?????? ???????????? ????? ????????????? ???????? FPGA, ??????? (?????? ? ???????????
??? ????????? ??????? ? ??????? ?????? ??????) ????????????? ? ????????? ?????????
flash. ??? ????, ????????? ???????? ??????????, ???????????? ?????? ?? ???? ?????
????????? ? ? ????? ???? FF'?. ????????????? ?????? ???????? ? ????????? ?????? ??????
????????? (?????? ? ????????? $FFF8-$FFFF)

?????? ?????????????? ?????????:

 +0..+5  - ???????????? ?????????? ??????, ??????? ?? ????? 6 ???? ????????? (???? ?? ????? ???!)
 +6..+7  - 16-?????? ???????? ? ??????? big-endian (??????? ???? ??????), ???????????? ????
           ?????? ?????? ?????? ? ??????? ? ?????? ??? ????????? ??????.

?????? 16-?????? ???????? (???? ????????????? ??????? ? ???????? ??????? ????)

???  15     - ??? "?????????????"
???? 14..09 - ??? ???? (8...63), 6 ???
???? 08..05 - ????? ???? (1..12), 4 ????
???? 04..00 - ???? ???? (1..31), 5 ???

????????! ?????? ? ????? ???????? ?? ? BCD-???????, ? ? ??????? ???????? ?????????????.


????? ???????? ????????? ??????:

1. ??? 8 ???? ????? $FF - ?????? ? ?????? ???????? ?? ???????
2. ??????????? ????? ????????? (?????????? ??????? ? ?????? (00, FF) ??? ????? ???? ??? ?????, ???????? ??????? ??? 15, ? ?.?.)
3. ??? ? ???????, ??? ????????????? = 0
4. ??? ? ???????, ??? ????????????? = 1

? 1 ? 2 ??????? ?????? ?????? ??????????.

? 3 ?????? ??? ?? ? ??? ?? ??????? - ????? ???????? ????????? ??????, ?? ?????????
?? ???????????????? ? ???????????? ????????. ???????? ????????? ?? ?????????.

? 4 ?????? ????????? ????? ???????? ????????? ?? ?????? ? ????????? (?? ????), ? ?????
??????? ?? ?????? ??????. ????????! ? ?????? ?????? ?????? ?????? ???? ??? ?????? ??
???????????? ? ????? ?? ??? ????????????? ??????.


  ????????????.

 ??? ??????? ???????????? ???? ? ????? ? ???? 16-?????? ???????? ???????? ?????? ?????, ?????
?? ????????? ????????? ?? ????? 16-?????? ????????, ?????? ??? ???????? ??????????????? ???
??????????? ???????? ?????. ???? ?????, ?????????????? ????????? ??????, ????????? ?????? ??? ?????
??????????, ?? ???????, ??? ?????? ????????, ????? - ?? ????????. ??? ???? ????????????? ???????????
??? ?????????????: ???? ?? ????? 0 ? ????????? ????????, ?? ????? ????????? ?????? (? ???? ????? = 1)
???????? ?????? ??????.

