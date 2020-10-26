10 rem ** Simple Brute Force Password Cracker by Andy Glenn **
20 cls
30 print "Select Password Cracking Options (Default = Y for all options)"
40 print
50 input "Uppercase   (Y/N) : ";u$ : if u$ = "N" or u$ = "n" then let u$ = "N" :  else u$ = "Y"
60 input "Lowercase   (Y/N) : ";l$ : if l$ = "N" or l$ = "n" then let l$ = "N" :  else l$ = "Y"
70 input "Numbers     (Y/N) : ";n$ : if n$ = "N" or n$ = "n" then let n$ = "N" :  else n$ = "Y"
80 input "Punctuation (Y/N) : ";p$ : if p$ = "N" or p$ = "n" then let p$ = "N" :  else p$ = "Y"
90 print
100 print "Options Selected: "
110 print
120 print "Uppercase   : ";u$
130 print "Lowercase   : ";l$
140 print "Numbers     : ";n$
150 print "Punctuation : ";p$
160 if u$ = "Y" then let ust = 65 : let ufi = 90
170 if l$ = "Y" then let lst = 97 : let lfi = 122
180 if n$ = "Y" then let nst = 48 : let nfi = 57
190 if p$ = "Y" then let pst1 = 32 : let pfi1 = 47
200 if p$ = "Y" then let pst2 = 58 : let pfi2 = 64
210 if p$ = "Y" then let pst3 = 91 : let pfi3 = 96
220 if p$ = "Y" then let pst4 = 123 : let pfi4 = 126
230 print
240 input "What is your chosen password: ",pass$
250 if len(pass$) = 0 then goto 910
260 if len(pass$) = 1 then let start$ = date$ : goto 690
270 if len(pass$) = 2 then let start$ = date$ : goto 650
280 if len(pass$) = 3 then let start$ = date$ : goto 610
290 if len(pass$) = 4 then let start$ = date$ : goto 570
300 if len(pass$) = 5 then let start$ = date$ : goto 530
310 if len(pass$) = 6 then let start$ = date$ : goto 490
320 if len(pass$) = 7 then let start$ = date$ : goto 450
330 if len(pass$) = 8 then let start$ = date$ : goto 410
340 if len(pass$) = 9 then let start$ = date$ : goto 370
350 if len(pass$) > 9 then print "Max Password Length = 9 Characters"
360 for w = 1 to 1000 : next w : goto 20
370 for char9 = 1 to 255
380 let char9$ = chr$(char9)
390 let tmp = char9 : gosub 1160
400 if check = 1 then gosub 930 :  else  : goto 890
410 for char8 = 1 to 255
420 let char8$ = chr$(char8)
430 let tmp = char8 : gosub 1160
440 if check = 1 then gosub 930 :  else  : goto 870
450 for char7 = 1 to 255
460 let char7$ = chr$(char7)
470 let tmp = char7 : gosub 1160
480 if check = 1 then gosub 930 :  else  : goto 850
490 for char6 = 1 to 255
500 let char6$ = chr$(char6)
510 let tmp = char6 : gosub 1160
520 if check = 1 then gosub 930 :  else  : goto 830
530 for char5 = 1 to 255
540 let char5$ = chr$(char5)
550 let tmp = char5 : gosub 1160
560 if check = 1 then gosub 930 :  else  : goto 810
570 for char4 = 1 to 255
580 let char4$ = chr$(char4)
590 let tmp = char4 : gosub 1160
600 if check = 1 then gosub 930 :  else  : goto 790
610 for char3 = 1 to 255
620 let char3$ = chr$(char3)
630 let tmp = char3 : gosub 1160
640 if check = 1 then gosub 930 :  else  : goto 770
650 for char2 = 1 to 255
660 let char2$ = chr$(char2)
670 let tmp = char2 : gosub 1160
680 if check = 1 then gosub 930 :  else  : goto 750
690 for char1 = 1 to 255
700 let char1$ = chr$(char1)
710 let tmp = char1 : gosub 1160
720 if check = 1 then gosub 930 :  else  : goto 730
730 next char1
740 if len(pass$) = 1 then goto 1070
750 next char2
760 if len(pass$) = 2 then goto 1070
770 next char3
780 if len(pass$) = 3 then goto 1070
790 next char4
800 if len(pass$) = 4 then goto 1070
810 next char5
820 if len(pass$) = 5 then goto 1070
830 next char6
840 if len(pass$) = 6 then goto 1070
850 next char7
860 if len(pass$) = 7 then goto 1070
870 next char8
880 if len(pass$) = 8 then goto 1070
890 next char9
900 if len(pass$) = 9 then goto 1070
910 cls
920 goto 1110
930 cls
940 if len(pass$) = 1 then let guess$ = char1$
950 if len(pass$) = 2 then let guess$ = char2$+char1$
960 if len(pass$) = 3 then let guess$ = char3$+char2$+char1$
970 if len(pass$) = 4 then let guess$ = char4$+char3$+char2$+char1$
980 if len(pass$) = 5 then let guess$ = char5$+char4$+char3$+char2$+char1$
990 if len(pass$) = 6 then let guess$ = char6$+char5$+char4$+char3$+char2$+char1$
1000 if len(pass$) = 7 then let guess$ = char7$+char$+char5$+char4$+char3$+char2$+char1$
1010 if len(pass$) = 8 then let guess$ = char8$+char7$+char$+char5$+char4$+char3$+char2$+char1$
1020 if len(pass$) = 9 then let guess$ = char9$+char8$+char7$+char6$+char5$+char4$+char3$+char2$+char1$
1030 let attempt = attempt+1
1040 print "Cracking Password - Please Wait..."
1050 if guess$ = pass$ then goto 1070
1060 return
1070 let finish$ = date$
1080 print "Your chosen password is ";guess$
1090 print "Cracked in ";attempt;" attempts"
1100 print "Started : ";start$
1110 print "Finished: ";finish$
1120 print
1130 input "Run again (Y/N): ";response$
1140 if response$ = "Y" or response$ = "y" then goto 20
1150 end
1160 let check = 0
1170 if u$ = "N" then goto 1190
1180 if tmp >= ust and tmp <= ufi then let check = 1
1190 if l$ = "N" then goto 1210
1200 if tmp >= lst and tmp <= lfi then let check = 1
1210 if n$ = "N" then goto 1230
1220 if tmp >= nst and tmp <= nfi then let check = 1
1230 if p$ = "N" then goto 1250
1240 if tmp >= pst1 and tmp <= pfi1 then let check = 1
1250 if p$ = "N" then goto 1270
1260 if tmp >= pst2 and tmp <= pfi2 then let check = 1
1270 if p$ = "N" then goto 1290
1280 if tmp >= pst3 and tmp <= pfi3 then let check = 1
1290 if p$ = "N" then goto 1310
1300 if tmp >= pst4 and tmp <= pfi4 then let check = 1
1310 return
