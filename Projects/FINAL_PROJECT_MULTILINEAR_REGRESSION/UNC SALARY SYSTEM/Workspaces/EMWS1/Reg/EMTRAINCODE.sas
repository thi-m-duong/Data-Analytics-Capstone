*------------------------------------------------------------*;
* Reg: Create decision matrix;
*------------------------------------------------------------*;
data WORK.totalsal(label="totalsal");
  length   totalsal                             8
           ;

 totalsal=3000;
output;
 totalsal=819069;
output;
 totalsal=411034.5;
output;
;
run;
proc datasets lib=work nolist;
modify totalsal(type=PROFIT label=totalsal);
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS1.Part_TRAIN(keep=
Gender age campus dept employed exempt2 fte nonstsal position statesal status
stservyr totalsal);
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Gender(ASC) campus(ASC) dept(ASC) employed(ASC) exempt2(ASC) fte(ASC)
   position(ASC) status(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    age nonstsal statesal stservyr totalsal
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
totalsal
;
run;
quit;
*------------------------------------------------------------*;
* Reg: Run DMREG procedure;
*------------------------------------------------------------*;
proc dmreg data=EM_DMREG dmdbcat=WORK.Reg_DMDB
validata = EMWS1.Part_VALIDATE
outest = EMWS1.Reg_EMESTIMATE
outterms = EMWS1.Reg_OUTTERMS
outmap= EMWS1.Reg_MAPDS namelen=200
;
class
Gender
campus
dept
employed
exempt2
fte
position
status
;
model totalsal =
Gender
age
campus
dept
employed
exempt2
fte
nonstsal
position
statesal
status
stservyr
/error=normal
coding=DEVIATION
nodesignprint
;
;
score data=EMWS1.Part_TEST
out=_null_
outfit=EMWS1.Reg_FITTEST
role = TEST
;
code file="C:\Users\Intern Three\Documents\Thi Duong\SPRING 16\BUS 458H\HW\458 FINAL PROJECT\UNC SALARY SYSTEM\Workspaces\EMWS1\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="C:\Users\Intern Three\Documents\Thi Duong\SPRING 16\BUS 458H\HW\458 FINAL PROJECT\UNC SALARY SYSTEM\Workspaces\EMWS1\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;
