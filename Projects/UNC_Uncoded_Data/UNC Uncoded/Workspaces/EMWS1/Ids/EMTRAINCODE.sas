*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "C:\Users\Intern Three\Documents\Thi Duong\SPRING 16\BUS 458H\HW\UNC Uncoded Data\UNC Uncoded\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="")
/ view=EMWS1.Ids_DATA
;
set UNCODED.UNC_SYSTEM_SALARY2016_FULL_WITH;
run;
