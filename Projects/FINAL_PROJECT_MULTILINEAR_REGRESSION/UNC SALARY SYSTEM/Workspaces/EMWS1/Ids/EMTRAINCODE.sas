*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "C:\Users\Intern Three\Documents\Thi Duong\SPRING 16\BUS 458H\HW\458 FINAL PROJECT\UNC SALARY SYSTEM\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="")
/ view=EMWS1.Ids_DATA
;
set NEWDATA.GENDER_UNC_SYSTEM_SALARY_SEARCH_;
run;
