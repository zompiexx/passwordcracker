1 REM *     PASSWORD CRACKER BY ANDY GLENN      *
2 REM *     (C) 2020, ALL RIGHTS RESERVED       *
10 dim ghistory$(1000000)
20 let guess$ = ""
30 let attempts = 0
40 cls
50 print "Select Password Cracking Options (Default = Y for all options)"
60 input "Uppercase   (Y/N) : ";u$ : if u$ = "N" or u$ = "n" then let u$ = "N" :  else u$ = "Y"
70 input "Lowercase   (Y/N) : ";l$ : if l$ = "N" or l$ = "n" then let l$ = "N" :  else l$ = "Y"
80 input "Numbers     (Y/N) : ";n$ : if n$ = "N" or n$ = "n" then let n$ = "N" :  else n$ = "Y"
90 input "Punctuation (Y/N) : ";p$ : if p$ = "N" or p$ = "n" then let p$ = "N" :  else p$ = "Y"
100 if u$ = "Y" then let ust = 65 : let ufi = 90
110 if l$ = "Y" then let lst = 97 : let lfi = 122
120 if n$ = "Y" then let nst = 48 : let nfi = 57
130 if p$ = "Y" then let pst1 = 32 : let pfi1 = 47
140 if p$ = "Y" then let pst2 = 58 : let pfi2 = 64
150 if p$ = "Y" then let pst3 = 91 : let pfi3 = 96
160 if p$ = "Y" then let pst4 = 123 : let pfi4 = 126
170 print
180 input "what is your chosen password: ";pass$
190 print
200 let start$ = date$
210 for crack = 1 to len(pass$)
220 let guess% = rnd(1)*1000
230 if u$ = "Y" and guess% > ust-1 and guess% < ufi+1 then goto 310
240 if l$ = "Y" and guess% > lst-1 and guess% < lfi+1 then goto 310
250 if n$ = "Y" and guess% > nst-1 and guess% < nfi+1 then goto 310
260 if p$ = "Y" and guess% > pst1-1 and guess% < pfi1+1 then goto 310
270 if p$ = "Y" and guess% > pst2-1 and guess% < pfi2+1 then goto 310
280 if p$ = "Y" and guess% > pst3-1 and guess% < pfi3+1 then goto 310
290 if p$ = "Y" and guess% > pst4-1 and guess% < pfi4+1 then goto 310
300 goto 220
310 let guess$ = guess$+chr$(guess%)
320 for check = 1 to attempts
330 if guess$ = ghistory$(check) then goto 410
340 next check
350 next crack
360 if guess$ = pass$ then goto 430
370 let attempts = attempts+1
380 let ghistory$(attempts) = guess$
390 cls
400 print "My guess = ";guess$;" Attempts = ";attempts
410 let guess$ = ""
420 goto 210
430 let finish$ = date$
440 print
450 print "Password cracked in ";attempts;" attempts"
460 print "Chosen Password = ";guess$
470 print "Started : ";start$
480 print "Finished: ";finish$
490 input "Run again (Y/N): ";response$
500 if response$ = "Y" or response$ = "y" then goto 20
510 erase ghistory$
520 end
