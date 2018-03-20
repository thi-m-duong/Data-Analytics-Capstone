*------------------------------------------------------------*;
* Reg2: Create decision matrix;
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
* Reg2: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    Gender(ASC) campus(ASC) dept(ASC) employed(ASC) exempt2(ASC) fte(ASC)
   position(ASC) status(ASC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg2: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    age nonstsal statesal stservyr totalsal
%mend DMDBVar;
*------------------------------------------------------------*;
* Reg2: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.EM_DMREG
dmdbcat=WORK.Reg2_DMDB
maxlevel = 513
;
class %DMDBClass;
var %DMDBVar;
target
totalsal
;
run;
quit;
