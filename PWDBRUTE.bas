10 rem ** Simple Brute Force Password Cracker by Andy Glenn **
20 cls
30 let attempt = 0
40 print "Select Password Cracking Options (Default = Y for all options)"
50 print
60 input "Uppercase   (Y/N) : ";u$ : if u$ = "N" or u$ = "n" then let u$ = "N" :  else u$ = "Y"
70 input "Lowercase   (Y/N) : ";l$ : if l$ = "N" or l$ = "n" then let l$ = "N" :  else l$ = "Y"
80 input "Numbers     (Y/N) : ";n$ : if n$ = "N" or n$ = "n" then let n$ = "N" :  else n$ = "Y"
90 input "Punctuation (Y/N) : ";p$ : if p$ = "N" or p$ = "n" then let p$ = "N" :  else p$ = "Y"
100 print
110 print "Options Selected: "
120 print
130 print "Uppercase   : ";u$
140 print "Lowercase   : ";l$
150 print "Numbers     : ";n$
160 print "Punctuation : ";p$
170 if u$ = "Y" then let ust = 65 : let ufi = 90
180 if l$ = "Y" then let lst = 97 : let lfi = 122
190 if n$ = "Y" then let nst = 48 : let nfi = 57
200 if p$ = "Y" then let pst1 = 32 : let pfi1 = 47
210 if p$ = "Y" then let pst2 = 58 : let pfi2 = 64
220 if p$ = "Y" then let pst3 = 91 : let pfi3 = 96
230 if p$ = "Y" then let pst4 = 123 : let pfi4 = 126
240 print
250 input "What is your chosen password: ",pass$
260 if len(pass$) = 0 then goto 920
270 if len(pass$) = 1 then let start$ = date$ : goto 700
280 if len(pass$) = 2 then let start$ = date$ : goto 660
290 if len(pass$) = 3 then let start$ = date$ : goto 620
300 if len(pass$) = 4 then let start$ = date$ : goto 580
310 if len(pass$) = 5 then let start$ = date$ : goto 540
320 if len(pass$) = 6 then let start$ = date$ : goto 500
330 if len(pass$) = 7 then let start$ = date$ : goto 460
340 if len(pass$) = 8 then let start$ = date$ : goto 420
350 if len(pass$) = 9 then let start$ = date$ : goto 380
360 if len(pass$) > 9 then print "Max Password Length = 9 Characters"
370 for w = 1 to 1000 : next w : goto 20
380 for char9 = 1 to 255
390 let char9$ = chr$(char9)
400 let tmp = char9 : gosub 1190
410 if check = 1 then gosub 940 :  else  : goto 900
420 for char8 = 1 to 255
430 let char8$ = chr$(char8)
440 let tmp = char8 : gosub 1190
450 if check = 1 then gosub 940 :  else  : goto 880
460 for char7 = 1 to 255
470 let char7$ = chr$(char7)
480 let tmp = char7 : gosub 1190
490 if check = 1 then gosub 940 :  else  : goto 860
500 for char6 = 1 to 255
510 let char6$ = chr$(char6)
520 let tmp = char6 : gosub 1190
530 if check = 1 then gosub 940 :  else  : goto 840
540 for char5 = 1 to 255
550 let char5$ = chr$(char5)
560 let tmp = char5 : gosub 1190
570 if check = 1 then gosub 940 :  else  : goto 820
580 for char4 = 1 to 255
590 let char4$ = chr$(char4)
600 let tmp = char4 : gosub 1190
610 if check = 1 then gosub 940 :  else  : goto 800
620 for char3 = 1 to 255
630 let char3$ = chr$(char3)
640 let tmp = char3 : gosub 1190
650 if check = 1 then gosub 940 :  else  : goto 780
660 for char2 = 1 to 255
670 let char2$ = chr$(char2)
680 let tmp = char2 : gosub 1190
690 if check = 1 then gosub 940 :  else  : goto 760
700 for char1 = 1 to 255
710 let char1$ = chr$(char1)
720 let tmp = char1 : gosub 1190
730 if check = 1 then gosub 940 :  else  : goto 740
740 next char1
750 if len(pass$) = 1 then goto 1090
760 next char2
770 if len(pass$) = 2 then goto 1090
780 next char3
790 if len(pass$) = 3 then goto 1090
800 next char4
810 if len(pass$) = 4 then goto 1090
820 next char5
830 if len(pass$) = 5 then goto 1090
840 next char6
850 if len(pass$) = 6 then goto 1090
860 next char7
870 if len(pass$) = 7 then goto 1090
880 next char8
890 if len(pass$) = 8 then goto 1090
900 next char9
910 if len(pass$) = 9 then goto 1090
920 cls
930 goto 1140
940 cls
950 if len(pass$) = 1 then let guess$ = char1$
960 if len(pass$) = 2 then let guess$ = char2$+char1$
970 if len(pass$) = 3 then let guess$ = char3$+char2$+char1$
980 if len(pass$) = 4 then let guess$ = char4$+char3$+char2$+char1$
990 if len(pass$) = 5 then let guess$ = char5$+char4$+char3$+char2$+char1$
1000 if len(pass$) = 6 then let guess$ = char6$+char5$+char4$+char3$+char2$+char1$
1010 if len(pass$) = 7 then let guess$ = char7$+char6$+char5$+char4$+char3$+char2$+char1$
1020 if len(pass$) = 8 then let guess$ = char8$+char7$+char6$+char5$+char4$+char3$+char2$+char1$
1030 if len(pass$) = 9 then let guess$ = char9$+char8$+char7$+char6$+char5$+char4$+char3$+char2$+char1$
1040 let attempt = attempt+1
1050 print "Cracking Password - Please Wait..."
1060 print "My Guess = ";guess$;" : Attempt = ";attempt
1070 if guess$ = pass$ then goto 1090
1080 return
1090 let finish$ = date$
1100 print
1110 print "Your chosen password is ";guess$
1120 print "Cracked in ";attempt;" attempts"
1130 print "Started : ";start$
1140 print "Finished: ";finish$
1150 print
1160 input "Run again (Y/N): ";response$
1170 if response$ = "Y" or response$ = "y" then goto 20
1180 end
1190 let check = 0
1200 if u$ = "N" then goto 1220
1210 if tmp >= ust and tmp <= ufi then let check = 1
1220 if l$ = "N" then goto 1240
1230 if tmp >= lst and tmp <= lfi then let check = 1
1240 if n$ = "N" then goto 1260
1250 if tmp >= nst and tmp <= nfi then let check = 1
1260 if p$ = "N" then goto 1280
1270 if tmp >= pst1 and tmp <= pfi1 then let check = 1
1280 if p$ = "N" then goto 1300
1290 if tmp >= pst2 and tmp <= pfi2 then let check = 1
1300 if p$ = "N" then goto 1320
1310 if tmp >= pst3 and tmp <= pfi3 then let check = 1
1320 if p$ = "N" then goto 1340
1330 if tmp >= pst4 and tmp <= pfi4 then let check = 1
1340 return
