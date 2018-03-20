*------------------------------------------------------------*;
* Part: Retrieving stratification variable(s) levels;
*------------------------------------------------------------*;
proc freq data=EMWS1.Ids_DATA noprint;
format
RESPOND $3.
;
table
RESPOND
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
EMWS1.Part_TRAIN(label="")
EMWS1.Part_VALIDATE(label="")
EMWS1.Part_TEST(label="")
;
retain _seed_ 12345;
drop _seed_ _genvalue_;
call ranuni(_seed_, _genvalue_);
label _dataobs_ = "%sysfunc(sasmsg(sashelp.dmine, sample_dataobs_vlabel, NOQUOTE))";
_dataobs_ = _N_;
drop _c00:;
set EMWS1.Ids_DATA;
length _Pformat1 $53;
drop _Pformat1;
_Pformat1 = strip(put(RESPOND, $3.));
if
_Pformat1 = 'no'
then do;
if (36548+1-_C000004)*_genvalue_ <= (14619 - _C000001) then do;
_C000001 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
if (36548+1-_C000004)*_genvalue_ <= (14619 - _C000001 + 10964 - _C000002) then do;
_C000002 + 1;
output EMWS1.Part_VALIDATE;
end;
else do;
_C000003 + 1;
output EMWS1.Part_TEST;
end;
end;
_C000004+1;
end;
else if
_Pformat1 = 'yes'
then do;
if (4640+1-_C000008)*_genvalue_ <= (1856 - _C000005) then do;
_C000005 + 1;
output EMWS1.Part_TRAIN;
end;
else do;
if (4640+1-_C000008)*_genvalue_ <= (1856 - _C000005 + 1392 - _C000006) then do;
_C000006 + 1;
output EMWS1.Part_VALIDATE;
end;
else do;
_C000007 + 1;
output EMWS1.Part_TEST;
end;
end;
_C000008+1;
end;
run;
