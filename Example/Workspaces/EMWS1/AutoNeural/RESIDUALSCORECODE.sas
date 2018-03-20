***********************************;
*** Begin Scoring Code for Neural;
***********************************;
DROP _DM_BAD _EPS _NOCL_ _MAX_ _MAXP_ _SUM_ _NTRIALS;
 _DM_BAD = 0;
 _NOCL_ = .;
 _MAX_ = .;
 _MAXP_ = .;
 _SUM_ = .;
 _NTRIALS = .;
 _EPS =                1E-10;
LENGTH _WARN_ $4 
      F_RESPOND  $ 3
      I_RESPOND  $ 3
      U_RESPOND  $ 3
;
      label S_AGE = 'Standard: AGE' ;

      label S_CAMPAIGN = 'Standard: CAMPAIGN' ;

      label S_CCI = 'Standard: CCI' ;

      label S_CPI = 'Standard: CPI' ;

      label S_DURATION = 'Standard: DURATION' ;

      label S_EMPVAR = 'Standard: EMPVAR' ;

      label S_EURIBOR3M = 'Standard: EURIBOR3M' ;

      label S_NREMP = 'Standard: NREMP' ;

      label S_PDAYS = 'Standard: PDAYS' ;

      label S_PREVIOUS = 'Standard: PREVIOUS' ;

      label CONTACTcellular = 'Dummy: CONTACT=cellular' ;

      label DEFAULTno = 'Dummy: DEFAULT=no' ;

      label DEFAULTunknown = 'Dummy: DEFAULT=unknown' ;

      label DOWfri = 'Dummy: DOW=fri' ;

      label DOWmon = 'Dummy: DOW=mon' ;

      label DOWthu = 'Dummy: DOW=thu' ;

      label DOWtue = 'Dummy: DOW=tue' ;

      label EDUCATIONbasic_4y = 'Dummy: EDUCATION=basic.4y' ;

      label EDUCATIONbasic_6y = 'Dummy: EDUCATION=basic.6y' ;

      label EDUCATIONbasic_9y = 'Dummy: EDUCATION=basic.9y' ;

      label EDUCATIONhigh_school = 'Dummy: EDUCATION=high.school' ;

      label EDUCATIONilliterate = 'Dummy: EDUCATION=illiterate' ;

      label EDUCATIONprofessional_course = 
'Dummy: EDUCATION=professional.course' ;

      label EDUCATIONuniversity_degree = 
'Dummy: EDUCATION=university.degree' ;

      label HOUSINGno = 'Dummy: HOUSING=no' ;

      label HOUSINGunknown = 'Dummy: HOUSING=unknown' ;

      label JOBadmin_ = 'Dummy: JOB=admin.' ;

      label JOBblue_collar = 'Dummy: JOB=blue-collar' ;

      label JOBentrepreneur = 'Dummy: JOB=entrepreneur' ;

      label JOBhousemaid = 'Dummy: JOB=housemaid' ;

      label JOBmanagement = 'Dummy: JOB=management' ;

      label JOBretired = 'Dummy: JOB=retired' ;

      label JOBself_employed = 'Dummy: JOB=self-employed' ;

      label JOBservices = 'Dummy: JOB=services' ;

      label JOBstudent = 'Dummy: JOB=student' ;

      label JOBtechnician = 'Dummy: JOB=technician' ;

      label JOBunemployed = 'Dummy: JOB=unemployed' ;

      label LOANno = 'Dummy: LOAN=no' ;

      label LOANunknown = 'Dummy: LOAN=unknown' ;

      label MARITALdivorced = 'Dummy: MARITAL=divorced' ;

      label MARITALmarried = 'Dummy: MARITAL=married' ;

      label MARITALsingle = 'Dummy: MARITAL=single' ;

      label MONTHapr = 'Dummy: MONTH=apr' ;

      label MONTHaug = 'Dummy: MONTH=aug' ;

      label MONTHdec = 'Dummy: MONTH=dec' ;

      label MONTHjul = 'Dummy: MONTH=jul' ;

      label MONTHjun = 'Dummy: MONTH=jun' ;

      label MONTHmar = 'Dummy: MONTH=mar' ;

      label MONTHmay = 'Dummy: MONTH=may' ;

      label MONTHnov = 'Dummy: MONTH=nov' ;

      label MONTHoct = 'Dummy: MONTH=oct' ;

      label POUTCOMEfailure = 'Dummy: POUTCOME=failure' ;

      label POUTCOMEnonexistent = 'Dummy: POUTCOME=nonexistent' ;

      label H1x1_1 = 'Hidden: H1x1_=1' ;

      label H1x1_2 = 'Hidden: H1x1_=2' ;

      label H1x2_1 = 'Hidden: H1x2_=1' ;

      label H1x2_2 = 'Hidden: H1x2_=2' ;

      label I_RESPOND = 'Into: RESPOND' ;

      label F_RESPOND = 'From: RESPOND' ;

      label U_RESPOND = 'Unnormalized Into: RESPOND' ;

      label P_RESPONDyes = 'Predicted: RESPOND=yes' ;

      label R_RESPONDyes = 'Residual: RESPOND=yes' ;

      label P_RESPONDno = 'Predicted: RESPOND=no' ;

      label R_RESPONDno = 'Residual: RESPOND=no' ;

      label  _WARN_ = "Warnings"; 

*** Generate dummy variables for CONTACT ;
drop CONTACTcellular ;
if missing( CONTACT ) then do;
   CONTACTcellular = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm9 $ 9; drop _dm9 ;
   _dm9 = put( CONTACT , $9. );
   %DMNORMIP( _dm9 )
   if _dm9 = 'CELLULAR'  then do;
      CONTACTcellular = 1;
   end;
   else if _dm9 = 'TELEPHONE'  then do;
      CONTACTcellular = -1;
   end;
   else do;
      CONTACTcellular = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for DEFAULT ;
drop DEFAULTno DEFAULTunknown ;
if missing( DEFAULT ) then do;
   DEFAULTno = .;
   DEFAULTunknown = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm7 $ 7; drop _dm7 ;
   _dm7 = put( DEFAULT , $7. );
   %DMNORMIP( _dm7 )
   if _dm7 = 'NO'  then do;
      DEFAULTno = 1;
      DEFAULTunknown = 0;
   end;
   else if _dm7 = 'UNKNOWN'  then do;
      DEFAULTno = 0;
      DEFAULTunknown = 1;
   end;
   else if _dm7 = 'YES'  then do;
      DEFAULTno = -1;
      DEFAULTunknown = -1;
   end;
   else do;
      DEFAULTno = .;
      DEFAULTunknown = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for DOW ;
drop DOWfri DOWmon DOWthu DOWtue ;
*** encoding is sparse, initialize to zero;
DOWfri = 0;
DOWmon = 0;
DOWthu = 0;
DOWtue = 0;
if missing( DOW ) then do;
   DOWfri = .;
   DOWmon = .;
   DOWthu = .;
   DOWtue = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( DOW , $3. );
   %DMNORMIP( _dm3 )
   _dm_find = 0; drop _dm_find;
   if _dm3 <= 'THU'  then do;
      if _dm3 <= 'MON'  then do;
         if _dm3 = 'FRI'  then do;
            DOWfri = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm3 = 'MON'  then do;
               DOWmon = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm3 = 'THU'  then do;
            DOWthu = 1;
            _dm_find = 1;
         end;
      end;
   end;
   else do;
      if _dm3 = 'TUE'  then do;
         DOWtue = 1;
         _dm_find = 1;
      end;
      else do;
         if _dm3 = 'WED'  then do;
            DOWfri = -1;
            DOWmon = -1;
            DOWthu = -1;
            DOWtue = -1;
            _dm_find = 1;
         end;
      end;
   end;
   if not _dm_find then do;
      DOWfri = .;
      DOWmon = .;
      DOWthu = .;
      DOWtue = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for EDUCATION ;
drop EDUCATIONbasic_4y EDUCATIONbasic_6y EDUCATIONbasic_9y 
        EDUCATIONhigh_school EDUCATIONilliterate EDUCATIONprofessional_course 
        EDUCATIONuniversity_degree ;
*** encoding is sparse, initialize to zero;
EDUCATIONbasic_4y = 0;
EDUCATIONbasic_6y = 0;
EDUCATIONbasic_9y = 0;
EDUCATIONhigh_school = 0;
EDUCATIONilliterate = 0;
EDUCATIONprofessional_course = 0;
EDUCATIONuniversity_degree = 0;
if missing( EDUCATION ) then do;
   EDUCATIONbasic_4y = .;
   EDUCATIONbasic_6y = .;
   EDUCATIONbasic_9y = .;
   EDUCATIONhigh_school = .;
   EDUCATIONilliterate = .;
   EDUCATIONprofessional_course = .;
   EDUCATIONuniversity_degree = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm19 $ 19; drop _dm19 ;
   _dm19 = put( EDUCATION , $19. );
   %DMNORMIP( _dm19 )
   if _dm19 = 'UNIVERSITY.DEGREE'  then do;
      EDUCATIONuniversity_degree = 1;
   end;
   else if _dm19 = 'HIGH.SCHOOL'  then do;
      EDUCATIONhigh_school = 1;
   end;
   else if _dm19 = 'BASIC.9Y'  then do;
      EDUCATIONbasic_9y = 1;
   end;
   else if _dm19 = 'PROFESSIONAL.COURSE'  then do;
      EDUCATIONprofessional_course = 1;
   end;
   else if _dm19 = 'BASIC.4Y'  then do;
      EDUCATIONbasic_4y = 1;
   end;
   else if _dm19 = 'BASIC.6Y'  then do;
      EDUCATIONbasic_6y = 1;
   end;
   else if _dm19 = 'UNKNOWN'  then do;
      EDUCATIONbasic_4y = -1;
      EDUCATIONbasic_6y = -1;
      EDUCATIONbasic_9y = -1;
      EDUCATIONhigh_school = -1;
      EDUCATIONilliterate = -1;
      EDUCATIONprofessional_course = -1;
      EDUCATIONuniversity_degree = -1;
   end;
   else if _dm19 = 'ILLITERATE'  then do;
      EDUCATIONilliterate = 1;
   end;
   else do;
      EDUCATIONbasic_4y = .;
      EDUCATIONbasic_6y = .;
      EDUCATIONbasic_9y = .;
      EDUCATIONhigh_school = .;
      EDUCATIONilliterate = .;
      EDUCATIONprofessional_course = .;
      EDUCATIONuniversity_degree = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for HOUSING ;
drop HOUSINGno HOUSINGunknown ;
if missing( HOUSING ) then do;
   HOUSINGno = .;
   HOUSINGunknown = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm7 $ 7; drop _dm7 ;
   _dm7 = put( HOUSING , $7. );
   %DMNORMIP( _dm7 )
   if _dm7 = 'YES'  then do;
      HOUSINGno = -1;
      HOUSINGunknown = -1;
   end;
   else if _dm7 = 'NO'  then do;
      HOUSINGno = 1;
      HOUSINGunknown = 0;
   end;
   else if _dm7 = 'UNKNOWN'  then do;
      HOUSINGno = 0;
      HOUSINGunknown = 1;
   end;
   else do;
      HOUSINGno = .;
      HOUSINGunknown = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for JOB ;
drop JOBadmin_ JOBblue_collar JOBentrepreneur JOBhousemaid JOBmanagement 
        JOBretired JOBself_employed JOBservices JOBstudent JOBtechnician 
        JOBunemployed ;
*** encoding is sparse, initialize to zero;
JOBadmin_ = 0;
JOBblue_collar = 0;
JOBentrepreneur = 0;
JOBhousemaid = 0;
JOBmanagement = 0;
JOBretired = 0;
JOBself_employed = 0;
JOBservices = 0;
JOBstudent = 0;
JOBtechnician = 0;
JOBunemployed = 0;
if missing( JOB ) then do;
   JOBadmin_ = .;
   JOBblue_collar = .;
   JOBentrepreneur = .;
   JOBhousemaid = .;
   JOBmanagement = .;
   JOBretired = .;
   JOBself_employed = .;
   JOBservices = .;
   JOBstudent = .;
   JOBtechnician = .;
   JOBunemployed = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm13 $ 13; drop _dm13 ;
   _dm13 = put( JOB , $13. );
   %DMNORMIP( _dm13 )
   _dm_find = 0; drop _dm_find;
   if _dm13 <= 'RETIRED'  then do;
      if _dm13 <= 'ENTREPRENEUR'  then do;
         if _dm13 <= 'BLUE-COLLAR'  then do;
            if _dm13 = 'ADMIN.'  then do;
               JOBadmin_ = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm13 = 'BLUE-COLLAR'  then do;
                  JOBblue_collar = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm13 = 'ENTREPRENEUR'  then do;
               JOBentrepreneur = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm13 <= 'MANAGEMENT'  then do;
            if _dm13 = 'HOUSEMAID'  then do;
               JOBhousemaid = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm13 = 'MANAGEMENT'  then do;
                  JOBmanagement = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm13 = 'RETIRED'  then do;
               JOBretired = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm13 <= 'STUDENT'  then do;
         if _dm13 <= 'SERVICES'  then do;
            if _dm13 = 'SELF-EMPLOYED'  then do;
               JOBself_employed = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm13 = 'SERVICES'  then do;
                  JOBservices = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm13 = 'STUDENT'  then do;
               JOBstudent = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm13 <= 'UNEMPLOYED'  then do;
            if _dm13 = 'TECHNICIAN'  then do;
               JOBtechnician = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm13 = 'UNEMPLOYED'  then do;
                  JOBunemployed = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm13 = 'UNKNOWN'  then do;
               JOBadmin_ = -1;
               JOBblue_collar = -1;
               JOBentrepreneur = -1;
               JOBhousemaid = -1;
               JOBmanagement = -1;
               JOBretired = -1;
               JOBself_employed = -1;
               JOBservices = -1;
               JOBstudent = -1;
               JOBtechnician = -1;
               JOBunemployed = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      JOBadmin_ = .;
      JOBblue_collar = .;
      JOBentrepreneur = .;
      JOBhousemaid = .;
      JOBmanagement = .;
      JOBretired = .;
      JOBself_employed = .;
      JOBservices = .;
      JOBstudent = .;
      JOBtechnician = .;
      JOBunemployed = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for LOAN ;
drop LOANno LOANunknown ;
if missing( LOAN ) then do;
   LOANno = .;
   LOANunknown = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm7 $ 7; drop _dm7 ;
   _dm7 = put( LOAN , $7. );
   %DMNORMIP( _dm7 )
   if _dm7 = 'NO'  then do;
      LOANno = 1;
      LOANunknown = 0;
   end;
   else if _dm7 = 'YES'  then do;
      LOANno = -1;
      LOANunknown = -1;
   end;
   else if _dm7 = 'UNKNOWN'  then do;
      LOANno = 0;
      LOANunknown = 1;
   end;
   else do;
      LOANno = .;
      LOANunknown = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for MARITAL ;
drop MARITALdivorced MARITALmarried MARITALsingle ;
if missing( MARITAL ) then do;
   MARITALdivorced = .;
   MARITALmarried = .;
   MARITALsingle = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm8 $ 8; drop _dm8 ;
   _dm8 = put( MARITAL , $8. );
   %DMNORMIP( _dm8 )
   if _dm8 = 'MARRIED'  then do;
      MARITALdivorced = 0;
      MARITALmarried = 1;
      MARITALsingle = 0;
   end;
   else if _dm8 = 'SINGLE'  then do;
      MARITALdivorced = 0;
      MARITALmarried = 0;
      MARITALsingle = 1;
   end;
   else if _dm8 = 'DIVORCED'  then do;
      MARITALdivorced = 1;
      MARITALmarried = 0;
      MARITALsingle = 0;
   end;
   else if _dm8 = 'UNKNOWN'  then do;
      MARITALdivorced = -1;
      MARITALmarried = -1;
      MARITALsingle = -1;
   end;
   else do;
      MARITALdivorced = .;
      MARITALmarried = .;
      MARITALsingle = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for MONTH ;
drop MONTHapr MONTHaug MONTHdec MONTHjul MONTHjun MONTHmar MONTHmay MONTHnov 
        MONTHoct ;
*** encoding is sparse, initialize to zero;
MONTHapr = 0;
MONTHaug = 0;
MONTHdec = 0;
MONTHjul = 0;
MONTHjun = 0;
MONTHmar = 0;
MONTHmay = 0;
MONTHnov = 0;
MONTHoct = 0;
if missing( MONTH ) then do;
   MONTHapr = .;
   MONTHaug = .;
   MONTHdec = .;
   MONTHjul = .;
   MONTHjun = .;
   MONTHmar = .;
   MONTHmay = .;
   MONTHnov = .;
   MONTHoct = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm3 $ 3; drop _dm3 ;
   _dm3 = put( MONTH , $3. );
   %DMNORMIP( _dm3 )
   _dm_find = 0; drop _dm_find;
   if _dm3 <= 'JUN'  then do;
      if _dm3 <= 'DEC'  then do;
         if _dm3 <= 'AUG'  then do;
            if _dm3 = 'APR'  then do;
               MONTHapr = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm3 = 'AUG'  then do;
                  MONTHaug = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm3 = 'DEC'  then do;
               MONTHdec = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm3 = 'JUL'  then do;
            MONTHjul = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm3 = 'JUN'  then do;
               MONTHjun = 1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   else do;
      if _dm3 <= 'NOV'  then do;
         if _dm3 <= 'MAY'  then do;
            if _dm3 = 'MAR'  then do;
               MONTHmar = 1;
               _dm_find = 1;
            end;
            else do;
               if _dm3 = 'MAY'  then do;
                  MONTHmay = 1;
                  _dm_find = 1;
               end;
            end;
         end;
         else do;
            if _dm3 = 'NOV'  then do;
               MONTHnov = 1;
               _dm_find = 1;
            end;
         end;
      end;
      else do;
         if _dm3 = 'OCT'  then do;
            MONTHoct = 1;
            _dm_find = 1;
         end;
         else do;
            if _dm3 = 'SEP'  then do;
               MONTHapr = -1;
               MONTHaug = -1;
               MONTHdec = -1;
               MONTHjul = -1;
               MONTHjun = -1;
               MONTHmar = -1;
               MONTHmay = -1;
               MONTHnov = -1;
               MONTHoct = -1;
               _dm_find = 1;
            end;
         end;
      end;
   end;
   if not _dm_find then do;
      MONTHapr = .;
      MONTHaug = .;
      MONTHdec = .;
      MONTHjul = .;
      MONTHjun = .;
      MONTHmar = .;
      MONTHmay = .;
      MONTHnov = .;
      MONTHoct = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** Generate dummy variables for POUTCOME ;
drop POUTCOMEfailure POUTCOMEnonexistent ;
if missing( POUTCOME ) then do;
   POUTCOMEfailure = .;
   POUTCOMEnonexistent = .;
   substr(_warn_,1,1) = 'M';
   _DM_BAD = 1;
end;
else do;
   length _dm11 $ 11; drop _dm11 ;
   _dm11 = put( POUTCOME , $11. );
   %DMNORMIP( _dm11 )
   if _dm11 = 'NONEXISTENT'  then do;
      POUTCOMEfailure = 0;
      POUTCOMEnonexistent = 1;
   end;
   else if _dm11 = 'FAILURE'  then do;
      POUTCOMEfailure = 1;
      POUTCOMEnonexistent = 0;
   end;
   else if _dm11 = 'SUCCESS'  then do;
      POUTCOMEfailure = -1;
      POUTCOMEnonexistent = -1;
   end;
   else do;
      POUTCOMEfailure = .;
      POUTCOMEnonexistent = .;
      substr(_warn_,2,1) = 'U';
      _DM_BAD = 1;
   end;
end;

*** *************************;
*** Checking missing input Interval
*** *************************;

IF NMISS(
   AGE , 
   CAMPAIGN , 
   CCI , 
   CPI , 
   DURATION , 
   EMPVAR , 
   EURIBOR3M , 
   NREMP , 
   PDAYS , 
   PREVIOUS   ) THEN DO;
   SUBSTR(_WARN_, 1, 1) = 'M';

   _DM_BAD = 1;
END;
*** *************************;
*** Writing the Node interval ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   S_AGE  =    -3.82827896419605 +     0.09584314469298 * AGE ;
   S_CAMPAIGN  =    -0.92839359906258 +     0.36319147374693 * CAMPAIGN ;
   S_CCI  =     8.65667985856607 +     0.21372554524991 * CCI ;
   S_CPI  =     -161.27443037076 +     1.72370165688535 * CPI ;
   S_DURATION  =    -1.01330389089972 +     0.00395464752244 * DURATION ;
   S_EMPVAR  =    -0.02886180937323 +     0.63101452901843 * EMPVAR ;
   S_EURIBOR3M  =    -2.04534636012174 +      0.5713162280467 * EURIBOR3M ;
   S_NREMP  =    -70.8150128474099 +     0.01370944646276 * NREMP ;
   S_PDAYS  =    -5.23589542001362 +     0.00543354122414 * PDAYS ;
   S_PREVIOUS  =    -0.35793454550262 +      1.9873992930941 * PREVIOUS ;
END;
ELSE DO;
   IF MISSING( AGE ) THEN S_AGE  = . ;
   ELSE S_AGE  =    -3.82827896419605 +     0.09584314469298 * AGE ;
   IF MISSING( CAMPAIGN ) THEN S_CAMPAIGN  = . ;
   ELSE S_CAMPAIGN  =    -0.92839359906258 +     0.36319147374693 * CAMPAIGN ;
   IF MISSING( CCI ) THEN S_CCI  = . ;
   ELSE S_CCI  =     8.65667985856607 +     0.21372554524991 * CCI ;
   IF MISSING( CPI ) THEN S_CPI  = . ;
   ELSE S_CPI  =     -161.27443037076 +     1.72370165688535 * CPI ;
   IF MISSING( DURATION ) THEN S_DURATION  = . ;
   ELSE S_DURATION  =    -1.01330389089972 +     0.00395464752244 * DURATION ;
   IF MISSING( EMPVAR ) THEN S_EMPVAR  = . ;
   ELSE S_EMPVAR  =    -0.02886180937323 +     0.63101452901843 * EMPVAR ;
   IF MISSING( EURIBOR3M ) THEN S_EURIBOR3M  = . ;
   ELSE S_EURIBOR3M  =    -2.04534636012174 +      0.5713162280467 * EURIBOR3M
         ;
   IF MISSING( NREMP ) THEN S_NREMP  = . ;
   ELSE S_NREMP  =    -70.8150128474099 +     0.01370944646276 * NREMP ;
   IF MISSING( PDAYS ) THEN S_PDAYS  = . ;
   ELSE S_PDAYS  =    -5.23589542001362 +     0.00543354122414 * PDAYS ;
   IF MISSING( PREVIOUS ) THEN S_PREVIOUS  = . ;
   ELSE S_PREVIOUS  =    -0.35793454550262 +      1.9873992930941 * PREVIOUS ;
END;
*** *************************;
*** Writing the Node nominal ;
*** *************************;
*** *************************;
*** Writing the Node H1x1_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x1_1  =     3.22706911452304 * S_AGE  +     0.91526169490557 * S_CAMPAIGN
          +    -0.11838782705218 * S_CCI  +     -1.3496493739998 * S_CPI
          +     0.08220514287999 * S_DURATION  +     -0.0454075490956 * 
        S_EMPVAR  +     0.22505074793368 * S_EURIBOR3M
          +    -0.85787032648536 * S_NREMP  +    -0.84978003943396 * S_PDAYS
          +    -1.67566342315342 * S_PREVIOUS ;
   H1x1_2  =     1.06759901109295 * S_AGE  +    -1.22174345235373 * S_CAMPAIGN
          +    -0.06268558273022 * S_CCI  +    -0.18847873165797 * S_CPI
          +    -0.04971214721281 * S_DURATION  +     0.13120808560648 * 
        S_EMPVAR  +    -1.58145798796772 * S_EURIBOR3M
          +     1.91333794386902 * S_NREMP  +    -0.66088886600812 * S_PDAYS
          +     1.54965447402733 * S_PREVIOUS ;
   H1x1_1  = H1x1_1  +     1.35093614463922 * CONTACTcellular
          +    -0.15937504015896 * DEFAULTno  +    -1.14985160072457 * 
        DEFAULTunknown  +    -1.10263096966628 * DOWfri
          +     1.48083413170132 * DOWmon  +     0.03100981857434 * DOWthu
          +    -0.81951816920346 * DOWtue  +     0.38696849302038 * 
        EDUCATIONbasic_4y  +     0.21713011614773 * EDUCATIONbasic_6y
          +     -0.8102565412131 * EDUCATIONbasic_9y
          +    -1.13907803362427 * EDUCATIONhigh_school
          +      0.9605089171528 * EDUCATIONilliterate
          +     0.53601966729859 * EDUCATIONprofessional_course
          +    -1.15301835873069 * EDUCATIONuniversity_degree
          +    -0.87714766182506 * HOUSINGno  +     0.31686958582661 * 
        HOUSINGunknown  +     1.68481985393034 * JOBadmin_
          +    -2.93785318406139 * JOBblue_collar  +     0.24384978273787 * 
        JOBentrepreneur  +     0.83694230538746 * JOBhousemaid
          +    -0.77138484760871 * JOBmanagement  +    -0.56280991037231 * 
        JOBretired  +     0.86100073140513 * JOBself_employed
          +     0.25893631229167 * JOBservices  +     0.43019072532217 * 
        JOBstudent  +     -1.2317617213188 * JOBtechnician
          +    -0.72294076551111 * JOBunemployed  +     0.45060035185113 * 
        LOANno  +     0.91579259524848 * LOANunknown
          +    -0.95739094255975 * MARITALdivorced  +    -2.00005779391823 * 
        MARITALmarried  +    -1.17524776344662 * MARITALsingle
          +    -1.57415689153241 * MONTHapr  +    -0.20347226054356 * MONTHaug
          +    -0.66922571123716 * MONTHdec  +     1.21967579177289 * MONTHjul
          +     1.65162047258903 * MONTHjun  +    -1.39033958769893 * MONTHmar
          +    -0.28414325505516 * MONTHmay  +     1.35556615578639 * MONTHnov
          +    -0.25111600564281 * MONTHoct  +    -0.14408166342193 * 
        POUTCOMEfailure  +    -1.27120330211118 * POUTCOMEnonexistent ;
   H1x1_2  = H1x1_2  +    -0.62842144416584 * CONTACTcellular
          +    -1.35609528872601 * DEFAULTno  +    -0.28207406526391 * 
        DEFAULTunknown  +     0.11102583328937 * DOWfri
          +     0.02143349323445 * DOWmon  +     1.22077085278931 * DOWthu
          +    -0.85554008644112 * DOWtue  +    -1.10339035149657 * 
        EDUCATIONbasic_4y  +     0.07778845243984 * EDUCATIONbasic_6y
          +     0.29730298239813 * EDUCATIONbasic_9y
          +     0.91824050040261 * EDUCATIONhigh_school
          +     0.11130538153931 * EDUCATIONilliterate
          +    -0.54632828410273 * EDUCATIONprofessional_course
          +     1.12052571013543 * EDUCATIONuniversity_degree
          +    -1.98214222019648 * HOUSINGno  +      1.0331562447149 * 
        HOUSINGunknown  +    -1.13946426530238 * JOBadmin_
          +    -1.10531484441044 * JOBblue_collar  +     0.08956616025459 * 
        JOBentrepreneur  +     0.71531701371973 * JOBhousemaid
          +    -0.14967572312883 * JOBmanagement  +     0.35531253878233 * 
        JOBretired  +    -1.10967166511171 * JOBself_employed
          +    -1.22601655262629 * JOBservices  +     1.82238570273957 * 
        JOBstudent  +     0.16387049700502 * JOBtechnician
          +     0.75546652394987 * JOBunemployed  +    -0.22135068026773 * 
        LOANno  +      -0.941662730705 * LOANunknown
          +    -0.58920729867326 * MARITALdivorced  +     -0.5685313327066 * 
        MARITALmarried  +     0.92222686903869 * MARITALsingle
          +    -0.86025367524406 * MONTHapr  +     0.58049056588032 * MONTHaug
          +     2.04661033395884 * MONTHdec  +     0.56654113488642 * MONTHjul
          +     0.49312080499848 * MONTHjun  +    -0.71479179075708 * MONTHmar
          +     0.22330233508371 * MONTHmay  +     0.65945746760674 * MONTHnov
          +    -0.18811924161687 * MONTHoct  +    -0.34110798786151 * 
        POUTCOMEfailure  +     0.73257631664932 * POUTCOMEnonexistent ;
   H1x1_1  =     0.87301274791827 + H1x1_1 ;
   H1x1_2  =    -0.93057597943408 + H1x1_2 ;
   DROP _EXP_BAR;
   _EXP_BAR=50;
   H1x1_1  = EXP(MIN(-0.5 * H1x1_1 **2, _EXP_BAR));
   H1x1_2  = EXP(MIN(-0.5 * H1x1_2 **2, _EXP_BAR));
END;
ELSE DO;
   H1x1_1  = .;
   H1x1_2  = .;
END;
*** *************************;
*** Writing the Node H1x2_ ;
*** *************************;
IF _DM_BAD EQ 0 THEN DO;
   H1x2_1  =     -0.8466126861658 * S_AGE  +     1.23249210182903 * S_CAMPAIGN
          +    -1.64971618645168 * S_CCI  +     -1.6223362088422 * S_CPI
          +    -0.91426432350453 * S_DURATION  +    -0.88418165133303 * 
        S_EMPVAR  +    -0.67347661283566 * S_EURIBOR3M
          +     0.82568859086809 * S_NREMP  +     0.85986064360326 * S_PDAYS
          +     1.48899983482166 * S_PREVIOUS ;
   H1x2_2  =     0.53408809089293 * S_AGE  +     0.12898164624038 * S_CAMPAIGN
          +    -0.11962332345611 * S_CCI  +     1.37326549390988 * S_CPI
          +     0.93856309818388 * S_DURATION  +     0.23148123732642 * 
        S_EMPVAR  +     0.82375505158557 * S_EURIBOR3M
          +     0.67988393425268 * S_NREMP  +    -0.08015613075318 * S_PDAYS
          +     1.48061874369797 * S_PREVIOUS ;
   H1x2_1  = H1x2_1  +     0.34734762253389 * CONTACTcellular
          +    -1.05260725206078 * DEFAULTno  +      -0.472761569858 * 
        DEFAULTunknown  +     -0.7629466960084 * DOWfri
          +    -0.77796242265027 * DOWmon  +    -1.68021073074694 * DOWthu
          +     0.18894116195651 * DOWtue  +    -0.04000430709008 * 
        EDUCATIONbasic_4y  +     0.09095349681014 * EDUCATIONbasic_6y
          +     0.41294158477963 * EDUCATIONbasic_9y
          +     0.99880290347726 * EDUCATIONhigh_school
          +     1.24063517948708 * EDUCATIONilliterate
          +     0.81282156286339 * EDUCATIONprofessional_course
          +    -0.07556738963304 * EDUCATIONuniversity_degree
          +    -0.41419211534492 * HOUSINGno  +     1.06353563365122 * 
        HOUSINGunknown  +    -0.12709020553023 * JOBadmin_
          +    -0.09412782405273 * JOBblue_collar  +     0.37395352840403 * 
        JOBentrepreneur  +    -0.67370020651952 * JOBhousemaid
          +    -1.17378464126648 * JOBmanagement  +     -1.2216044284793 * 
        JOBretired  +     -1.8329147699213 * JOBself_employed
          +    -2.90134812397068 * JOBservices  +    -1.95836820437579 * 
        JOBstudent  +     0.68211929989967 * JOBtechnician
          +    -0.70121598847938 * JOBunemployed  +     0.40357632540924 * 
        LOANno  +      0.3004071373192 * LOANunknown
          +     1.32893786545146 * MARITALdivorced  +    -2.06812288971007 * 
        MARITALmarried  +    -1.03185124973429 * MARITALsingle
          +    -1.24336955616697 * MONTHapr  +    -1.35998158917587 * MONTHaug
          +    -2.88219690803654 * MONTHdec  +    -0.46867946343473 * MONTHjul
          +     1.63315039007175 * MONTHjun  +    -0.51512386586383 * MONTHmar
          +     0.58978474404605 * MONTHmay  +    -0.39830550413969 * MONTHnov
          +     0.08736838376339 * MONTHoct  +    -2.17714239693834 * 
        POUTCOMEfailure  +    -1.05943167371127 * POUTCOMEnonexistent ;
   H1x2_2  = H1x2_2  +    -0.06049688373285 * CONTACTcellular
          +    -0.54137419488704 * DEFAULTno  +     0.92130388886638 * 
        DEFAULTunknown  +    -0.59930422684888 * DOWfri
          +       0.040203745399 * DOWmon  +    -0.99924076806064 * DOWthu
          +     0.77099224185644 * DOWtue  +    -0.48235330578679 * 
        EDUCATIONbasic_4y  +    -1.15589678655913 * EDUCATIONbasic_6y
          +     0.98828644966311 * EDUCATIONbasic_9y
          +     1.00428335849447 * EDUCATIONhigh_school
          +     0.22832769976449 * EDUCATIONilliterate
          +       0.637406446996 * EDUCATIONprofessional_course
          +     0.02045601086684 * EDUCATIONuniversity_degree
          +      0.5149971284764 * HOUSINGno  +    -0.16756519638679 * 
        HOUSINGunknown  +     0.68021566173629 * JOBadmin_
          +     1.01373033315284 * JOBblue_collar  +    -0.44393638889573 * 
        JOBentrepreneur  +    -0.46751387069292 * JOBhousemaid
          +     1.60500510338195 * JOBmanagement  +    -1.74581978998612 * 
        JOBretired  +     1.05099768952617 * JOBself_employed
          +     -0.7458915731911 * JOBservices  +     0.48395180990729 * 
        JOBstudent  +     -0.6048530086677 * JOBtechnician
          +     1.38968797708597 * JOBunemployed  +     0.17446054116309 * 
        LOANno  +     0.37355442939697 * LOANunknown
          +    -0.32994152942428 * MARITALdivorced  +    -0.00515467586067 * 
        MARITALmarried  +    -0.99450980048637 * MARITALsingle
          +    -0.55919567383976 * MONTHapr  +    -0.59542196327458 * MONTHaug
          +    -0.83575212056811 * MONTHdec  +     0.10718094542961 * MONTHjul
          +    -0.59329477476892 * MONTHjun  +     0.20644460369727 * MONTHmar
          +    -1.27879251977119 * MONTHmay  +    -1.05351399363439 * MONTHnov
          +     1.29829308916352 * MONTHoct  +     0.46472635670331 * 
        POUTCOMEfailure  +     0.18586831236433 * POUTCOMEnonexistent ;
   H1x2_1  =     -2.1887826490155 + H1x2_1 ;
   H1x2_2  =      0.7588565559108 + H1x2_2 ;
   DROP _EXP_BAR;
   _EXP_BAR=50;
   H1x2_1  = EXP(MIN(-0.5 * H1x2_1 **2, _EXP_BAR));
   H1x2_2  = EXP(MIN(-0.5 * H1x2_2 **2, _EXP_BAR));
END;
ELSE DO;
   H1x2_1  = .;
   H1x2_2  = .;
END;
*** *************************;
*** Writing the Node RESPOND ;
*** *************************;

*** Generate dummy variables for RESPOND ;
drop RESPONDyes RESPONDno ;
label F_RESPOND = 'From: RESPOND' ;
length F_RESPOND $ 3;
F_RESPOND = put( RESPOND , $3. );
%DMNORMIP( F_RESPOND )
if missing( RESPOND ) then do;
   RESPONDyes = .;
   RESPONDno = .;
end;
else do;
   if F_RESPOND = 'NO'  then do;
      RESPONDyes = 0;
      RESPONDno = 1;
   end;
   else if F_RESPOND = 'YES'  then do;
      RESPONDyes = 1;
      RESPONDno = 0;
   end;
   else do;
      RESPONDyes = .;
      RESPONDno = .;
   end;
end;
IF _DM_BAD EQ 0 THEN DO;
   P_RESPONDyes  =    -0.60220695042731 * H1x1_1  +     0.20166138094442 * 
        H1x1_2 ;
   P_RESPONDyes  = P_RESPONDyes  +     0.28132967722583 * H1x2_1
          +    -0.76719325772816 * H1x2_2 ;
   P_RESPONDyes  =    -3.95110520760596 + P_RESPONDyes ;
   P_RESPONDno  = 0; 
   _MAX_ = MAX (P_RESPONDyes , P_RESPONDno );
   _SUM_ = 0.; 
   P_RESPONDyes  = EXP(P_RESPONDyes  - _MAX_);
   _SUM_ = _SUM_ + P_RESPONDyes ;
   P_RESPONDno  = EXP(P_RESPONDno  - _MAX_);
   _SUM_ = _SUM_ + P_RESPONDno ;
   P_RESPONDyes  = P_RESPONDyes  / _SUM_;
   P_RESPONDno  = P_RESPONDno  / _SUM_;
END;
ELSE DO;
   P_RESPONDyes  = .;
   P_RESPONDno  = .;
END;
IF _DM_BAD EQ 1 THEN DO;
   P_RESPONDyes  =     0.11268973891924;
   P_RESPONDno  =     0.88731026108075;
END;
*** *****************************;
*** Writing the Residuals  of the Node RESPOND ;
*** ******************************;
IF MISSING( RESPONDyes ) THEN R_RESPONDyes  = . ;
ELSE R_RESPONDyes  = RESPONDyes  - P_RESPONDyes ;
IF MISSING( RESPONDno ) THEN R_RESPONDno  = . ;
ELSE R_RESPONDno  = RESPONDno  - P_RESPONDno ;
*** *************************;
*** Writing the I_RESPOND  AND U_RESPOND ;
*** *************************;
_MAXP_ = P_RESPONDyes ;
I_RESPOND  = "YES" ;
U_RESPOND  = "yes" ;
IF( _MAXP_ LT P_RESPONDno  ) THEN DO; 
   _MAXP_ = P_RESPONDno ;
   I_RESPOND  = "NO " ;
   U_RESPOND  = "no " ;
END;
********************************;
*** End Scoring Code for Neural;
********************************;
