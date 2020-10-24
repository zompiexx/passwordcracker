10 rem *     PASSWORD CRACKER BY ANDY GLENN      *
20 rem *     (C) 2020, ALL RIGHTS RESERVED       *
30 dim ghistory$(1000000)
40 let guess$ = ""
50 let attempts = 0
60 cls
70 print "Select Password Cracking Options (Default = Y for all options)"
80 input "Uppercase   (Y/N) : ";u$ : if u$ = "N" or u$ = "n" then let u$ = "N" :  else u$ = "Y"
90 input "Lowercase   (Y/N) : ";l$ : if l$ = "N" or l$ = "n" then let l$ = "N" :  else l$ = "Y"
100 input "Numbers     (Y/N) : ";n$ : if n$ = "N" or n$ = "n" then let n$ = "N" :  else n$ = "Y"
110 input "Punctuation (Y/N) : ";p$ : if p$ = "N" or p$ = "n" then let p$ = "N" :  else p$ = "Y"
120 if u$ = "Y" then let ust = 65 : let ufi = 90
130 if l$ = "Y" then let lst = 97 : let lfi = 122
140 if n$ = "Y" then let nst = 48 : let nfi = 57
150 if p$ = "Y" then let pst1 = 32 : let pfi1 = 47
160 if p$ = "Y" then let pst2 = 58 : let pfi2 = 64
170 if p$ = "Y" then let pst3 = 91 : let pfi3 = 96
180 if p$ = "Y" then let pst4 = 123 : let pfi4 = 126
190 print
200 input "what is your chosen password: ";pass$
210 print
220 let start$ = date$
230 for crack = 1 to len(pass$)
240 let guess% = rnd(1)*1000
250 if u$ = "Y" and guess% > ust-1 and guess% < ufi+1 then goto 330
260 if l$ = "Y" and guess% > lst-1 and guess% < lfi+1 then goto 330
270 if n$ = "Y" and guess% > nst-1 and guess% < nfi+1 then goto 330
280 if p$ = "Y" and guess% > pst1-1 and guess% < pfi1+1 then goto 330
290 if p$ = "Y" and guess% > pst2-1 and guess% < pfi2+1 then goto 330
300 if p$ = "Y" and guess% > pst3-1 and guess% < pfi3+1 then goto 330
310 if p$ = "Y" and guess% > pst4-1 and guess% < pfi4+1 then goto 330
320 goto 240
330 let guess$ = guess$+chr$(guess%)
340 for check = 1 to attempts
350 if guess$ = ghistory$(check) then goto 430
360 next check
370 next crack
380 if guess$ = pass$ then goto 450
390 let attempts = attempts+1
400 let ghistory$(attempts) = guess$
410 cls
420 print "My guess = ";guess$;" Attempts = ";attempts
430 let guess$ = ""
440 goto 230
450 let finish$ = date$
460 print
470 print "Password cracked in ";attempts;" attempts"
480 print "Chosen Password = ";guess$
490 print "Started : ";start$
500 print "Finished: ";finish$
510 input "Run again (Y/N): ";response$
520 if response$ = "Y" or response$ = "y" then goto 40
530 erase ghistory$
540 end
