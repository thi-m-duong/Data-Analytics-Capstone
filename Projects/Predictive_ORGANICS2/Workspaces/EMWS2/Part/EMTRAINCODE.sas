*------------------------------------------------------------*;
* Part: Retrieving stratification variable(s) levels;
*------------------------------------------------------------*;
proc freq data=EMWS2.Ids_DATA noprint;
table
TargetBuy
/out=WORK.Part_FREQ(drop=percent);
run;
proc sort data=WORK.Part_FREQ;
by descending count;
run;
* Part: Retrieving levels that meet minimum requirement;
data WORK.Part_FREQ2(keep = count);
set WORK.Part_FREQ;
where (.01 * 40 * count) >= 3;
run;
*------------------------------------------------------------*;
* Part: Create stratified partitioning;
*------------------------------------------------------------*;
data
EMWS2.Part_TRAIN(label="")
EMWS2.Part_VALIDATE(label="")
EMWS2.Part_TEST(label="")
;
retain _seed_ 12345;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
_dataobs_ = _N_;
drop _c00:;
set EMWS2.Ids_DATA;
if
TargetBuy = 0
then do;
if (16718+1-_C000004)*_genvalue_ <= (6687 - _C000001) then do;
_C000001 + 1;
output EMWS2.Part_TRAIN;
end;
else do;
if (16718+1-_C000004)*_genvalue_ <= (6687 - _C000001 + 5015 - _C000002) then do;
_C000002 + 1;
output EMWS2.Part_VALIDATE;
end;
else do;
_C000003 + 1;
output EMWS2.Part_TEST;
end;
end;
_C000004+1;
end;
else if
TargetBuy = 1
then do;
if (5505+1-_C000008)*_genvalue_ <= (2202 - _C000005) then do;
_C000005 + 1;
output EMWS2.Part_TRAIN;
end;
else do;
if (5505+1-_C000008)*_genvalue_ <= (2202 - _C000005 + 1652 - _C000006) then do;
_C000006 + 1;
output EMWS2.Part_VALIDATE;
end;
else do;
_C000007 + 1;
output EMWS2.Part_TEST;
end;
end;
_C000008+1;
end;
run;