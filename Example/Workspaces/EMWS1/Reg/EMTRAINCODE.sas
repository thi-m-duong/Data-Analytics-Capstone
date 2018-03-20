*------------------------------------------------------------*;
* Reg: Create decision matrix;
*------------------------------------------------------------*;
data WORK.RESPOND;
  length   RESPOND                          $  32
           COUNT                                8
           DATAPRIOR                            8
           TRAINPRIOR                           8
           DECPRIOR                             8
           DECISION1                            8
           DECISION2                            8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="YES"
           DECISION2="NO"
           ;
  format   COUNT 10.
           ;
RESPOND="YES"; COUNT=4640; DATAPRIOR=0.1126541711178; TRAINPRIOR=0.1126541711178; DECPRIOR=.; DECISION1=1; DECISION2=0;
output;
RESPOND="NO"; COUNT=36548; DATAPRIOR=0.88734582888219; TRAINPRIOR=0.88734582888219; DECPRIOR=.; DECISION1=0; DECISION2=1;
output;
;
run;
proc datasets lib=work nolist;
modify RESPOND(type=PROFIT label=RESPOND);
label DECISION1= 'YES';
label DECISION2= 'NO';
run;
quit;
data EM_DMREG / view=EM_DMREG;
set EMWS1.Part_TRAIN(keep=
AGE CAMPAIGN CCI CONTACT CPI DEFAULT DOW DURATION EDUCATION EMPVAR EURIBOR3M
HOUSING JOB LOAN MARITAL MONTH NREMP PDAYS POUTCOME PREVIOUS RESPOND );
run;
*------------------------------------------------------------* ;
* Reg: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    CONTACT(ASC) DEFAULT(ASC) DOW(ASC) EDUCATION(ASC) HOUSING(ASC) JOB(ASC)
   LOAN(ASC) MARITAL(ASC) MONTH(ASC) POUTCOME(ASC) RESPOND(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* Reg: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;
    AGE CAMPAIGN CCI CPI DURATION EMPVAR EURIBOR3M NREMP PDAYS PREVIOUS
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
RESPOND
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
RESPOND
CONTACT
DEFAULT
DOW
EDUCATION
HOUSING
JOB
LOAN
MARITAL
MONTH
POUTCOME
;
model RESPOND =
AGE
CAMPAIGN
CCI
CONTACT
CPI
DEFAULT
DOW
DURATION
EDUCATION
EMPVAR
EURIBOR3M
HOUSING
JOB
LOAN
MARITAL
MONTH
NREMP
PDAYS
POUTCOME
PREVIOUS
/level=nominal
coding=DEVIATION
nodesignprint
;
;
score data=EMWS1.Part_TEST
out=_null_
outfit=EMWS1.Reg_FITTEST
role = TEST
;
code file="C:\Users\Intern Three\Documents\Thi Duong\SPRING 16\BUS 458H\Example\Workspaces\EMWS1\Reg\EMPUBLISHSCORE.sas"
group=Reg
;
code file="C:\Users\Intern Three\Documents\Thi Duong\SPRING 16\BUS 458H\Example\Workspaces\EMWS1\Reg\EMFLOWSCORE.sas"
group=Reg
residual
;
run;
quit;
