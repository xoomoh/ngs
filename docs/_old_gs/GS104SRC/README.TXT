GS 1.04 ROM sources

??? ?ࠢ? ?? ?????? ???訢?? ?ਭ??????? ????ᠭ??? ?????? AKA Stinger.
????? ࠧ??蠥? ᢮?????? ????????࠭????, ?ᯮ?짮????? ? ????䨪????
?????? ???訢?? ? ??????????᪨? 楫??.

??? ????䨪?樨 ?????? ???訢?? ??? ????ࠩ?? ?????? ??⠢?????
???ਪ?᭮???묨 (???饭?? #100-#12F ? ROM) ? ?????? ???? ᢮????? ????㯭?
??室??? ⥪??? ????????஢????? ???訢??.

I. ?⠯? ᡮન ???訢?? GS:

1.  ????㦠?? Tasm:
    run "boot"[enter] [enter]
2.  ????????㥬 ??????? 䠩?:
    m main
    a
3.  ???????뢠?? CRC
    m crc
    a
    r
4.  ?????뢠?? ???訢??
    q [enter] q [down] [enter]
    randomize usr 15619:rem:save "gs" code 32768,32768

    ????⢥??? ???.

    ?ࠢ?? ??? ???????樨 ?ᯮ???????? 2 ??࠭?? ???ନ஢????? 䠩??:
    stuff - 24kb ???⮣? ????? (#FF) + 8kb ⠡???
    sgen  - 7.5kb ?।???????஢???? ??㭤????????஢ + 0.5 ?? ⠡???

II. Sgen

??室???? ??㭤????????஢ ? ᮦ?????? ???????? (?? ????? ? ? ????? ??
 ? ????饬 %). ??? ?? ??????쭠? ??????, ?.?. ??? ???? ? ?।???????஢????
 ????, ? ?? ᮢ??襭?? ??筮 ?㦭? ?뫮 ??।??뢠??, ?.?. ????? ?뫮
 ???????? ??䥪⨢????? ࠡ???, ? ???? ???? ?뫨 ???? ???.
 ??? ? ?????????? ?⨬ ???? ?? ????, ?? ????? ???-?????? %)
 ?ਬ???:
   sgen_asm
   sgen*
 (??? ?????? ?ਬ???, ?? ??࠭?????, ??? ??? ?????? ࠡ?????, ???? ????୮?
  ???????? ?????? ࠡ?????)

  ?㤠 ?? ???ᮥ????????? ⠡???? ??? ????௮??樨 divtab3

